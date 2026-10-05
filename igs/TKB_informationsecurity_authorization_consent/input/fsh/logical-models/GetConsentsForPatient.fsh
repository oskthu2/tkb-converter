// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetConsentsForPatient v2.0
// Genererad: 2026-09-26

Logical: GetConsentsForPatient
Id: getconsentsforpatient
Title: "GetConsentsForPatient — Response"
Description: """
  Logisk modell för svaret i GetConsentsForPatient
  (urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2, GetConsentsForPatientResponseType).
"""
Characteristics: #can-be-target
* ^version = "2.0"
* getConsentsResult 1..1 BackboneElement "getConsentsResult" "Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * pdlAssertions 0..* BackboneElement "pdlAssertions" "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg."
    * assertionId 1..1 string "assertionId" "assertionId"
    * assertionType 1..1 code "assertionType" "assertionType"
    * assertionType from AssertionTypeVS (required)
    * scope 1..1 code "scope" "scope"
    * scope from ScopeVS (required)
    * careProviderId 1..1 string "careProviderId" "careProviderId"
    * careUnitId 1..1 string "careUnitId" "careUnitId"
    * employeeId 0..1 string "employeeId" "employeeId"
    * startDate 1..1 dateTime "startDate" "startDate"
    * endDate 0..1 dateTime "endDate" "endDate"
    * ownerId 0..1 string "ownerId" "ownerId"
    * patientId 1..1 BackboneElement "patientId" "En universellt unik identifierare."
      * root 1..1 string "root" "root"
      * iiExtension 0..1 string "iiExtension" "iiExtension Heter extension i schemat."
