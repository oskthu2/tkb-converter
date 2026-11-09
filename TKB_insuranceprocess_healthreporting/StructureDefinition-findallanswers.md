# FindAllAnswers - insuranceprocess: healthreporting v3.1.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FindAllAnswers**

## Logical Model: FindAllAnswers 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers | *Version*:1.0 |
| Active as of 2026-11-09 | *Computable Name*:FindAllAnswers |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers (RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.insuranceprocess-healthreporting|current/StructureDefinition/StructureDefinition-findallanswers.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-findallanswers.csv), [Excel](StructureDefinition-findallanswers.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "findallanswers",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers",
  "version" : "1.0",
  "name" : "FindAllAnswers",
  "title" : "FindAllAnswers",
  "status" : "active",
  "date" : "2026-11-09T03:41:48+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/StructureDefinition/findallanswers",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "findallanswers",
      "path" : "findallanswers",
      "short" : "FindAllAnswers",
      "definition" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1)."
    },
    {
      "id" : "findallanswers.result",
      "path" : "findallanswers.result",
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
      "id" : "findallanswers.result.resultCode",
      "path" : "findallanswers.result.resultCode",
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
      "id" : "findallanswers.result.infoText",
      "path" : "findallanswers.result.infoText",
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
      "id" : "findallanswers.result.errorId",
      "path" : "findallanswers.result.errorId",
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
      "id" : "findallanswers.result.errorText",
      "path" : "findallanswers.result.errorText",
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
      "id" : "findallanswers.answersLeft",
      "path" : "findallanswers.answersLeft",
      "short" : "answersLeft",
      "definition" : "Antal kvarvarande svar för denna vårdenhet",
      "comment" : "TKB-fält: `answersLeft` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers",
      "path" : "findallanswers.answers",
      "short" : "AnswersType",
      "definition" : "Svar",
      "comment" : "TKB-fält: `answers` (kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer",
      "path" : "findallanswers.answers.answer",
      "short" : "AnswerType",
      "definition" : "Lista av svar",
      "comment" : "TKB-fält: `answers.answer` (kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer",
      "path" : "findallanswers.answers.answer.Answer",
      "short" : "AnswerFromFkType",
      "definition" : "Answer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.vardReferens-id",
      "path" : "findallanswers.answers.answer.Answer.vardReferens-id",
      "short" : "vardReferens-id",
      "definition" : "vardReferens-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fkReferens-id",
      "path" : "findallanswers.answers.answer.Answer.fkReferens-id",
      "short" : "fkReferens-id",
      "definition" : "fkReferens-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.amne",
      "path" : "findallanswers.answers.answer.Answer.amne",
      "short" : "amne",
      "definition" : "amne Tillåtna värden: Komplettering_av_lakarintyg, Makulering_av_lakarintyg, Avstamningsmote, Kontakt, Arbetstidsforlaggning, Paminnelse, Ovrigt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fraga",
      "path" : "findallanswers.answers.answer.Answer.fraga",
      "short" : "innehallType",
      "definition" : "fraga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fraga.meddelandeText",
      "path" : "findallanswers.answers.answer.Answer.fraga.meddelandeText",
      "short" : "meddelandeText",
      "definition" : "meddelandeText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fraga.signeringsTidpunkt",
      "path" : "findallanswers.answers.answer.Answer.fraga.signeringsTidpunkt",
      "short" : "signeringsTidpunkt",
      "definition" : "signeringsTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.svar",
      "path" : "findallanswers.answers.answer.Answer.svar",
      "short" : "innehallType",
      "definition" : "svar",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.svar.meddelandeText",
      "path" : "findallanswers.answers.answer.Answer.svar.meddelandeText",
      "short" : "meddelandeText",
      "definition" : "meddelandeText",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.svar.signeringsTidpunkt",
      "path" : "findallanswers.answers.answer.Answer.svar.signeringsTidpunkt",
      "short" : "signeringsTidpunkt",
      "definition" : "signeringsTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.avsantTidpunkt",
      "path" : "findallanswers.answers.answer.Answer.avsantTidpunkt",
      "short" : "avsantTidpunkt",
      "definition" : "avsantTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fkKontaktInfo",
      "path" : "findallanswers.answers.answer.Answer.fkKontaktInfo",
      "short" : "fkKontaktType",
      "definition" : "fkKontaktInfo",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.fkKontaktInfo.kontakt",
      "path" : "findallanswers.answers.answer.Answer.fkKontaktInfo.kontakt",
      "short" : "kontakt",
      "definition" : "kontakt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard",
      "path" : "findallanswers.answers.answer.Answer.adressVard",
      "short" : "vardAdresseringsType",
      "definition" : "adressVard",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal",
      "short" : "hosPersonalType",
      "definition" : "hosPersonal",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.root",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.extension",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.identifierName",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.personal-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.fullstandigtNamn",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.forskrivarkod",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet",
      "short" : "enhetType",
      "definition" : "enhet",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.root",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.extension",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.identifierName",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhets-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod",
      "short" : "II",
      "definition" : "o.i.d för arbetsplatskod är 1.2.752.29.4.71",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.root",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.extension",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.arbetsplatskod.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhetsnamn",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.enhetsnamn",
      "short" : "enhetsnamn",
      "definition" : "enhetsnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postadress",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postnummer",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postort",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.telefonnummer",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.epost",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.epost",
      "short" : "epost",
      "definition" : "epost",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare",
      "short" : "vardgivareType",
      "definition" : "vardgivare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id",
      "short" : "II",
      "definition" : "HSA-id, o.i.d för HSA-id är 1.2.752.129.2.1.4.1",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivare-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "path" : "findallanswers.answers.answer.Answer.adressVard.hosPersonal.enhet.vardgivare.vardgivarnamn",
      "short" : "vardgivarnamn",
      "definition" : "vardgivarnamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande",
      "short" : "lakarutlatandeEnkelType",
      "definition" : "lakarutlatande",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.lakarutlatande-id",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.lakarutlatande-id",
      "short" : "lakarutlatande-id",
      "definition" : "lakarutlatande-id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.signeringsTidpunkt",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.signeringsTidpunkt",
      "short" : "signeringsTidpunkt",
      "definition" : "signeringsTidpunkt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient",
      "short" : "patientType",
      "definition" : "patient",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id",
      "short" : "II",
      "definition" : "Personnummer eller samordningsnummer. o.i.d för personnummer är 1.2.752.129.2.1.3.1. o.i.d för samordningsnummer är 1.2.752.129.2.1.3.3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.root",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.root",
      "short" : "root",
      "definition" : "root (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.extension",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.extension",
      "short" : "extension",
      "definition" : "extension (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.identifierName",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.person-id.identifierName",
      "short" : "identifierName",
      "definition" : "identifierName (XML-attribut)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.fullstandigtNamn",
      "path" : "findallanswers.answers.answer.Answer.lakarutlatande.patient.fullstandigtNamn",
      "short" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "definition" : "Förnamn + efternamn sammanslaget. Är tomt om personen har en skyddad identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.id",
      "path" : "findallanswers.answers.answer.id",
      "short" : "id",
      "definition" : "id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "findallanswers.answers.answer.receivedDate",
      "path" : "findallanswers.answers.answer.receivedDate",
      "short" : "receivedDate",
      "definition" : "receivedDate",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
