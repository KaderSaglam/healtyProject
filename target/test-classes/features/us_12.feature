
Feature: US012Medine_MedunnaSearch
  @us012
  Background: Doktor olarak ana sayfaya giris

    Given doktor medunnaUrl gider
    And Login ikonuna tklar
    And Sign in sekmesine tiklar
    Then "medineDoktorUser" ve "medineDoktorPassword" bilgileri girilerek, Sign in buttonuna tiklar
    And My Pages sekmesine tiklar
    And My Appointments secenegini secer ve tiklar
    And Test isteyebilmek icin, hastanin satirindaki Edit buttonuna tiklar
    And Yeni sayfada acilan Request A Test buttonuna tiklar

  Scenario: TC001 Doktor hastaya test isteyebilmeli

    When "Test Items" texti gorunur oldugunu dogrular


  Scenario: TC002 Test iceriginde istenilecek "Glucose, Urea, Creatinine, Sodium, Potassium, Total Protein, Albumin, Hemoglobin" testleri olmali

    And "Test Items" texti altinda, testlerin sagindaki check boxu tiklar
    Then Save buttonu gorunene kadar asagiya inilir ve tiklar
    And "A new is created" yazisi test edilir
    And Login ikonuna tklar
    When "Sign out" sekmesine tiklar