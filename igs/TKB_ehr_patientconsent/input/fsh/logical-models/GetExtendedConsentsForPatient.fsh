// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: GetExtendedConsentsForPatient v1.0
// RIV-TA: urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1
// Genererad: 2026-04-22

Logical: GetExtendedConsentsForPatient
Id: getextendedconsentsforpatient
Title: "GetExtendedConsentsForPatient"
Description: """
  Logisk modell för tjänstekontraktet GetExtendedConsentsForPatient
  (RIV-TA urn:riv:ehr:patientconsent:administration:GetExtendedConsentsForPatientResponder:1).
  Representerar responsens informationsstruktur.

  Tjänst som läser registrerade samtyckesintyg för en viss patient med utökad information.
  Returnerar ExtendedPDLAssertion som innehåller registrerings-, återkallnings- och makuleringsinformation.
  Det är valbart om ogiltiga (makulerade, återkallade och utgångna) samtyckesintyg skall returneras.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Statusinformation för anropet"
  * resultCode 1..1 CodeableConcept "Svarskod"
  * resultCode from ResultCodeVS (required)
  * resultText 1..1 string "Fritext beskrivning av resultatet"
* pdlAssertions 0..* BackboneElement "Lista med samtyckesintyg med utökat format"
  * pdlAssertion 1..1 BackboneElement "Grundinformation om intyget (PDLAssertionType)"
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
  * representedBy 0..1 Identifier "Företrädare/vårdnadshavare som företräder patienten (max 12 tecken)"
  * registrationInfo 1..1 BackboneElement "Information om vem som begärt och registrerat intyget"
    * requestDate 1..1 dateTime "Tidpunkt för begäran om registrering"
    * requestedBy 1..1 BackboneElement "Aktör som begärt registreringen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * registrationDate 1..1 dateTime "Tidpunkt för genomförd registrering"
    * registeredBy 1..1 BackboneElement "Aktör som utfört registreringen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * reasonText 0..1 string "Anledning till åtgärden i fritext (max 1024 tecken)"
  * cancellationInfo 0..1 BackboneElement "Information om återkallning (finns om intyget är återkallat)"
    * requestDate 1..1 dateTime "Tidpunkt för begäran om återkallning"
    * requestedBy 1..1 BackboneElement "Aktör som begärt återkallningen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * registrationDate 1..1 dateTime "Tidpunkt för genomförd återkallning"
    * registeredBy 1..1 BackboneElement "Aktör som utfört återkallningen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * reasonText 0..1 string "Anledning till återkallningen i fritext (max 1024 tecken)"
  * deletionInfo 0..1 BackboneElement "Information om makulering (finns om intyget är makulerat)"
    * requestDate 1..1 dateTime "Tidpunkt för begäran om makulering"
    * requestedBy 1..1 BackboneElement "Aktör som begärt makuleringen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * registrationDate 1..1 dateTime "Tidpunkt för genomförd makulering"
    * registeredBy 1..1 BackboneElement "Aktör som utfört makuleringen"
      * employeeId 1..1 Identifier "HSA-id för medarbetaren (max 32 tecken)"
      * assignmentId 0..1 Identifier "HSA-id för medarbetaruppdraget (max 32 tecken)"
      * assignmentName 0..1 string "Namn på medarbetaruppdraget (max 256 tecken)"
    * reasonText 0..1 string "Anledning till makuleringen i fritext (max 1024 tecken)"
