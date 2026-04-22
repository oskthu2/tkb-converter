// Genererad från TKB ehr:patientconsent v1.0.1_RC1
// Kontrakt: CancelExtendedConsent v1.0 — Request-modell
// RIV-TA: urn:riv:ehr:patientconsent:administration:CancelExtendedConsentResponder:1
// Genererad: 2026-04-22

Logical: CancelExtendedConsentRequest
Id: cancelextendedconsent-request
Title: "CancelExtendedConsent — Request"
Description: "Logisk modell för requestparametrar i CancelExtendedConsent."
Characteristics: #can-be-target

* assertionId 1..1 Identifier "Identifierare för det intyg som skall återkallas (UUID-format, max 36 tecken)"
* cancellationAction 1..1 BackboneElement "Identifierar de personer som begärt och registrerat återkallan samt tidpunkter"
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
