// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForCareProvider v1.0
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForCareProvider
Id: getconsentsforcareprovider
Title: "GetConsentsForCareProvider"
Description: """
  Logisk modell för tjänstekontraktet GetConsentsForCareProvider
  (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForCareProviderResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser alla giltiga samtyckesintyg för en viss vårdgivare med grundinformation.
  Stödjer paginering via flaggan HasMore och CreatedOnOrAfter för inkrementell hämtning.
  Valfritt returneras även makulerade/återkallade intyg via getCancelledFlag.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Statusinformation för anropet"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
* moreOnOrAfter 1..1 dateTime "Tidpunkt från och med vilken nästa sekvens av intyg kan hämtas"
  """
  Returneras alltid. Används som inparameter i nästa anrop vid HasMore = true.
  """
* hasMore 1..1 boolean "Flagga om det finns fler intyg att hämta"
* assertions 0..* BackboneElement "Lista med giltiga PDL-intyg"
  * assertionId 1..1 Identifier "Unik identifierare för intyget (UUID-format, max 36 tecken)"
  * assertionType 1..1 CodeableConcept "Typ av intyg (Consent eller Emergency)"
  * assertionType from AssertionTypeVS (required)
  * scope 1..1 CodeableConcept "Omfång/tillämpningsområde för intyget"
  * scope from ScopeVS (required)
  * patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer (max 12 tecken)"
  * careProviderId 1..1 Identifier "HSA-id på vårdgivare som intyget gäller för (max 32 tecken)"
  * careUnitId 1..1 Identifier "HSA-id på vårdenhet som intyget gäller för (max 32 tecken)"
  * employeeId 0..1 Identifier "HSA-id för medarbetare om samtycket är personligt (max 32 tecken)"
  * startDate 1..1 dateTime "Startdatum för intygets giltighetstid"
  * endDate 0..1 dateTime "Slutdatum för intygets giltighetstid"
  * ownerId 0..1 string "Teknisk identifierare för systemet som registrerade artifakten (max 512 tecken)"
* cancelledAssertions 0..* BackboneElement "Lista med makulerade/återkallade intyg (returneras om getCancelledFlag = true)"
  * assertionId 1..1 Identifier "Unik identifierare för det makulerade/återkallade intyget (UUID-format)"
  * cancellationDate 1..1 dateTime "Tidpunkt när makuleringen eller återkallan utfördes"
