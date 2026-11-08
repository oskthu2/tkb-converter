// Elementen genereras ur ReceiveMedicalCertificateQuestionResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: ReceiveMedicalCertificateQuestion v1.0
// Genererad: 2026-05-19

Logical: ReceiveMedicalCertificateQuestionRequest
Id: receivemedicalcertificatequestion-request
Title: "ReceiveMedicalCertificateQuestion — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).
  Tar emot frågor från Försäkringskassan för ett läkarintyg.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* Question 1..1 Base "QuestionFromFkType" "Question"
* Question.fkReferens-id 1..1 string "fkReferens-id" "fkReferens-id"
* Question.amne 1..1 code "amne" "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt."
* Question.fraga 1..1 Base "innehallType" "fraga"
* Question.fraga.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* Question.fraga.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* Question.avsantTidpunkt 1..1 dateTime "avsantTidpunkt" "avsantTidpunkt"
* Question.fkKontaktInfo 0..* Base "fkKontaktType" "fkKontaktInfo"
* Question.fkKontaktInfo.kontakt 1..1 string "kontakt" "kontakt"
* Question.adressVard 1..1 Base "vardAdresseringsType" "adressVard"
* Question.adressVard.hosPersonal 1..1 Base "hosPersonalType" "hosPersonal"
* Question.adressVard.hosPersonal.personal-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Question.adressVard.hosPersonal.personal-id.root 0..1 string "root" "root (XML-attribut)"
* Question.adressVard.hosPersonal.personal-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Question.adressVard.hosPersonal.personal-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Question.adressVard.hosPersonal.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* Question.adressVard.hosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* Question.adressVard.hosPersonal.enhet 1..1 Base "enhetType" "enhet"
* Question.adressVard.hosPersonal.enhet.enhets-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Question.adressVard.hosPersonal.enhet.enhets-id.root 0..1 string "root" "root (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.enhets-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.enhets-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.arbetsplatskod 0..1 Base "II" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* Question.adressVard.hosPersonal.enhet.arbetsplatskod.root 0..1 string "root" "root (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.arbetsplatskod.extension 0..1 string "extension" "extension (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* Question.adressVard.hosPersonal.enhet.postadress 0..1 string "postadress" "postadress"
* Question.adressVard.hosPersonal.enhet.postnummer 0..1 string "postnummer" "postnummer"
* Question.adressVard.hosPersonal.enhet.postort 0..1 string "postort" "postort"
* Question.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "telefonnummer" "telefonnummer"
* Question.adressVard.hosPersonal.enhet.epost 0..1 string "epost" "epost"
* Question.adressVard.hosPersonal.enhet.vardgivare 0..1 Base "vardgivareType" "vardgivare"
* Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root 0..1 string "root" "root (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Question.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* Question.fkMeddelanderubrik 0..1 string "fkMeddelanderubrik" "fkMeddelanderubrik"
* Question.fkKomplettering 0..* Base "kompletteringType" "fkKomplettering"
* Question.fkKomplettering.falt 1..1 string "falt" "falt"
* Question.fkKomplettering.text 1..1 string "text" "text"
* Question.fkSistaDatumForSvar 0..1 date "fkSistaDatumForSvar" "fkSistaDatumForSvar"
* Question.lakarutlatande 1..1 Base "lakarutlatandeEnkelType" "lakarutlatande"
* Question.lakarutlatande.lakarutlatande-id 1..1 string "lakarutlatande-id" "lakarutlatande-id"
* Question.lakarutlatande.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* Question.lakarutlatande.patient 1..1 Base "patientType" "patient"
* Question.lakarutlatande.patient.person-id 1..1 Base "II" "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3"
* Question.lakarutlatande.patient.person-id.root 0..1 string "root" "root (XML-attribut)"
* Question.lakarutlatande.patient.person-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Question.lakarutlatande.patient.person-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Question.lakarutlatande.patient.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveMedicalCertificateQuestionRequestFieldDescriptions

Logical: ReceiveMedicalCertificateQuestion
Id: receivemedicalcertificatequestion
Title: "ReceiveMedicalCertificateQuestion"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveMedicalCertificateQuestionFieldDescriptions
