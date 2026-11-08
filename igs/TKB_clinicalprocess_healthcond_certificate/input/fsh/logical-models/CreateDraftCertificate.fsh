// Elementen genereras ur CreateDraftCertificateResponder_3.3.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB clinicalprocess:healthcond:certificate v4.1-RC1
// Kontrakt: CreateDraftCertificate v3.2 (TKB) / v3.3 (WSDL)
// Genererad: 2026-05-19

Logical: CreateDraftCertificate
Id: createdraftcertificate
Title: "CreateDraftCertificate"
Description: """
  Logisk modell för tjänstekontraktet CreateDraftCertificate
  (RIV-TA urn:riv:clinicalprocess:healthcond:certificate:CreateDraftCertificate:3).
  Representerar responsens informationsstruktur — intygs-id på skapade intygsutkastet.
"""
Characteristics: #can-be-target

* ^version = "3.3"
* intygs-id 0..1 Base "IntygId" "intygs-id"
* result 1..1 Base "ResultType" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, INFO, ERROR."
* result.resultText 0..1 string "resultText" "resultText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR, REVOKED."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateDraftCertificateFieldDescriptions

Logical: CreateDraftCertificateRequest
Id: createdraftcertificate-request
Title: "CreateDraftCertificate — Request"
Description: "Logisk modell för requestparametrar i CreateDraftCertificate."
Characteristics: #can-be-target

* ^version = "3.3"
* intyg 1..1 Base "Intyg" "intyg"
* intyg.typAvIntyg 1..1 Base "TypAvIntyg" "typAvIntyg"
* intyg.patient 1..1 Base "Patient" "patient"
* intyg.patient.person-id 1..1 Base "PersonId" "person-id"
* intyg.patient.fornamn 1..1 string "fornamn" "fornamn"
* intyg.patient.efternamn 1..1 string "efternamn" "efternamn"
* intyg.patient.mellannamn 0..1 string "mellannamn" "mellannamn"
* intyg.patient.postadress 1..1 string "postadress" "postadress"
* intyg.patient.postnummer 1..1 string "postnummer" "postnummer"
* intyg.patient.postort 1..1 string "postort" "postort"
* intyg.patient.kallaAdressuppgifter 0..1 Base "KallaAdressuppgifterType" "kallaAdressuppgifter"
* intyg.skapadAv 1..1 Base "HosPersonal" "skapadAv"
* intyg.skapadAv.personal-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intyg.skapadAv.fullstandigtNamn 1..1 string "Förnamn + efternamn sammanslaget. Personen kan ej ha skyddad identitet, så det fungerar med obligatoriskt namn." "Förnamn + efternamn sammanslaget. Personen kan ej ha skyddad identitet, så det fungerar med obligatoriskt namn."
* intyg.skapadAv.enhet 1..1 Base "Enhet" "enhet"
* intyg.skapadAv.enhet.enhets-id 1..1 Base "HsaId" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* intyg.skapadAv.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* intyg.ref 0..1 string "ref" "ref"
* intyg.forifyllnad 0..1 Base "Forifyllnad" "forifyllnad"
* intyg.forifyllnad.svar 0..* Base "Svar" "svar"
* intyg.forifyllnad.svar.instans 0..1 integer "instans" "instans"
* intyg.forifyllnad.svar.delsvar 1..* Base "(anonym typ)" "delsvar"
* intyg.forifyllnad.svar.delsvar.id 1..1 string "id" "id (XML-attribut)"
* intyg.forifyllnad.svar.delsvar.id only DelfrageIdType
* intyg.forifyllnad.svar.id 1..1 string "id" "id (XML-attribut)"
* intyg.forifyllnad.svar.id only FrageIdType

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert CreateDraftCertificateRequestFieldDescriptions
