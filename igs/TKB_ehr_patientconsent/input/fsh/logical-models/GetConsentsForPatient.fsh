// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetConsentsForPatient v1.0
// RIV-TA: urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1
// Genererad: 2026-04-22

Logical: GetConsentsForPatient
Id: getconsentsforpatient
Title: "GetConsentsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetConsentsForPatient
  (RIV-TA urn:riv:ehr:patientconsent:querying:GetConsentsForPatientResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.
  Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som
  underlag vid en kontroll gällande åtkomst (CheckConsents). Ogiltiga intyg (giltigt t o m har passerats,
  makulerade eller återkallade) returneras ej.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Statusinformation för anropet"
  * resultCode 1..1 CodeableConcept "Svarskod"
    """
    Svarskod från samtyckestjänsten. OK innebär att transaktionen utfördes. Alla andra koder innebär att
    åtgärden inte genomfördes. Kodat enligt ResultCodeCS.
    """
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
* pdlAssertions 0..* BackboneElement "Lista med giltiga PDL-intyg för patient"
  * assertionId 1..1 Identifier "Unik identifierare för intyget (UUID-format, max 36 tecken)"
  * assertionType 1..1 CodeableConcept "Typ av intyg (Consent eller Emergency)"
  * assertionType from AssertionTypeVS (required)
  * scope 1..1 CodeableConcept "Omfång/tillämpningsområde för intyget"
  * scope from ScopeVS (required)
  * patientId 1..1 Identifier "Patientens personnummer eller samordningsnummer (max 12 tecken)"
  * careProviderId 1..1 Identifier "HSA-id på vårdgivare som intyget gäller för (max 32 tecken)"
    """
    Identifierare för vårdgivare. system = urn:oid:1.2.752.129.2.1.4.1
    """
  * careUnitId 1..1 Identifier "HSA-id på vårdenhet som intyget gäller för (max 32 tecken)"
  * employeeId 0..1 Identifier "HSA-id för medarbetare om samtycket är personligt (max 32 tecken)"
  * startDate 1..1 dateTime "Startdatum för intygets giltighetstid"
  * endDate 0..1 dateTime "Slutdatum för intygets giltighetstid (om inget slutdatum gäller samtycket tills återkallat)"
  * ownerId 0..1 string "Teknisk identifierare för systemet som registrerade artifakten (max 512 tecken)"
