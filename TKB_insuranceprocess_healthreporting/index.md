# Hem - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* **Hem**

## Hem

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/insuranceprocess-healthreporting/ImplementationGuide/inera.insuranceprocess-healthreporting | *Version*:3.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:insuranceprocesshealthreporting |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# insuranceprocess: healthreporting

## Översikt

FHIR Implementation Guide för tjänstedomänen **insuranceprocess: healthreporting** version 3.1.0. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:

| | | |
| :--- | :--- | :--- |
| [RegisterMedicalCertificate](7-tjanstekontrakt.md#registermedicalcertificate) | 3.1 | Skicka ett komplett läkarintyg med informationsmängden enligt blankett FK7263 |
| [ReceiveMedicalCertificateQuestion](7-tjanstekontrakt.md#receivemedicalcertificatequestion) | 1.0 | Ta emot en fråga om ett läkarintyg |
| [ReceiveMedicalCertificateAnswer](7-tjanstekontrakt.md#receivemedicalcertificateanswer) | 1.0 | Ta emot ett svar på en fråga om ett läkarintyg |
| [SendMedicalCertificateQuestion](7-tjanstekontrakt.md#sendmedicalcertificatequestion) | 1.0 | Skicka en fråga om ett läkarintyg |
| [SendMedicalCertificateAnswer](7-tjanstekontrakt.md#sendmedicalcertificateanswer) | 1.0 | Skicka ett svar på en fråga om ett läkarintyg |
| [FindAllQuestions](7-tjanstekontrakt.md#findallquestions) | 1.0 | Söka bland frågor om läkarintyg |
| [FindAllAnswers](7-tjanstekontrakt.md#findallanswers) | 1.0 | Söka bland svar på frågor om läkarintyg |
| [DeleteQuestions](7-tjanstekontrakt.md#deletequestions) | 1.0 | Ta bort frågor om ett läkarintyg |
| [DeleteAnswers](7-tjanstekontrakt.md#deleteanswers) | 1.0 | Ta bort svar på frågor om ett läkarintyg |
| [RevokeMedicalCertificate](7-tjanstekontrakt.md#revokemedicalcertificate) | 1.0 | Makulera ett läkarintyg |
| [SendMedicalCertificate](7-tjanstekontrakt.md#sendmedicalcertificate) | 1.0 | Skicka ett läkarintyg |
| [ListCertificates](7-tjanstekontrakt.md#listcertificates) | 1.0 | Lista läkarintyg |
| [GetCertificate](7-tjanstekontrakt.md#getcertificate) | 1.0 | Hämta ett specifikt läkarintyg |
| [SetCertificateStatus](7-tjanstekontrakt.md#setcertificatestatus) | 1.0 | Sätta status på ett läkarintyg |

## Innehåll

* [1 Inledning](1-inledning.md)
* [2 Versionsinformation](2-versionsinformation.md)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.md)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.md)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.md)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.md)
* [7 Tjänstekontrakt](7-tjanstekontrakt.md)
* [Artefakter](artifacts.md)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inera.insuranceprocess-healthreporting",
  "url" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/ImplementationGuide/inera.insuranceprocess-healthreporting",
  "version" : "3.1.0",
  "name" : "insuranceprocesshealthreporting",
  "title" : "insuranceprocess: healthreporting",
  "status" : "draft",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.insuranceprocess-healthreporting",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.3.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/vardkontakttyp-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/referenstyp-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/aktivitetskod-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/nedsattningsgrad-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/typavutlatande-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/amne-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/status-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2024+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "draft"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "show-inherited-invariants"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/vardkontakttyp-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/referenstyp-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/aktivitetskod-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/nedsattningsgrad-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/typavutlatande-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/amne-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "special-url"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/CodeSystem/status-cs"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/ig/insuranceprocess-healthreporting/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-aktivitetskod-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/aktivitetskod-cs"
      },
      "name" : "Aktivitetskod",
      "description" : "Kodverk för aktivitetskoder i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-aktivitetskod-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/aktivitetskod-vs"
      },
      "name" : "Aktivitetskod — ValueSet",
      "description" : "Tillåtna värden för aktivitetskod i RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-amne-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/amne-cs"
      },
      "name" : "Amne",
      "description" : "Kodverk för ämne i fråge/svar-interaktionerna i tjänstedomänen insuranceprocess:healthreporting.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-amne-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/amne-vs"
      },
      "name" : "Amne — ValueSet",
      "description" : "Tillåtna värden för ämne i fråge/svar-interaktionerna.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deleteanswers.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deleteanswers"
      },
      "name" : "DeleteAnswers",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deleteanswers-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deleteanswers-request"
      },
      "name" : "DeleteAnswers — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteAnswers:1).\nTar bort svar som mellanlagrats av vården och tidigare hämtats via FindAllAnswers.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deletequestions.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deletequestions"
      },
      "name" : "DeleteQuestions",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet DeleteQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deletequestions-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deletequestions-request"
      },
      "name" : "DeleteQuestions — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet DeleteQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:DeleteQuestions:1).\nTar bort frågor som mellanlagrats av vården och tidigare hämtats via FindAllQuestions.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-findallanswers.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/findallanswers"
      },
      "name" : "FindAllAnswers",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-findallanswers-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/findallanswers-request"
      },
      "name" : "FindAllAnswers — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllAnswers\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllAnswers:1).\nReturnerar svar från FK på tidigare skickade frågor från vården.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-findallquestions.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/findallquestions"
      },
      "name" : "FindAllQuestions",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-findallquestions-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/findallquestions-request"
      },
      "name" : "FindAllQuestions — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet FindAllQuestions\n(RIV-TA urn:riv:insuranceprocess:healthreporting:FindAllQuestions:1).\nReturnerar frågor från FK som mellanlagrats av vården.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getcertificate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getcertificate"
      },
      "name" : "GetCertificate",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getcertificate-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getcertificate-request"
      },
      "name" : "GetCertificate — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet GetCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:GetCertificate:1).\nHämtar ett specifikt läkarintyg från intygstjänsten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-listcertificates.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/listcertificates"
      },
      "name" : "ListCertificates",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-listcertificates-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/listcertificates-request"
      },
      "name" : "ListCertificates — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet ListCertificates\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ListCertificates:1).\nBegär en lista av registrerade läkarintyg från intygstjänsten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-nedsattningsgrad-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/nedsattningsgrad-cs"
      },
      "name" : "Nedsattningsgrad",
      "description" : "Kodverk för grad av arbetsförmågenedsättning i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263 Fält 8b).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-nedsattningsgrad-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/nedsattningsgrad-vs"
      },
      "name" : "Nedsattningsgrad — ValueSet",
      "description" : "Tillåtna värden för grad av arbetsförmågenedsättning i RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-receivemedicalcertificateanswer.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/receivemedicalcertificateanswer"
      },
      "name" : "ReceiveMedicalCertificateAnswer",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-receivemedicalcertificateanswer-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/receivemedicalcertificateanswer-request"
      },
      "name" : "ReceiveMedicalCertificateAnswer — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateAnswer:1).\nTar emot svar från Försäkringskassan på en tidigare skickad fråga från vården.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-receivemedicalcertificatequestion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/receivemedicalcertificatequestion"
      },
      "name" : "ReceiveMedicalCertificateQuestion",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet ReceiveMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-receivemedicalcertificatequestion-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/receivemedicalcertificatequestion-request"
      },
      "name" : "ReceiveMedicalCertificateQuestion — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet ReceiveMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:ReceiveMedicalCertificateQuestion:1).\nTar emot frågor från Försäkringskassan för ett läkarintyg.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-referenstyp-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/referenstyp-cs"
      },
      "name" : "Referenstyp",
      "description" : "Kodverk för typ av referens i tjänstekontraktet RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-referenstyp-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/referenstyp-vs"
      },
      "name" : "Referenstyp — ValueSet",
      "description" : "Tillåtna värden för typ av referens i RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registermedicalcertificate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registermedicalcertificate"
      },
      "name" : "RegisterMedicalCertificate",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registermedicalcertificate-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registermedicalcertificate-request"
      },
      "name" : "RegisterMedicalCertificate — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet RegisterMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RegisterMedicalCertificate:3).\nSkickar ett komplett läkarintyg FK7263.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-revokemedicalcertificate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/revokemedicalcertificate"
      },
      "name" : "RevokeMedicalCertificate",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-revokemedicalcertificate-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/revokemedicalcertificate-request"
      },
      "name" : "RevokeMedicalCertificate — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet RevokeMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:RevokeMedicalCertificate:1).\nSkickar ett meddelande om rättelse av ett tidigare inskickat läkarintyg.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificate.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificate"
      },
      "name" : "SendMedicalCertificate",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificate-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificate-request"
      },
      "name" : "SendMedicalCertificate — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificate\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificate:1).\nSkickar ett meddelande om att ett läkarintyg skall skickas vidare till FK.\nLäkarintyget är tidigare insänt via RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificateanswer.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificateanswer"
      },
      "name" : "SendMedicalCertificateAnswer",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificateanswer-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificateanswer-request"
      },
      "name" : "SendMedicalCertificateAnswer — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateAnswer\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateAnswer:1).\nSkickar ett svar till Försäkringskassan på en tidigare mottagen fråga.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificatequestion.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificatequestion"
      },
      "name" : "SendMedicalCertificateQuestion",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-sendmedicalcertificatequestion-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/sendmedicalcertificatequestion-request"
      },
      "name" : "SendMedicalCertificateQuestion — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet SendMedicalCertificateQuestion\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SendMedicalCertificateQuestion:1).\nSkickar en fråga till Försäkringskassan för ett läkarintyg.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-setcertificatestatus.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/setcertificatestatus"
      },
      "name" : "SetCertificateStatus",
      "description" : "Logisk modell för responsens informationsstruktur i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-setcertificatestatus-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/setcertificatestatus-request"
      },
      "name" : "SetCertificateStatus — Request",
      "description" : "Logisk modell för requestparametrar i tjänstekontraktet SetCertificateStatus\n(RIV-TA urn:riv:insuranceprocess:healthreporting:SetCertificateStatus:1).\nSätter status för ett registrerat läkarintyg i intygstjänsten.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-status-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/status-cs"
      },
      "name" : "Status",
      "description" : "Kodverk för statustyp för läkarintyg i tjänstekontrakten ListCertificates och SetCertificateStatus.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-status-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/status-vs"
      },
      "name" : "Status — ValueSet",
      "description" : "Tillåtna värden för statustyp för läkarintyg.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-vardkontakttyp-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/vardkontakttyp-cs"
      },
      "name" : "Vardkontakttyp",
      "description" : "Kodverk för typ av vårdkontakt i tjänstekontraktet RegisterMedicalCertificate.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-vardkontakttyp-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/vardkontakttyp-vs"
      },
      "name" : "Vardkontakttyp — ValueSet",
      "description" : "Tillåtna värden för typ av vårdkontakt i RegisterMedicalCertificate.",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Hem",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "1-inledning.html"
        }],
        "nameUrl" : "1-inledning.html",
        "title" : "1 Inledning",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "2-versionsinformation.html"
        }],
        "nameUrl" : "2-versionsinformation.html",
        "title" : "2 Versionsinformation",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "3-tjanstedomanens-arkitektur.html"
        }],
        "nameUrl" : "3-tjanstedomanens-arkitektur.html",
        "title" : "3 Tjänstedomänens arkitektur",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "4-tjanstedomanens-krav-och-regler.html"
        }],
        "nameUrl" : "4-tjanstedomanens-krav-och-regler.html",
        "title" : "4 Tjänstedomänens krav och regler",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "5-tjanstedomanens-meddelandemodeller.html"
        }],
        "nameUrl" : "5-tjanstedomanens-meddelandemodeller.html",
        "title" : "5 Tjänstedomänens meddelandemodeller",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "6-gemensamma-informationskomponenter.html"
        }],
        "nameUrl" : "6-gemensamma-informationskomponenter.html",
        "title" : "6 Gemensamma informationskomponenter",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "7-tjanstekontrakt.html"
        }],
        "nameUrl" : "7-tjanstekontrakt.html",
        "title" : "7 Tjänstekontrakt",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
