// Elementen genereras ur FindAllQuestionsResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB insuranceprocess:healthreporting v3.1.0
// Kontrakt: FindAllQuestions v1.0
// Genererad: 2026-05-19

Logical: FindAllQuestionsRequest
Id: findallquestions-request
Title: "FindAllQuestions — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).
  Returnerar frågor från FK som mellanlagrats av vården.
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
* insert FindAllQuestionsRequestFieldDescriptions

Logical: FindAllQuestions
Id: findallquestions
Title: "FindAllQuestions"
Description: """
  Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions
  (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* result 0..1 Base "ResultOfCall" "result"
* result.resultCode 1..1 code "resultCode" "resultCode Tillåtna värden: OK, ERROR, INFO."
* result.infoText 0..1 string "infoText" "infoText"
* result.errorId 0..1 code "errorId" "errorId Tillåtna värden: VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR."
* result.errorText 0..1 string "errorText" "errorText"
* questionsLeft 1..1 string "questionsLeft" "questionsLeft"
* questions 0..1 Base "QuestionsType" "questions"
* questions.question 0..* Base "QuestionType" "question"
* questions.question.Question 1..1 Base "QuestionFromFkType" "Question"
* questions.question.Question.fkReferens-id 1..1 string "fkReferens-id" "fkReferens-id"
* questions.question.Question.amne 1..1 code "amne" "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt."
* questions.question.Question.fraga 1..1 Base "innehallType" "fraga"
* questions.question.Question.fraga.meddelandeText 1..1 string "meddelandeText" "meddelandeText"
* questions.question.Question.fraga.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* questions.question.Question.avsantTidpunkt 1..1 dateTime "avsantTidpunkt" "avsantTidpunkt"
* questions.question.Question.fkKontaktInfo 0..* Base "fkKontaktType" "fkKontaktInfo"
* questions.question.Question.fkKontaktInfo.kontakt 1..1 string "kontakt" "kontakt"
* questions.question.Question.adressVard 1..1 Base "vardAdresseringsType" "adressVard"
* questions.question.Question.adressVard.hosPersonal 1..1 Base "hosPersonalType" "hosPersonal"
* questions.question.Question.adressVard.hosPersonal.personal-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* questions.question.Question.adressVard.hosPersonal.personal-id.root 0..1 string "root" "root (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.personal-id.extension 0..1 string "extension" "extension (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.personal-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* questions.question.Question.adressVard.hosPersonal.forskrivarkod 0..1 string "forskrivarkod" "forskrivarkod"
* questions.question.Question.adressVard.hosPersonal.enhet 1..1 Base "enhetType" "enhet"
* questions.question.Question.adressVard.hosPersonal.enhet.enhets-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.root 0..1 string "root" "root (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.extension 0..1 string "extension" "extension (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod 0..1 Base "II" "o.i.d för arbetsplatskod är 1.2.752.29.4.71"
* questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.root 0..1 string "root" "root (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.extension 0..1 string "extension" "extension (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.enhetsnamn 1..1 string "enhetsnamn" "enhetsnamn"
* questions.question.Question.adressVard.hosPersonal.enhet.postadress 0..1 string "postadress" "postadress"
* questions.question.Question.adressVard.hosPersonal.enhet.postnummer 0..1 string "postnummer" "postnummer"
* questions.question.Question.adressVard.hosPersonal.enhet.postort 0..1 string "postort" "postort"
* questions.question.Question.adressVard.hosPersonal.enhet.telefonnummer 0..1 string "telefonnummer" "telefonnummer"
* questions.question.Question.adressVard.hosPersonal.enhet.epost 0..1 string "epost" "epost"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare 0..1 Base "vardgivareType" "vardgivare"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id 1..1 Base "II" "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root 0..1 string "root" "root (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension 0..1 string "extension" "extension (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn 1..1 string "vardgivarnamn" "vardgivarnamn"
* questions.question.Question.fkMeddelanderubrik 0..1 string "fkMeddelanderubrik" "fkMeddelanderubrik"
* questions.question.Question.fkKomplettering 0..* Base "kompletteringType" "fkKomplettering"
* questions.question.Question.fkKomplettering.falt 1..1 string "falt" "falt"
* questions.question.Question.fkKomplettering.text 1..1 string "text" "text"
* questions.question.Question.fkSistaDatumForSvar 0..1 date "fkSistaDatumForSvar" "fkSistaDatumForSvar"
* questions.question.Question.lakarutlatande 1..1 Base "lakarutlatandeEnkelType" "lakarutlatande"
* questions.question.Question.lakarutlatande.lakarutlatande-id 1..1 string "lakarutlatande-id" "lakarutlatande-id"
* questions.question.Question.lakarutlatande.signeringsTidpunkt 1..1 dateTime "signeringsTidpunkt" "signeringsTidpunkt"
* questions.question.Question.lakarutlatande.patient 1..1 Base "patientType" "patient"
* questions.question.Question.lakarutlatande.patient.person-id 1..1 Base "II" "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3"
* questions.question.Question.lakarutlatande.patient.person-id.root 0..1 string "root" "root (XML-attribut)"
* questions.question.Question.lakarutlatande.patient.person-id.extension 0..1 string "extension" "extension (XML-attribut)"
* questions.question.Question.lakarutlatande.patient.person-id.identifierName 0..1 string "identifierName" "identifierName (XML-attribut)"
* questions.question.Question.lakarutlatande.patient.fullstandigtNamn 0..1 string "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet." "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet."
* questions.question.id 1..1 string "id" "id"
* questions.question.receivedDate 1..1 dateTime "receivedDate" "receivedDate"

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert FindAllQuestionsFieldDescriptions
