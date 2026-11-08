// Elementen genereras ur SendMessageToCareResponder_2.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: SendMessageToCare v2.0
// Genererad: 2026-05-19

Logical: SendMessageToCare
Id: sendmessagetocare
Title: "SendMessageToCare"
Description: """
  Logisk modell för tjänstekontraktet SendMessageToCare
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:SendMessageToCare:2).
  Representerar responsens informationsstruktur.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.resultText 0..1 string "resultText" "resultText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SendMessageToCareFieldDescriptions

Logical: SendMessageToCareRequest
Id: sendmessagetocare-request
Title: "SendMessageToCare — Request"
Description: "Logisk modell för requestparametrar i SendMessageToCare (meddelande från intygsmottagare till vården)."
Characteristics: #can-be-target

* ^version = "2.0"
* meddelande-id 1..1 string "meddelande-id" "meddelande-id"
* referens-id 0..1 string "referens-id" "referens-id"
* skickatTidpunkt 1..1 dateTime "skickatTidpunkt" "skickatTidpunkt"
* skickatTidpunkt only TimeStampType
* intygs-id 1..1 Base "IntygId" "intygs-id"
* patientPerson-id 1..1 Base "PersonId" "patientPerson-id"
* logiskAdressMottagare 1..1 string "logiskAdressMottagare" "logiskAdressMottagare"
* amne 1..1 Base "Amneskod" "amne"
* rubrik 0..1 string "rubrik" "rubrik"
* meddelande 1..1 string "meddelande" "meddelande"
* paminnelseMeddelande-id 0..1 string "paminnelseMeddelande-id" "paminnelseMeddelande-id"
* svarPa 0..1 Base "MeddelandeReferens" "svarPa"
* svarPa.meddelande-id 1..1 string "meddelande-id" "meddelande-id"
* svarPa.referens-id 0..1 string "referens-id" "referens-id"
* skickatAv 1..1 Base "(anonym typ)" "skickatAv"
* skickatAv.part 1..1 Base "Part" "part"
* skickatAv.kontaktInfo 0..* string "kontaktInfo" "kontaktInfo"
* komplettering 0..* Base "(anonym typ)" "komplettering"
* komplettering.frage-id 1..1 string "frage-id" "frage-id"
* komplettering.frage-id only FrageIdType
* komplettering.instans 0..1 integer "instans" "instans"
* komplettering.text 1..1 string "text" "text"
* sistaDatumForSvar 0..1 date "sistaDatumForSvar" "sistaDatumForSvar"
* sistaDatumForSvar only DateType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SendMessageToCareRequestFieldDescriptions
