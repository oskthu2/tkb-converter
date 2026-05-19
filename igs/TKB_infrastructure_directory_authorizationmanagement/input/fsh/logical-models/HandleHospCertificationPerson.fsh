// Genererad från TKB infrastructure:directory:authorizationmanagement v2.4.4
// Kontrakt: HandleHospCertificationPerson v1.0
// Genererad: 2026-05-19

Logical: HandleHospCertificationPerson
Id: handlehospcertificationperson
Title: "HandleHospCertificationPerson"
Description: """
  Logisk modell för tjänstekontraktet HandleHospCertificationPerson
  (RIV-TA urn:riv:infrastructure:directory:authorizationmanagement:HandleHospCertificationPerson:1).
  Representerar responsens informationsstruktur. Används för att lägga till eller ta bort
  personobjekt från kommande utlämningsförfrågningar av HOSP-information till Socialstyrelsen.
"""
Characteristics: #can-be-target

* resultCode 1..1 string "Resultat av add eller remove-anrop (OK eller ERROR)"
* resultText 0..1 string "Beskrivning av fel vid resultCode=ERROR"
