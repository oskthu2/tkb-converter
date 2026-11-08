// Elementen genereras ur GetCareDocumentationResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetCareDocumentation v2.1
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08

Logical: GetCareDocumentation
Id: getcaredocumentation
Title: "GetCareDocumentation"
Description: "Logisk modell för svaret i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: hälso- och sjukvårdsdokument för en patient samt resultat."
Characteristics: #can-be-target

* ^version = "2.1"
* careDocumentation 0..* Base "CareDocumentationType" "careDocumentation"
* careDocumentation.careDocumentationHeader 1..1 Base "CPatientSummaryHeaderType" "careDocumentationHeader"
* careDocumentation.careDocumentationHeader.documentId 1..1 string "documentId" "documentId"
* careDocumentation.careDocumentationHeader.sourceSystemHSAid 1..1 string "sourceSystemHSAid" "sourceSystemHSAid"
* careDocumentation.careDocumentationHeader.sourceSystemHSAid only HSAIdType
* careDocumentation.careDocumentationHeader.documentTitle 0..1 string "documentTitle" "documentTitle"
* careDocumentation.careDocumentationHeader.documentTime 0..1 string "documentTime" "documentTime"
* careDocumentation.careDocumentationHeader.documentTime only TimeStampType
* careDocumentation.careDocumentationHeader.patientId 1..1 PersonIdType "patientId" "patientId"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional 1..1 HealthcareProfessionalType "accountableHealthcareProfessional" "accountableHealthcareProfessional"
* careDocumentation.careDocumentationHeader.legalAuthenticator 0..1 Base "LegalAuthenticatorType" "legalAuthenticator"
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime 1..1 string "signatureTime" "signatureTime"
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime only TimeStampType
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId 0..1 string "legalAuthenticatorHSAId" "legalAuthenticatorHSAId"
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId only HSAIdType
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName 0..1 string "legalAuthenticatorName" "legalAuthenticatorName"
* careDocumentation.careDocumentationHeader.approvedForPatient 1..1 boolean "approvedForPatient" "approvedForPatient"
* careDocumentation.careDocumentationHeader.careContactId 0..1 string "careContactId" "careContactId"
* careDocumentation.careDocumentationHeader.nullified 0..1 boolean "nullified" "nullified"
* careDocumentation.careDocumentationHeader.nullifiedReason 0..1 string "nullifiedReason" "nullifiedReason"
* careDocumentation.careDocumentationBody 1..1 Base "CareDocumentationBodyType" "careDocumentationBody"
* careDocumentation.careDocumentationBody.clinicalDocumentNote 1..1 Base "ClinicalDocumentNoteType" "clinicalDocumentNote"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode 0..1 code "clinicalDocumentNoteCode" "clinicalDocumentNoteCode Tillåtna värden: utr, atb, sam, sao, ins, slu, auf, sva, bes."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode from ClinicalDocumentNoteCodeVS (required)
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode 0..1 code "clinicalDocumentTypeCode" "clinicalDocumentTypeCode Tillåtna värden: epi, int, dag, ova, ovs, ovr."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle 0..1 string "clinicalDocumentNoteTitle" "clinicalDocumentNoteTitle"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText 0..1 string "clinicalDocumentNoteText" "clinicalDocumentNoteText"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry 0..1 Base "MultimediaType" "multimediaEntry"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType 1..1 code "mediaType" "mediaType Tillåtna värden: application/dicom, application/msword, application/pdf, audio/basic, audio/k32adpcm, audio/mpeg, image/g3fax, image/gif, image/jpeg, image/png, image/tiff, model/vrml, multipart/x-hl7-cda-level1, text/html, text/plain, text/rtf, text/sgml, text/x-hl7-ft, text/xml, video/mpeg, video/x-avi."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value 0..1 base64Binary "value" "value"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference 0..1 uri "reference" "reference"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion 0..* Base "DissentingOpinionType" "dissentintOpinion"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinionId 0..1 IIType "opinionId" "opinionId"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.authorTime 1..1 string "authorTime" "authorTime"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.authorTime only TimeStampType
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.opinion 1..1 string "opinion" "opinion"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personId 1..1 PersonIdType "personId" "personId"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentintOpinion.personName 1..1 string "personName" "personName"
* result 0..1 Base "(anonym typ)" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.errorCode 0..1 code "errorCode" "errorCode Tillåtna värden: INVALID_REQUEST."
* result.logId 1..1 string "logId" "logId"
* result.subCode 0..1 string "subCode" "subCode"
* result.message 0..1 string "message" "message"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert GetCareDocumentationFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* careDocumentation.careDocumentationBody.clinicalDocumentNote obeys getcaredocumentation-notetext-or-multimedia
* careDocumentation.careDocumentationBody.clinicalDocumentNote obeys getcaredocumentation-notecode-or-typecode
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry obeys getcaredocumentation-multimedia-value-xor-reference

Invariant: getcaredocumentation-notetext-or-multimedia
Description: "Dokumentets innehåll får inte skickas både i clinicalDocumentNoteText och multimediaEntry (TKB 7.1.4)."
Expression: "(clinicalDocumentNoteText.exists() and multimediaEntry.exists()).not()"
Severity: #error

Invariant: getcaredocumentation-notecode-or-typecode
Description: "clinicalDocumentNoteCode är obligatoriskt om clinicalDocumentTypeCode saknas och får annars inte anges samtidigt (TKB 7.1.4)."
Expression: "clinicalDocumentNoteCode.exists() xor clinicalDocumentTypeCode.exists()"
Severity: #error

Invariant: getcaredocumentation-multimedia-value-xor-reference
Description: "Ett och endast ett av value och reference ska anges i multimediaEntry (TKB 7.1.4)."
Expression: "value.exists() xor reference.exists()"
Severity: #error
