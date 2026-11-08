// Elementen genereras ur ProcessRequestConfirmationResponder_2.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:activity:request v2.2
// Kontrakt: ProcessRequestConfirmation v2.2
// Genererad: 2026-09-26

Logical: ProcessRequestConfirmation
Id: processrequestconfirmation
Title: "ProcessRequestConfirmation — Remissbekräftelse (begäran)"
Description: """
  Logisk modell för begäran i ProcessRequestConfirmation (RIV-TA urn:riv:clinicalprocess:activity:request:ProcessRequestConfirmationResponder:2, element requestConfirmation av typen RequestConfirmationType). Remissmottagaren skickar bekräftelse, besked om vidareskickning, kompletteringsbegäran, avbrott eller avvisning till remittenten. Svaret är enbart ett resultat, se ProcessResult.
"""
Characteristics: #can-be-target

* ^version = "2.2"
* requestConfirmation 1..1 Base "RequestConfirmationType" "requestConfirmation"
* requestConfirmation.requestId 1..1 Base "RequestIdType" "requestId"
* requestConfirmation.requestId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.requestConfirmationId 1..1 Base "RequestIdType" "requestConfirmationId"
* requestConfirmation.requestConfirmationId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.typeOfRequestConfirmation 1..1 Base "codeRequestConfirmationType" "typeOfRequestConfirmation"
* requestConfirmation.typeOfRequestConfirmation.code 1..1 code "code" "code (XML-attribut) Tillåtna värden: KOM, BEK, VID, AVB, AVV."
* requestConfirmation.typeOfRequestConfirmation.code from RequestConfirmationTypeVS (required)
* requestConfirmation.requestVersionNumber 1..1 string "requestVersionNumber" "requestVersionNumber"
* requestConfirmation.requestVersionNumber only VersionNumberType
* requestConfirmation.requestConfirmationTime 1..1 Base "TimeStampType" "requestConfirmationTime"
* requestConfirmation.requestConfirmationTime.value 1..1 string "value" "value (XML-attribut)"
* requestConfirmation.patient 1..1 Base "SimplePatientType" "patient"
* requestConfirmation.patient.personId 1..1 Base "PersonIdType" "personId"
* requestConfirmation.patient.personId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.patient.personId.root 1..1 string "root" "root (XML-attribut)"
* requestConfirmation.patient.name 0..1 string "name" "name"
* requestConfirmation.confirmingOrganisation 1..1 Base "FullOrganisationType" "confirmingOrganisation"
* requestConfirmation.confirmingOrganisation.careUnitId 1..1 Base "HsaIdType" "careUnitId"
* requestConfirmation.confirmingOrganisation.careUnitId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.confirmingOrganisation.careUnitName 0..1 string "careUnitName" "careUnitName"
* requestConfirmation.confirmingOrganisation.careUnitTelephone 0..1 string "careUnitTelephone" "careUnitTelephone"
* requestConfirmation.confirmingOrganisation.careUnitEmail 0..1 string "careUnitEmail" "careUnitEmail"
* requestConfirmation.confirmingOrganisation.careUnitAddress 0..1 string "careUnitAddress" "careUnitAddress"
* requestConfirmation.confirmingOrganisation.careUnitLocation 0..1 string "careUnitLocation" "careUnitLocation"
* requestConfirmation.author 1..1 Base "AuthorType" "author"
* requestConfirmation.author.healthcareProfessional 1..1 Base "HealthcareProfessionalType" "healthcareProfessional"
* requestConfirmation.author.healthcareProfessional.id 0..1 Base "HsaIdType" "id"
* requestConfirmation.author.healthcareProfessional.id.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.author.healthcareProfessional.name 1..1 string "name" "name"
* requestConfirmation.author.typeOfHealthcareProfessional 0..1 CVType "typeOfHealthcareProfessional" "typeOfHealthcareProfessional"
* requestConfirmation.author.healthcareProfessionalOrganisation 1..1 Base "OrganisationType" "healthcareProfessionalOrganisation"
* requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId 1..1 Base "HsaIdType" "careUnitId"
* requestConfirmation.author.healthcareProfessionalOrganisation.careUnitId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.recipient 1..1 Base "RecipientType" "recipient"
* requestConfirmation.recipient.organisation 1..1 Base "OrganisationType" "organisation"
* requestConfirmation.recipient.organisation.careUnitId 1..1 Base "HsaIdType" "careUnitId"
* requestConfirmation.recipient.organisation.careUnitId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.forwardingRecipient 0..1 Base "RecipientType" "forwardingRecipient"
* requestConfirmation.forwardingRecipient.organisation 1..1 Base "OrganisationType" "organisation"
* requestConfirmation.forwardingRecipient.organisation.careUnitId 1..1 Base "HsaIdType" "careUnitId"
* requestConfirmation.forwardingRecipient.organisation.careUnitId.extension 1..1 string "extension" "extension (XML-attribut)"
* requestConfirmation.outcome 1..1 Base "RequestReceivedConfirmationOutcomeType" "outcome"
* requestConfirmation.outcome.outcomeText 1..1 string "outcomeText" "outcomeText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ProcessRequestConfirmationFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* obeys processrequestconfirmation-forwarding-vid

Invariant: processrequestconfirmation-forwarding-vid
Description: "forwardingRecipient ska anges om och endast om typeOfRequestConfirmation = VID"
Expression: "requestConfirmation.forwardingRecipient.exists() = (requestConfirmation.typeOfRequestConfirmation.code = 'VID')"
Severity: #error
