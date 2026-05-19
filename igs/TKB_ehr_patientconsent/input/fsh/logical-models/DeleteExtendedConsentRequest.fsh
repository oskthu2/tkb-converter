// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: DeleteExtendedConsent v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:administration:DeleteExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: DeleteExtendedConsentRequest
Id: deleteextendedconsent-request
Title: "DeleteExtendedConsent — Request"
Description: "Logisk modell för requestparametrar i DeleteExtendedConsent."
Characteristics: #can-be-target

* assertionId 1..1 Identifier "Identifierar det intyg som skall makuleras (UUID-format, max 36 tecken)"
* deletionAction 1..1 BackboneElement "Identifierar de personer som begärt och utfört makulering samt tidpunkter"
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
