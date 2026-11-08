// Elementen genereras ur GetCareDocumentationResponder_3.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description v3.0.6
// Kontrakt: GetCareDocumentation v3.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3
// Genererad: 2026-03-19

Logical: GetCareDocumentation
Id: getcaredocumentation
Title: "GetCareDocumentation"
Description: """
  Logisk modell för tjänstekontraktet GetCareDocumentation
  (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:3).
  Representerar responsens informationsstruktur: journalanteckningar för en patient.
  Anteckningstyper: utredning, åtgärd/behandling, sammanfattning, samordning, inskrivning,
  slutanteckning, anteckning utan fysiskt möte, slutenvårdsanteckning och besöksanteckning.
  Meddelandeformatet är kompatibelt med HL7 v3 CDA v2.
"""
Characteristics: #can-be-target

* ^version = "3.0"
* careDocumentation 0..* Base "CareDocumentationType" "careDocumentation"
* careDocumentation.header 1..1 Base "HeaderType" "header"
* careDocumentation.header.accessControlHeader 1..1 Base "AccessControlHeaderType" "accessControlHeader"
* careDocumentation.header.accessControlHeader.accountableHealthcareProvider 0..1 IIType "accountableHealthcareProvider" "accountableHealthcareProvider"
* careDocumentation.header.accessControlHeader.accountableCareUnit 0..1 IIType "accountableCareUnit" "accountableCareUnit"
* careDocumentation.header.accessControlHeader.patientId 1..1 IIType "patientId" "patientId"
* careDocumentation.header.accessControlHeader.careProcessId 0..1 IIType "careProcessId" "careProcessId"
* careDocumentation.header.accessControlHeader.blockComparisonTime 1..1 string "blockComparisonTime" "blockComparisonTime"
* careDocumentation.header.accessControlHeader.blockComparisonTime only TimeStampType
* careDocumentation.header.accessControlHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* careDocumentation.header.sourceSystemId 1..1 IIType "sourceSystemId" "sourceSystemId"
* careDocumentation.header.record 1..1 Base "RecordType" "record"
* careDocumentation.header.record.id 1..1 IIType "id" "id"
* careDocumentation.header.record.timestamp 1..1 string "timestamp" "timestamp"
* careDocumentation.header.record.timestamp only TimeStampType
* careDocumentation.header.author 0..1 Base "AuthorType" "author"
* careDocumentation.header.author.id 0..1 IIType "id" "id"
* careDocumentation.header.author.name 0..1 string "name" "name"
* careDocumentation.header.author.timestamp 1..1 string "timestamp" "timestamp"
* careDocumentation.header.author.timestamp only TimeStampType
* careDocumentation.header.author.byRole 0..1 CVType "byRole" "byRole"
* careDocumentation.header.author.orgUnit 0..1 OrgUnitType "orgUnit" "orgUnit"
* careDocumentation.header.signature 0..1 Base "SignatureType" "signature"
* careDocumentation.header.signature.id 0..1 IIType "id" "id"
* careDocumentation.header.signature.name 0..1 string "name" "name"
* careDocumentation.header.signature.timestamp 1..1 string "timestamp" "timestamp"
* careDocumentation.header.signature.timestamp only TimeStampType
* careDocumentation.header.signature.byRole 0..1 CVType "byRole" "byRole"
* careDocumentation.body 1..1 Base "CareDocumentationBodyType" "body"
* careDocumentation.body.clinicalDocumentNoteCode 1..1 CVType "clinicalDocumentNoteCode" "clinicalDocumentNoteCode"
* careDocumentation.body.clinicalDocumentNoteTitle 0..1 string "clinicalDocumentNoteTitle" "clinicalDocumentNoteTitle"
* careDocumentation.body.clinicalDocumentNoteText 0..1 string "clinicalDocumentNoteText" "clinicalDocumentNoteText"
* careDocumentation.body.multimediaEntry 0..1 Base "MultimediaType" "multimediaEntry"
* careDocumentation.body.multimediaEntry.mediaType 1..1 string "mediaType" "mediaType"
* careDocumentation.body.multimediaEntry.value 0..1 base64Binary "value" "value"
* careDocumentation.body.multimediaEntry.reference 0..1 uri "reference" "reference"
* careDocumentation.body.dissentingOpinion 0..* Base "DissentingOpinionType" "dissentingOpinion"
* careDocumentation.body.dissentingOpinion.opinionId 0..1 IIType "opinionId" "opinionId"
* careDocumentation.body.dissentingOpinion.authorTime 1..1 string "authorTime" "authorTime"
* careDocumentation.body.dissentingOpinion.authorTime only TimeStampType
* careDocumentation.body.dissentingOpinion.opinion 1..1 string "opinion" "opinion"
* careDocumentation.body.dissentingOpinion.personId 1..1 IIType "personId" "personId"
* careDocumentation.body.dissentingOpinion.personName 1..1 string "personName" "personName"
* hasMore 0..* Base "HasMoreType" "hasMore"
* hasMore.logicalAddress 1..1 string "logicalAddress" "logicalAddress"
* hasMore.reference 1..1 string "reference" "reference"
* result 1..1 ResultType "result" "result"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareDocumentationFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* careDocumentation.body obeys getcaredocumentation-body-xor
* careDocumentation.body.multimediaEntry obeys getcaredocumentation-multimedia-xor

Invariant: getcaredocumentation-body-xor
Description: "Antingen clinicalDocumentNoteText eller multimediaEntry ska anges, ej båda"
Expression: "clinicalDocumentNoteText.exists() xor multimediaEntry.exists()"
Severity: #error

Invariant: getcaredocumentation-multimedia-xor
Description: "Antingen value eller reference ska anges i multimediaEntry, ej båda"
Expression: "value.exists() xor reference.exists()"
Severity: #error
