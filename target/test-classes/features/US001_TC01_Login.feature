Feature: US001 Login testi
  @wip
  Scenario: TC01 3. ve 5. rakamlardan sonra "-" sayılan geçerli bir SSN olmalı, 9 hane uzunluğunda olmalı

    Given  Anasayfaya gider
    Then Register butonuna tıklar
    And SSN sifresini ucuncu ve besinci rakamlardan sonra - olacak sekilde girer
    And Girilen SSN nin dogru girildigini dogrular
    Then sayfayi kapatir