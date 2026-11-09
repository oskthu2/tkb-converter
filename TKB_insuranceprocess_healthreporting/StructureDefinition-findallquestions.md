# FindAllQuestions - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllQuestions**

## Logical Model: FindAllQuestions 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:FindAllQuestions |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallquestions.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallquestions.csv), [Excel](StructureDefinition-findallquestions.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallquestions",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions",
  "version" : "1.0",
  "name" : "FindAllQuestions",
  "title" : "FindAllQuestions",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallquestions",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallquestions",
      "path" : "findallquestions",
      "short" : "FindAllQuestions",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1)."
    },
    {
      "id" : "findallquestions.result",
      "path" : "findallquestions.result",
      "short" : "ResultOfCall",
      "definition" : "result",
      "comment" : "TKB-fält: `result` (kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.result.resultCode",
      "path" : "findallquestions.result.resultCode",
      "short" : "resultCode",
      "definition" : "Information om anropet gick bra(OK, ERROR, INFO)",
      "comment" : "TKB-fält: `result.resultCode` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "findallquestions.result.infoText",
      "path" : "findallquestions.result.infoText",
      "short" : "infoText",
      "definition" : "Text som anger extra information om anropets utgång. Anropet har gått bra, men det finns mer information kring anropet i denna text.",
      "comment" : "TKB-fält: `result.infoText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.result.errorId",
      "path" : "findallquestions.result.errorId",
      "short" : "errorId",
      "definition" : "Olika kategorier av fel (VALIDATION_ERROR, TRANSFORMATION_ERROR, APPLICATION_ERROR, TECHNICAL_ERROR)",
      "comment" : "TKB-fält: `result.errorId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "findallquestions.result.errorText",
      "path" : "findallquestions.result.errorText",
      "short" : "errorText",
      "definition" : "Text som ytterliggare beskriver felet",
      "comment" : "TKB-fält: `result.errorText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questionsLeft",
      "path" : "findallquestions.questionsLeft",
      "short" : "questionsLeft",
      "definition" : "Antal kvarvarande frågor för denna vårdenhet",
      "comment" : "TKB-fält: `questionsLeft` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions",
      "path" : "findallquestions.questions",
      "short" : "QuestionsType",
      "definition" : "Fråga",
      "comment" : "TKB-fält: `questions` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question",
      "path" : "findallquestions.questions.question",
      "short" : "QuestionType",
      "definition" : "Lista av frågor",
      "comment" : "TKB-fält: `questions.question` (kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question",
      "path" : "findallquestions.questions.question.Question",
      "short" : "QuestionFromFkType",
      "definition" : "Själva frågan, se ReceiveMedicalCertificateQuestion",
      "comment" : "TKB-fält: `..question.question` (kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkReferens-id",
      "path" : "findallquestions.questions.question.Question.fkReferens-id",
      "short" : "fkReferens-id",
      "definition" : "fkReferens-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.amne",
      "path" : "findallquestions.questions.question.Question.amne",
      "short" : "amne",
      "definition" : "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fraga",
      "path" : "findallquestions.questions.question.Question.fraga",
      "short" : "innehallType",
      "definition" : "fraga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fraga.meddelandeText",
      "path" : "findallquestions.questions.question.Question.fraga.meddelandeText",
      "short" : "meddelandeText",
      "definition" : "meddelandeText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fraga.signeringsTidpunkt",
      "path" : "findallquestions.questions.question.Question.fraga.signeringsTidpunkt",
      "short" : "signeringsTidpunkt",
      "definition" : "signeringsTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.avsantTidpunkt",
      "path" : "findallquestions.questions.question.Question.avsantTidpunkt",
      "short" : "avsantTidpunkt",
      "definition" : "avsantTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkKontaktInfo",
      "path" : "findallquestions.questions.question.Question.fkKontaktInfo",
      "short" : "fkKontaktType",
      "definition" : "fkKontaktInfo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkKontaktInfo.kontakt",
      "path" : "findallquestions.questions.question.Question.fkKontaktInfo.kontakt",
      "short" : "kontakt",
      "definition" : "kontakt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard",
      "path" : "findallquestions.questions.question.Question.adressVard",
      "short" : "vardAdresseringsType",
      "definition" : "adressVard",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal",
      "short" : "hosPersonalType",
      "definition" : "hosPersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.root",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.extension",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.identifierName",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.personal-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.fullstandigtNamn",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.forskrivarkod",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet",
      "short" : "enhetType",
      "definition" : "enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.root",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.extension",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.identifierName",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhets-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod",
      "short" : "II",
      "definition" : "o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.root",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.extension",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhetsnamn",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postadress",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postnummer",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postort",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.telefonnummer",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.epost",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.epost",
      "short" : "epost",
      "definition" : "epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare",
      "short" : "vardgivareType",
      "definition" : "vardgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "path" : "findallquestions.questions.question.Question.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkMeddelanderubrik",
      "path" : "findallquestions.questions.question.Question.fkMeddelanderubrik",
      "short" : "fkMeddelanderubrik",
      "definition" : "fkMeddelanderubrik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkKomplettering",
      "path" : "findallquestions.questions.question.Question.fkKomplettering",
      "short" : "kompletteringType",
      "definition" : "fkKomplettering",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkKomplettering.falt",
      "path" : "findallquestions.questions.question.Question.fkKomplettering.falt",
      "short" : "falt",
      "definition" : "falt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkKomplettering.text",
      "path" : "findallquestions.questions.question.Question.fkKomplettering.text",
      "short" : "text",
      "definition" : "text",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.fkSistaDatumForSvar",
      "path" : "findallquestions.questions.question.Question.fkSistaDatumForSvar",
      "short" : "fkSistaDatumForSvar",
      "definition" : "fkSistaDatumForSvar",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande",
      "path" : "findallquestions.questions.question.Question.lakarutlatande",
      "short" : "lakarutlatandeEnkelType",
      "definition" : "lakarutlatande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.lakarutlatande-id",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.lakarutlatande-id",
      "short" : "lakarutlatande-id",
      "definition" : "lakarutlatande-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.signeringsTidpunkt",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.signeringsTidpunkt",
      "short" : "signeringsTidpunkt",
      "definition" : "signeringsTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient",
      "short" : "patientType",
      "definition" : "patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id",
      "short" : "II",
      "definition" : "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.root",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.extension",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.identifierName",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient.person-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.Question.lakarutlatande.patient.fullstandigtNamn",
      "path" : "findallquestions.questions.question.Question.lakarutlatande.patient.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.id",
      "path" : "findallquestions.questions.question.id",
      "short" : "id",
      "definition" : "Ärendelådans identitet på den returnerade frågan. Används när man senare vill ta bort frågan från ärendelådan",
      "comment" : "TKB-fält: `..question.id` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallquestions.questions.question.receivedDate",
      "path" : "findallquestions.questions.question.receivedDate",
      "short" : "receivedDate",
      "definition" : "Datum då frågan inkom",
      "comment" : "TKB-fält: `..question.receivedDate` (`datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
