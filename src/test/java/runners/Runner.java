package runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class) // Bu notasyon Runner'in Cucumber ile calismasini  sagliyor
@CucumberOptions(

        plugin={"html:target\\cucumber-reports.html",
                "json:target/json-reports/cucumber.json",
                "junit:target/xml-report/cucumber.xml"},
        features = "src/test/resources/features",
        glue = "stepdefinitions",
        tags = "@us012",
        dryRun = false
)
// Raporlama icin runner dan calistirmak gerekir
// Runner da calistirmak daha tcok tavsiye edilir


public class Runner {
    // Runner class'inin body sine hicbir kod yazmiyoruz
    // Bu class icin onemli olan kullanacagimiz 2 adet notasyon

    // dryRun = false yazildigida belirlenen tag'la etiketlenen tum senaryolarini
    // sirasiyla calistirir
    // dryRun = true dedigimiz da ise eksik stepler olup olmadigini kontrol eder ve varsa
    // bize eksik stepleri rapor eder

    // features ve glue spesifik bir class veya feature dosyasini degil
    // tum klasor ve package'i sectik
    // dolayısıyla stepDefinitons package'i icerisinde hangi class da olursa olsun
    // isimize yarayan bir stepDefinitions varsa rahatlikla kullanabiliriz
}
