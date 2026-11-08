// Elementen genereras ur SendCertificateToRecipientResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SendCertificateToRecipient v2.1
// Genererad: 2026-05-19

Logical: SendCertificateToRecipient
Id: sendcertificatetorecipient
Title: "SendCertificateToRecipient"
Description: """
  Logisk modell för tjänstekontraktet SendCertificateToRecipient
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendCertificateToRecipient:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.1"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.resultText 0..1 string "resultText" "resultText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SendCertificateToRecipientFieldDescriptions

Logical: SendCertificateToRecipientRequest
Id: sendcertificatetorecipient-request
Title: "SendCertificateToRecipient — Request"
Description: "Logisk modell för requestparametrar i SendCertificateToRecipient."
Characteristics: #can-be-target

* ^version = "2.1"
* skickatTidpunkt 1..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* skickatTidpunkt only TimeStampType
* intygs-id 1..1 Base "IntygId" "intygs-id"
* patientPerson-id 1..1 Base "PersonId" "patientPerson-id"
* mottagare 1..1 Base "Part" "mottagare"
* skickatAv 1..1 Base "(anonym typ)" "skickatAv"
* skickatAv.hosPersonal 0..1 Base "HosPersonal" "hosPersonal"
* skickatAv.hosPersonal.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.hosPersonal.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* skickatAv.hosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* skickatAv.hosPersonal.befattning 0..* Base "Befattning" "befattning"
* skickatAv.hosPersonal.enhet 1..1 Base "Enhet" "enhet"
* skickatAv.hosPersonal.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.hosPersonal.enhet.arbetsplatskod 1..1 Base "ArbetsplatsKod" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* skickatAv.hosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* skickatAv.hosPersonal.enhet.postadress 1..1 string "postadress" "postadress"
* skickatAv.hosPersonal.enhet.postnummer 1..1 string "postnummer" "postnummer"
* skickatAv.hosPersonal.enhet.postort 1..1 string "postort" "postort"
* skickatAv.hosPersonal.enhet.telefonnummer 1..1 string "telefonnummer" "telefonnummer"
* skickatAv.hosPersonal.enhet.epost 0..1 string "epost" "epost"
* skickatAv.hosPersonal.enhet.vardgivare 1..1 Base "Vardgivare" "vardgivare"
* skickatAv.hosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.hosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* skickatAv.hosPersonal.specialistkompetens 0..* Base "Specialistkompetens" "specialistkompetens"
* skickatAv.hosPersonal.specialistkompetens.code 1..1 string "code" "code"
* skickatAv.hosPersonal.specialistkompetens.displayName 0..1 string "displayName" "displayName"
* skickatAv.hosPersonal.legitimeratYrke 0..* Base "LegitimeratYrkeType" "legitimeratYrke"
* skickatAv.person-id 0..1 Base "PersonId" "person-id"
* skickatAv obeys sendcertificatetorecipientrequest-choice-1

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SendCertificateToRecipientRequestFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* skickatAv obeys sendcertificatetorecipient-request-skickatav-choice

Invariant: sendcertificatetorecipientrequest-choice-1
Description: "Exakt ett av hosPersonal, person-id ska anges (xs:choice i schemat)."
Expression: "hosPersonal.exists() xor person-id.exists()"
Severity: #error

Invariant: sendcertificatetorecipient-request-skickatav-choice
Description: "Exakt ett av hosPersonal och personId ska anges i skickatAv (xs:choice i schemat)."
Expression: "hosPersonal.exists() xor personId.exists()"
Severity: #error
