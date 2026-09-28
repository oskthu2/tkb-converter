// Genererad från XSD för healthcertificate.lifeline v1.0 (fält ur XSD, se TKB avsnitt 3; scripts/xsd_to_ig.py)
// Kontrakt: BirthRegistration v1.0
// Genererad: 2026-09-26

Logical: BirthRegistration
Id: birthregistration
Title: "BirthRegistration — Response"
Description: """
  Logisk modell för svaret i BirthRegistration
  (urn:riv:healthcertificate:lifeline:BirthRegistrationResponder:1, BirthRegistrationResponseTYPE).
"""
Characteristics: #can-be-target
* FodelsesvarId 1..1 string "FodelsesvarId" "FodelsesvarId"
* AnmalningsId 1..1 string "AnmalningsId" "AnmalningsId"
* PersonNummer 0..1 string "PersonNummer" "Tilldelat personnummer"
* Meddelande 0..1 BackboneElement "Meddelande" "Indikerar orsaken till att personnummer ej tilldelats."
  * AnmalanMottagen 1..1 code "AnmalanMottagen" "Anger om anmälan är mottagen av Skatteverket eller ej. En mottagen anmälan SKALL EJ sändas in igen."
  * AnmalanMottagen from AnmalanMottagenVS (required)
  * MeddelandeKod 1..1 integer "MeddelandeKod" "Kod som indikerar orsaken till att personnummer ej returneras. datatyp = number"
  * MeddelandeText 1..1 string "MeddelandeText" "Text som ger ytterligare information om ev. felorsak. Endast avsedd att nyttjas vid utveckling/felsökning"
* result 0..1 BackboneElement "result" "Holds information about the success of the call. If INFO is set the field infoText should contain more information. If ERROR is set the fields errorId and errorText will contain information about the error."
  * resultCode 1..1 code "resultCode" "resultCode"
  * resultCode from ResultCodeEnumVS (required)
  * infoText 0..1 string "infoText" "infoText"
  * errorId 0..1 code "errorId" "errorId"
  * errorId from ErrorIdEnumVS (required)
  * errorText 0..1 string "errorText" "errorText"
