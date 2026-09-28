// Genererad från XSD för informationsecurity.authorization.consent v2.0.4 (Genererad ur scheman i riv.informationsecurity.authorization.consent, tagg 2.0.4; scripts/xsd_to_ig.py)
// Kontrakt: GetConsentsForCareProvider v2.0
// Genererad: 2026-09-26

Logical: GetConsentsForCareProvider
Id: getconsentsforcareprovider
Title: "GetConsentsForCareProvider — Response"
Description: """
  Logisk modell för svaret i GetConsentsForCareProvider
  (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderResponseType).
"""
Characteristics: #can-be-target
* getAllAssertionsResult 1..1 BackboneElement "getAllAssertionsResult" "Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt. Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar. Datatypen utökar datatypen Result."
  * result 1..1 BackboneElement "result" "Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes."
    * resultCode 1..1 code "resultCode" "resultCode"
    * resultCode from ResultCodeVS (required)
    * resultText 0..1 string "resultText" "resultText"
  * moreOnOrAfter 1..1 dateTime "moreOnOrAfter" "moreOnOrAfter"
  * hasMore 1..1 boolean "hasMore" "hasMore"
  * assertions 0..* BackboneElement "assertions" "Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg."
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
  * cancelledAssertions 0..* BackboneElement "cancelledAssertions" "Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes."
    * assertionId 1..1 string "assertionId" "assertionId"
    * cancellationDate 1..1 dateTime "cancellationDate" "cancellationDate"
