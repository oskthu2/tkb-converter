// Elementen genereras ur ReceiveMedicalCertificateAnswerResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: ReceiveMedicalCertificateAnswer v1.0
// Genererad: 2026-05-19

Logical: ReceiveMedicalCertificateAnswerRequest
Id: receivemedicalcertificateanswer-request
Title: "ReceiveMedicalCertificateAnswer — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).
  Tar emot svar från Försäkringskassan på en tidigare skickad fråga från vården.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* Answer 1..1 Base "AnswerFromFkType" "Answer"
* Answer.vardReferens-id 1..1 string "vardReferens-id" "vardReferens-id"
* Answer.fkReferens-id 0..1 string "fkReferens-id" "fkReferens-id"
* Answer.amne 1..1 code "amne" "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt."
* Answer.fraga 1..1 Base "innehallType" "fraga"
* Answer.fraga.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* Answer.fraga.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* Answer.svar 1..1 Base "innehallType" "svar"
* Answer.svar.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* Answer.svar.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* Answer.avsantTidpunkt 1..1 dateTime "avsantTidpunkt" "avsantTidpunkt"
* Answer.fkKontaktInfo 0..* Base "fkKontaktType" "fkKontaktInfo"
* Answer.fkKontaktInfo.kontakt 1..1 string "kontakt" "kontakt"
* Answer.adressVard 1..1 Base "vardAdresseringsType" "adressVard"
* Answer.adressVard.hosPersonal 1..1 Base "hosPersonalType" "hosPersonal"
* Answer.adressVard.hosPersonal.personal-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Answer.adressVard.hosPersonal.personal-id.root 0..1 string "root" "root (XML-attribut)"
* Answer.adressVard.hosPersonal.personal-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Answer.adressVard.hosPersonal.personal-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Answer.adressVard.hosPersonal.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* Answer.adressVard.hosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* Answer.adressVard.hosPersonal.enhet 1..1 Base "enhetType" "enhet"
* Answer.adressVard.hosPersonal.enhet.enhets-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Answer.adressVard.hosPersonal.enhet.enhets-id.root 0..1 string "root" "root (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.enhets-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.enhets-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.arbetsplatskod 0..1 Base "II" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* Answer.adressVard.hosPersonal.enhet.arbetsplatskod.root 0..1 string "root" "root (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.arbetsplatskod.extension 0..1 string "extension" "extension (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* Answer.adressVard.hosPersonal.enhet.postadress 0..1 string "postadress" "postadress"
* Answer.adressVard.hosPersonal.enhet.postnummer 0..1 string "postnummer" "postnummer"
* Answer.adressVard.hosPersonal.enhet.postort 0..1 string "postort" "postort"
* Answer.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "telefonnummer" "telefonnummer"
* Answer.adressVard.hosPersonal.enhet.epost 0..1 string "epost" "epost"
* Answer.adressVard.hosPersonal.enhet.vardgivare 0..1 Base "vardgivareType" "vardgivare"
* Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root 0..1 string "root" "root (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* Answer.lakarutlatande 1..1 Base "lakarutlatandeEnkelType" "lakarutlatande"
* Answer.lakarutlatande.lakarutlatande-id 1..1 string "lakarutlatande-id" "lakarutlatande-id"
* Answer.lakarutlatande.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* Answer.lakarutlatande.patient 1..1 Base "patientType" "patient"
* Answer.lakarutlatande.patient.person-id 1..1 Base "II" "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3"
* Answer.lakarutlatande.patient.person-id.root 0..1 string "root" "root (XML-attribut)"
* Answer.lakarutlatande.patient.person-id.extension 0..1 string "extension" "extension (XML-attribut)"
* Answer.lakarutlatande.patient.person-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* Answer.lakarutlatande.patient.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveMedicalCertificateAnswerRequestFieldDescriptions

Logical: ReceiveMedicalCertificateAnswer
Id: receivemedicalcertificateanswer
Title: "ReceiveMedicalCertificateAnswer"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer
  (RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert ReceiveMedicalCertificateAnswerFieldDescriptions
