// Elementen genereras ur FindAllAnswersResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: FindAllAnswers v1.0
// Genererad: 2026-05-19

Logical: FindAllAnswersRequest
Id: findallanswers-request
Title: "FindAllAnswers — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).
  Returnerar svar från FK på tidigare skickade frågor från vården.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* careUnitId 1..1 Base "II" "careUnitId"
* careUnitId.root 0..1 string "root" "root (XML-attribut)"
* careUnitId.extension 0..1 string "extension" "extension (XML-attribut)"
* careUnitId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* careGiverId 1..1 Base "II" "careGiverId"
* careGiverId.root 0..1 string "root" "root (XML-attribut)"
* careGiverId.extension 0..1 string "extension" "extension (XML-attribut)"
* careGiverId.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert FindAllAnswersRequestFieldDescriptions

Logical: FindAllAnswers
Id: findallanswers
Title: "FindAllAnswers"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"
* answersLeft 1..1 string "answersLeft" "answersLeft"
* answers 0..1 Base "AnswersType" "answers"
* answers.answer 0..* Base "AnswerType" "answer"
* answers.answer.Answer 1..1 Base "AnswerFromFkType" "Answer"
* answers.answer.Answer.vardReferens-id 1..1 string "vardReferens-id" "vardReferens-id"
* answers.answer.Answer.fkReferens-id 0..1 string "fkReferens-id" "fkReferens-id"
* answers.answer.Answer.amne 1..1 code "amne" "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt."
* answers.answer.Answer.fraga 1..1 Base "innehallType" "fraga"
* answers.answer.Answer.fraga.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* answers.answer.Answer.fraga.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* answers.answer.Answer.svar 1..1 Base "innehallType" "svar"
* answers.answer.Answer.svar.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* answers.answer.Answer.svar.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* answers.answer.Answer.avsantTidpunkt 1..1 dateTime "avsantTidpunkt" "avsantTidpunkt"
* answers.answer.Answer.fkKontaktInfo 0..* Base "fkKontaktType" "fkKontaktInfo"
* answers.answer.Answer.fkKontaktInfo.kontakt 1..1 string "kontakt" "kontakt"
* answers.answer.Answer.adressVard 1..1 Base "vardAdresseringsType" "adressVard"
* answers.answer.Answer.adressVard.hosPersonal 1..1 Base "hosPersonalType" "hosPersonal"
* answers.answer.Answer.adressVard.hosPersonal.personal-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* answers.answer.Answer.adressVard.hosPersonal.personal-id.root 0..1 string "root" "root (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.personal-id.extension 0..1 string "extension" "extension (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.personal-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* answers.answer.Answer.adressVard.hosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* answers.answer.Answer.adressVard.hosPersonal.enhet 1..1 Base "enhetType" "enhet"
* answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.root 0..1 string "root" "root (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.extension 0..1 string "extension" "extension (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod 0..1 Base "II" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.root 0..1 string "root" "root (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.extension 0..1 string "extension" "extension (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* answers.answer.Answer.adressVard.hosPersonal.enhet.postadress 0..1 string "postadress" "postadress"
* answers.answer.Answer.adressVard.hosPersonal.enhet.postnummer 0..1 string "postnummer" "postnummer"
* answers.answer.Answer.adressVard.hosPersonal.enhet.postort 0..1 string "postort" "postort"
* answers.answer.Answer.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "telefonnummer" "telefonnummer"
* answers.answer.Answer.adressVard.hosPersonal.enhet.epost 0..1 string "epost" "epost"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare 0..1 Base "vardgivareType" "vardgivare"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root 0..1 string "root" "root (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension 0..1 string "extension" "extension (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* answers.answer.Answer.lakarutlatande 1..1 Base "lakarutlatandeEnkelType" "lakarutlatande"
* answers.answer.Answer.lakarutlatande.lakarutlatande-id 1..1 string "lakarutlatande-id" "lakarutlatande-id"
* answers.answer.Answer.lakarutlatande.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* answers.answer.Answer.lakarutlatande.patient 1..1 Base "patientType" "patient"
* answers.answer.Answer.lakarutlatande.patient.person-id 1..1 Base "II" "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3"
* answers.answer.Answer.lakarutlatande.patient.person-id.root 0..1 string "root" "root (XML-attribut)"
* answers.answer.Answer.lakarutlatande.patient.person-id.extension 0..1 string "extension" "extension (XML-attribut)"
* answers.answer.Answer.lakarutlatande.patient.person-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* answers.answer.Answer.lakarutlatande.patient.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* answers.answer.id 1..1 string "id" "id"
* answers.answer.receivedDate 1..1 dateTime "receivedDate" "receivedDate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert FindAllAnswersFieldDescriptions
