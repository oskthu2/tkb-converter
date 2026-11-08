// Elementen genereras ur RevokeCertificateResponder_2.1.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: RevokeCertificate v2.1
// Genererad: 2026-05-19

Logical: RevokeCertificate
Id: revokecertificate
Title: "RevokeCertificate"
Description: """
  Logisk modell för tjänstekontraktet RevokeCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:RevokeCertificate:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.1"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.resultText 0..1 string "resultText" "resultText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RevokeCertificateFieldDescriptions

Logical: RevokeCertificateRequest
Id: revokecertificate-request
Title: "RevokeCertificate — Request"
Description: "Logisk modell för requestparametrar i RevokeCertificate."
Characteristics: #can-be-target

* ^version = "2.1"
* meddelande 0..1 string "meddelande" "meddelande"
* skickatTidpunkt 1..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* skickatTidpunkt only TimeStampType
* intygs-id 1..1 Base "IntygId" "intygs-id"
* patientPerson-id 1..1 Base "PersonId" "patientPerson-id"
* skickatAv 1..1 Base "HosPersonal" "skickatAv"
* skickatAv.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* skickatAv.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* skickatAv.befattning 0..* Base "Befattning" "befattning"
* skickatAv.enhet 1..1 Base "Enhet" "enhet"
* skickatAv.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.enhet.arbetsplatskod 1..1 Base "ArbetsplatsKod" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* skickatAv.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* skickatAv.enhet.postadress 1..1 string "postadress" "postadress"
* skickatAv.enhet.postnummer 1..1 string "postnummer" "postnummer"
* skickatAv.enhet.postort 1..1 string "postort" "postort"
* skickatAv.enhet.telefonnummer 1..1 string "telefonnummer" "telefonnummer"
* skickatAv.enhet.epost 0..1 string "epost" "epost"
* skickatAv.enhet.vardgivare 1..1 Base "Vardgivare" "vardgivare"
* skickatAv.enhet.vardgivare.vardgivare-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* skickatAv.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* skickatAv.specialistkompetens 0..* Base "Specialistkompetens" "specialistkompetens"
* skickatAv.specialistkompetens.code 1..1 string "code" "code"
* skickatAv.specialistkompetens.displayName 0..1 string "displayName" "displayName"
* skickatAv.legitimeratYrke 0..* Base "LegitimeratYrkeType" "legitimeratYrke"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert RevokeCertificateRequestFieldDescriptions
