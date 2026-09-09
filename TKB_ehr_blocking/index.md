# Hem - ehr: blocking — Spärrhantering v3.2.2

* [**Table of Contents**](toc.md)
* **Hem**

## Hem

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-blocking/ImplementationGuide/inera.ehr-blocking | *Version*:3.2.2 |
| Draft as of 2026-09-09 | *Computable Name*:ehrblocking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# ehr: blocking — Spärrhantering

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: blocking** (Spärrhantering) version 3.2.2. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar spärrhantering för vårdgivare som behöver registrera spärr av uppgifter på patientens begäran enligt Patientdatalagens regleringar samt att utföra kontroll mot spärr i vårdsystemen.

RIV-TA namnrymd: `urn:riv:ehr:blocking`

## Tjänstekontrakt

Domänen innehåller följande tjänstekontrakt, organiserade i fyra underdomäner:

### Querying — Frågetjänster

| | | |
| :--- | :--- | :--- |
| [GetAllBlocks](7-tjanstekontrakt.md#getallblocks) | 2.0 | Läs alla spärrar (nationell nivå) |
| [GetAllBlocksForPatient](7-tjanstekontrakt.md#getallblocksforpatient) | 2.0 | Läs alla spärrar för en patient |
| [GetBlocks](7-tjanstekontrakt.md#getblocks) | 2.0 | Läs spärrar för en vårdgivare |
| [GetBlocksForPatient](7-tjanstekontrakt.md#getblocksforpatient) | 2.0 | Läs spärrar för patient och vårdgivare |

### Accesscontrol — Spärrkontroll

| | | |
| :--- | :--- | :--- |
| [CheckBlocks](7-tjanstekontrakt.md#checkblocks) | 3.0 | Kontrollera om spärr finns för given personal/vårdenhet |

### Synchronization — Replikering till nationell tjänst

| | | |
| :--- | :--- | :--- |
| [RegisterBlock](7-tjanstekontrakt.md#registerblock) | 2.0 | Registrera spärr i nationell spärrtjänst |
| [UnregisterBlock](7-tjanstekontrakt.md#unregisterblock) | 2.0 | Avregistrera spärr från nationell spärrtjänst |
| [RegisterTemporaryRevoke](7-tjanstekontrakt.md#registertemporaryrevoke) | 2.0 | Registrera tillfällig hävning |
| [UnregisterTemporaryRevoke](7-tjanstekontrakt.md#unregistertemporaryrevoke) | 2.0 | Avregistrera tillfällig hävning |

### Administration — Lokal spärradministration

| | | |
| :--- | :--- | :--- |
| [GetPatientIds](7-tjanstekontrakt.md#getpatientids) | 2.0 | Läs patient-ID för spärrade patienter |
| [GetExtendedBlocksForPatient](7-tjanstekontrakt.md#getextendedblockforpatient) | 2.0 | Läs utökade spärrar för patient |
| [RegisterExtendedBlock](7-tjanstekontrakt.md#registerextendedblock) | 2.0 | Registrera utökad spärr |
| [RevokeExtendedBlock](7-tjanstekontrakt.md#revokeextendedblock) | 2.0 | Häv spärr permanent |
| [DeleteExtendedBlock](7-tjanstekontrakt.md#deleteextendedblock) | 2.0 | Makulera spärr |
| [RegisterTemporaryExtendedRevoke](7-tjanstekontrakt.md#registertemporaryextendedrevoke) | 2.0 | Registrera tillfällig hävning (utökad) |
| [CancelTemporaryExtendedRevoke](7-tjanstekontrakt.md#canceltemporaryextendedrevoke) | 2.0 | Återkalla tillfällig hävning |

## Innehåll

* [1 Inledning](1-inledning.md)
* [2 Generella regler](2-generella-regler.md)
* [7 Tjänstekontrakt](7-tjanstekontrakt.md)
* [Artefakter](artifacts.md)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inera.ehr-blocking",
  "url" : "https://fhir.inera.se/ig/ehr-blocking/ImplementationGuide/inera.ehr-blocking",
  "version" : "3.2.2",
  "name" : "ehrblocking",
  "title" : "ehr: blocking — Spärrhantering",
  "status" : "draft",
  "date" : "2026-09-09T16:51:42+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.ehr-blocking",
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
        "valueString" : "https://fhir.inera.se/CodeSystem/resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/blocktype-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/temporaryrevokereason-cs"
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
        "valueString" : "https://fhir.inera.se/ig/ehr-blocking/history.html"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/blocktype-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/temporaryrevokereason-cs"
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
        "valueString" : "https://fhir.inera.se/ig/ehr-blocking/history.html"
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
        "valueUri" : "CodeSystem-blocktype-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/blocktype-cs"
      },
      "name" : "BlockType",
      "description" : "Typ av spärr enligt urn:riv:ehr:blocking:2. Anger om spärren gäller inom en vårdenhet (inre) eller inom hela vårdgivaren (yttre).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-blocktype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/blocktype-vs"
      },
      "name" : "BlockType — ValueSet",
      "description" : "Tillåtna värden för typ av spärr.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-checkblocks.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/checkblocks"
      },
      "name" : "CheckBlocks",
      "description" : "Logisk modell för tjänstekontraktet CheckBlocks\n(RIV-TA urn:riv:ehr:blocking:accesscontrol:CheckBlocksResponder:3).\nKontrollerar om spärr finns relativ viss personal/vårdenhet och information.\nVersion 3 validerar informationsresurserna separat och kan ge individuella felkoder per resurs.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-checkblocks-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/checkblocks-request"
      },
      "name" : "CheckBlocks — Request",
      "description" : "Logisk modell för requestparametrar i CheckBlocks v3.0.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deleteextendedblock.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deleteextendedblock"
      },
      "name" : "DeleteExtendedBlock",
      "description" : "Logisk modell för tjänstekontraktet DeleteExtendedBlock\n(RIV-TA urn:riv:ehr:blocking:administration:DeleteExtendedBlockResponder:2).\nMakulerar (tar bort) en spärr i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-deleteextendedblock-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/deleteextendedblock-request"
      },
      "name" : "DeleteExtendedBlock — Request",
      "description" : "Logisk modell för requestparametrar i DeleteExtendedBlock.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getallblocks.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getallblocks"
      },
      "name" : "GetAllBlocks",
      "description" : "Logisk modell för tjänstekontraktet GetAllBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksResponder:2).\nLäser alla nationellt kända/lagrade spärrar. Representerar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getallblocks-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getallblocks-request"
      },
      "name" : "GetAllBlocks — Request",
      "description" : "Logisk modell för requestparametrar i GetAllBlocks.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getallblocksforpatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getallblocksforpatient"
      },
      "name" : "GetAllBlocksForPatient",
      "description" : "Logisk modell för tjänstekontraktet GetAllBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:querying:GetAllBlocksForPatientResponder:2).\nLäser alla nationellt kända/lagrade spärrar för en viss patient.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getallblocksforpatient-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getallblocksforpatient-request"
      },
      "name" : "GetAllBlocksForPatient — Request",
      "description" : "Logisk modell för requestparametrar i GetAllBlocksForPatient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getblocks.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getblocks"
      },
      "name" : "GetBlocks",
      "description" : "Logisk modell för tjänstekontraktet GetBlocks\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksResponder:2).\nLäser alla registrerade spärrar för en viss organisation (lokal nivå).\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getblocks-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getblocks-request"
      },
      "name" : "GetBlocks — Request",
      "description" : "Logisk modell för requestparametrar i GetBlocks.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getblocksforpatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getblocksforpatient"
      },
      "name" : "GetBlocksForPatient",
      "description" : "Logisk modell för tjänstekontraktet GetBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:querying:GetBlocksForPatientResponder:2).\nLäser alla spärrar för en viss patient och organisation (lokal nivå).\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getblocksforpatient-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getblocksforpatient-request"
      },
      "name" : "GetBlocksForPatient — Request",
      "description" : "Logisk modell för requestparametrar i GetBlocksForPatient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getextendedblockforpatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getextendedblockforpatient"
      },
      "name" : "GetExtendedBlocksForPatient",
      "description" : "Logisk modell för tjänstekontraktet GetExtendedBlocksForPatient\n(RIV-TA urn:riv:ehr:blocking:administration:GetExtendedBlocksForPatientResponder:2).\nLäser spärrar för en viss patient med utökad information inklusive aktörsinformation,\nhistorik och makulerade spärrar. Representerar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getextendedblockforpatient-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getextendedblockforpatient-request"
      },
      "name" : "GetExtendedBlocksForPatient — Request",
      "description" : "Logisk modell för requestparametrar i GetExtendedBlocksForPatient.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpatientids.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpatientids"
      },
      "name" : "GetPatientIds",
      "description" : "Logisk modell för tjänstekontraktet GetPatientIds\n(RIV-TA urn:riv:ehr:blocking:administration:GetPatientIdsResponder:2).\nLäser alla patienter med minst en aktiv spärr för en viss organisation.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpatientids-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpatientids-request"
      },
      "name" : "GetPatientIds — Request",
      "description" : "Logisk modell för requestparametrar i GetPatientIds.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registerblock.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registerblock"
      },
      "name" : "RegisterBlock",
      "description" : "Logisk modell för tjänstekontraktet RegisterBlock\n(RIV-TA urn:riv:ehr:blocking:synchronization:RegisterBlockResponder:2).\nRegistrerar en grundläggande spärr i nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registerblock-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registerblock-request"
      },
      "name" : "RegisterBlock — Request",
      "description" : "Logisk modell för requestparametrar i RegisterBlock.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registerextendedblock.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registerextendedblock"
      },
      "name" : "RegisterExtendedBlock",
      "description" : "Logisk modell för tjänstekontraktet RegisterExtendedBlock\n(RIV-TA urn:riv:ehr:blocking:administration:RegisterExtendedBlockResponder:2).\nRegistrerar en spärr med utökad information (aktörsdata, tidsstämplar m.m.) i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registerextendedblock-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registerextendedblock-request"
      },
      "name" : "RegisterExtendedBlock — Request",
      "description" : "Logisk modell för requestparametrar i RegisterExtendedBlock.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registertemporaryextendedrevoke.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registertemporaryextendedrevoke"
      },
      "name" : "RegisterTemporaryExtendedRevoke",
      "description" : "Logisk modell för tjänstekontraktet RegisterTemporaryExtendedRevoke\n(RIV-TA urn:riv:ehr:blocking:administration:RegisterTemporaryExtendedRevokeResponder:2).\nRegistrerar en tillfällig hävning med utökad information i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registertemporaryrevoke.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registertemporaryrevoke"
      },
      "name" : "RegisterTemporaryRevoke",
      "description" : "Logisk modell för tjänstekontraktet RegisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:RegisterTemporaryRevokeResponder:2).\nRegistrerar en tillfällig hävning av en spärr i nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registertemporaryrevoke-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registertemporaryrevoke-request"
      },
      "name" : "RegisterTemporaryRevoke — Request",
      "description" : "Logisk modell för requestparametrar i RegisterTemporaryRevoke.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-resultcode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/resultcode-cs"
      },
      "name" : "ResultCode",
      "description" : "Svarskoder för spärrtjänsternas operationer enligt urn:riv:ehr:blocking:2. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-resultcode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/resultcode-vs"
      },
      "name" : "ResultCode — ValueSet",
      "description" : "Tillåtna svarskoder för spärrtjänsternas operationer.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-revokeextendedblock.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/revokeextendedblock"
      },
      "name" : "RevokeExtendedBlock",
      "description" : "Logisk modell för tjänstekontraktet RevokeExtendedBlock\n(RIV-TA urn:riv:ehr:blocking:administration:RevokeExtendedBlockResponder:2).\nHäver en spärr permanent i lokal spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-revokeextendedblock-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/revokeextendedblock-request"
      },
      "name" : "RevokeExtendedBlock — Request",
      "description" : "Logisk modell för requestparametrar i RevokeExtendedBlock.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-temporaryrevokereason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/temporaryrevokereason-cs"
      },
      "name" : "TemporaryRevokeReason",
      "description" : "Orsak till tillfällig hävning av spärr enligt urn:riv:ehr:blocking:2.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-temporaryrevokereason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/temporaryrevokereason-vs"
      },
      "name" : "TemporaryRevokeReason — ValueSet",
      "description" : "Tillåtna orsaker för tillfällig hävning av spärr.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unregisterblock.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unregisterblock"
      },
      "name" : "UnregisterBlock",
      "description" : "Logisk modell för tjänstekontraktet UnregisterBlock\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterBlockResponder:2).\nAvregistrerar en spärr från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unregisterblock-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unregisterblock-request"
      },
      "name" : "UnregisterBlock — Request",
      "description" : "Logisk modell för requestparametrar i UnregisterBlock.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unregistertemporaryrevoke.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unregistertemporaryrevoke"
      },
      "name" : "UnregisterTemporaryRevoke",
      "description" : "Logisk modell för tjänstekontraktet UnregisterTemporaryRevoke\n(RIV-TA urn:riv:ehr:blocking:synchronization:UnregisterTemporaryRevokeResponder:2).\nAvregistrerar en tillfällig hävning från nationell spärrtjänst.\nRepresenterar responsens informationsstruktur.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unregistertemporaryrevoke-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unregistertemporaryrevoke-request"
      },
      "name" : "UnregisterTemporaryRevoke — Request",
      "description" : "Logisk modell för requestparametrar i UnregisterTemporaryRevoke.",
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
          "valueUrl" : "2-generella-regler.html"
        }],
        "nameUrl" : "2-generella-regler.html",
        "title" : "2 Generella regler",
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
