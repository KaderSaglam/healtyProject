@US08
Feature:  US008 Kullanici giris yaptiginda Password sekmesi duzenlenebilir olmalidir. Admin/Staff/Patient/Doctor

  Background:
    Given kullanici URL sayfasina gider
    Then account-menu iconuna tiklar
    And kullanici sing in elementine tiklar

  @TC01
  Scenario Outline: TC01_Kullanici giris yaptiginda Password sekmesi duzenlenebilir olmalidir

    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And sayfayi kapatir
    Examples: test data
      | Username              | Password |
      | user                   | 123456   |
      | doktorkaderr           | 123456   |
      | Hastakader             | 123456   |
      | staffkader             | 123456   |

  @TC02
  Scenario Outline:  TC02_Daha guclu sifre için en az 1 kucuk harf olmali ve "Password strength:" seviyesinin degistigi gorulebilmelidir

    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And New password text box sina "<New Password>" deger girilir
    And Password strength seviyesinin degistigi gorulmeli
    And sayfayi kapatir
    Examples: test data
      | Username            | Password | New Password |
      | user                | 123456  | 123456a       |
      | doktorkaderr        | 123456   | 123456a      |
      | Hastakader          | 123456   | 123456a      |
      | staffkader          | 123456   | 123456a      |

  @TC03
  Scenario Outline:TC03_Daha guclu sifre icin en az 1 buyuk harf olmali ve "Password strength:" seviyesinin degistigi gorulebilmelidir.

    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And New password text box sina "<New Password>" deger girilir
    And Password strength seviyesinin degistigi gorulmeli
    And sayfayi kapatir

    Examples: test data
      | Username      | Password | New Password |
      | user           | 123456   | 123456A     |
      | doktorkaderr   | 123456   | 123456A    |
      | Hastakader     | 123456   | 123456A     |
      | staffkader     | 123456   | 123456A     |

  @TC04
  Scenario Outline:TC04_Daha guclu sifre icin en az 1 rakam olmali ve "Password strength:" seviyesinin degistigi gorulebilmelidir.

    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And New password text box sina "<New Password>" deger girilir
    And Password strength seviyesinin degistigi gorulmeli
    And sayfayi kapatir

    Examples: test data
      | Username       | Password | New Password |
      | user           | 123456   | abcdef1      |
      | doktorkaderr   | 123456   | abcdef1      |
      | Hastakader     | 123456   | abcdef1      |
      | staffkader     | 123456   | abcdef1      |

  @TC05
  Scenario Outline:TC05_Daha guclu sifre icin en az 1 ozel karakter olmali ve "Password strength:" seviyesinin degistigi gorulebilmelidir.

    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And New password text box sina "<New Password>" deger girilir
    And Password strength seviyesinin degistigi gorulmeli
    And sayfayi kapatir

    Examples: test data
      | Username      | Password | New Password |
      | user          | 123456   | 123456.      |
      | doktorkaderr  | 123456   | 123456.      |
      | Hastakader    | 123456   | 123456.      |
      | staffkader    | 123456   | 123456.      |

  @TC06
  Scenario Outline:TC06_Guclu bir parola icin sifre en az 7 karakterden olusmali
    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password confirmation yazisi gorulur
    And New password text box sina "<New Password>" deger girilir
    And Password strength guclu seviyede oldugu gorulmeli
    And Yeni Password kaydedilmelidir


    Examples: test data
      | Username              | Password | New Password |
      | user                  | 123456   | 1234aA.      |
      | doktorkaderr          | 123456   | 1234aA.      |
      | Hastakader            | 123456   | 1234aA.      |
      | staffkader            | 123456   | 1234aA.      |

  @TC07
  Scenario Outline:TC07_Eski sifre kullanilamamali
    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then account-menu iconuna tiklar
    And Password butonuna tiklar
    And New password text box sina "<New Password>" deger girilir
    And Yeni Password kaydedilmeli
    Then kullanici account-menu iconuna tiklar
    And kullanici sing out elementine tiklar
    Then account-menu iconuna tiklar
    And kullanici sing in elementine tiklar
    And Kullanici "<Username>" girer
    And  Kullanici gecerli "<Password>" girer
    And kullanici sing in butonuna tiklar
    Then Authentication information not connect. yazisi gorulur




    Examples: test data
      | Username       | Password | New Password |
      | user           | 123456   | 1234aA.      |
      | doktorkaderr   | 123456   | 1234aA.      |
      | Hastakader      | 123456   | 1234aA.     |
      | staffkader     | 123456   | 1234aA.     |
