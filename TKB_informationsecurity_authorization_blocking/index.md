# Hem - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* **Hem**

## Hem

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ImplementationGuide/inera.informationsecurity-authorization-blocking | *Version*:4.0.4 |
| Active as of 2026-10-08 | *Computable Name*:informationsecurityauthorizationblocking |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# informationsecurity: authorization: blocking

**TKB-version:** 4.0.4 · **IG-version:** 4.0.4 · **Källa:** Bitbucket-tagg `4.0.4` 

## Översikt

FHIR Implementation Guide för tjänstedomänen **informationsecurity: authorization: blocking** (Spärrtjänst) version 4.0.4. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 4.0.4 (2024-10-18), och domänens WSDL- och XSD-filer (tagg 4.0.4).

Domänen hanterar patienters spärrar mot direktåtkomst till journalinformation enligt patientdatalagen: registrering, hävning (permanent eller tillfällig), makulering, replikering till den nationella spärrtjänsten och kontroll av om information är spärrad.

Domänen innehåller följande tjänstekontrakt:

| | | |
| :--- | :--- | :--- |
| [GetBlocks](7-tjanstekontrakt.md#getblocks) | 4.0 | Tjänst som hämtar registrerade spärrar för en patient och/eller vårdgivare. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns. |
| [GetExtendedBlocksForPatient](7-tjanstekontrakt.md#getextendedblocksforpatient) | 4.0 | Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns. |
| [GetPatientIds](7-tjanstekontrakt.md#getpatientids) | 4.0 | Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras. |
| [CheckBlocks](7-tjanstekontrakt.md#checkblocks) | 4.0 | Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som gäller mot andra vårdgivare/vårdenheter som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad. |
| [RegisterBlock](7-tjanstekontrakt.md#registerblock) | 4.0 | Tjänst som registrerar en ny spärr i den nationella spärrtjänsten (den aggregerade/replikerade spärrinformationen). |
| [UnregisterBlock](7-tjanstekontrakt.md#unregisterblock) | 4.0 | Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns. |
| [RegisterTemporaryRevoke](7-tjanstekontrakt.md#registertemporaryrevoke) | 4.0 | Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns. |
| [UnregisterTemporaryRevoke](7-tjanstekontrakt.md#unregistertemporaryrevoke) | 4.0 | Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns. |
| [RegisterExtendedBlock](7-tjanstekontrakt.md#registerextendedblock) | 4.0 | Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten. |
| [RevokeExtendedBlock](7-tjanstekontrakt.md#revokeextendedblock) | 4.0 | Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas. |
| [DeleteExtendedBlock](7-tjanstekontrakt.md#deleteextendedblock) | 4.0 | Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas. |
| [RegisterTemporaryExtendedRevoke](7-tjanstekontrakt.md#registertemporaryextendedrevoke) | 4.0 | Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal). |
| [CancelTemporaryExtendedRevoke](7-tjanstekontrakt.md#canceltemporaryextendedrevoke) | 4.0 | Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas. |

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
  "id" : "inera.informationsecurity-authorization-blocking",
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/ImplementationGuide/inera.informationsecurity-authorization-blocking",
  "version" : "4.0.4",
  "name" : "informationsecurityauthorizationblocking",
  "title" : "informationsecurity: authorization: blocking",
  "status" : "active",
  "date" : "2026-10-08T18:28:59+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.informationsecurity-authorization-blocking",
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
    "version" : "7.4.0"
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
        "valueString" : "release"
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
        "valueString" : "false"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-blocktype-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-checkstatus-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-temporaryrevokereason-cs"
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
        "valueString" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/history.html"
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
        "valueString" : "release"
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
        "valueString" : "false"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-blocktype-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-checkstatus-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/authorization-blocking-temporaryrevokereason-cs"
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
        "valueString" : "https://fhir.inera.se/ig/informationsecurity-authorization-blocking/history.html"
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
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-authorization-blocking-blocktype-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/authorization-blocking-blocktype-vs"
      },
      "name" : "BlockType",
      "description" : "Alla koder i BlockTypeCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-authorization-blocking-blocktype-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/authorization-blocking-blocktype-cs"
      },
      "name" : "BlockType",
      "description" : "Koder för BlockTypeType i domänschemat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-canceltemporaryextendedrevoke-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/canceltemporaryextendedrevoke-request"
      },
      "name" : "CancelTemporaryExtendedRevoke — Request",
      "description" : "Logisk modell för begäran i CancelTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-canceltemporaryextendedrevoke.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/canceltemporaryextendedrevoke"
      },
      "name" : "CancelTemporaryExtendedRevoke — Response",
      "description" : "Logisk modell för svaret i CancelTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4, CancelTemporaryExtendedRevokeResponseType).",
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
      "description" : "Logisk modell för begäran i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "CheckBlocks — Response",
      "description" : "Logisk modell för svaret i CheckBlocks\n(urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4, CheckBlocksResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-authorization-blocking-checkstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/authorization-blocking-checkstatus-vs"
      },
      "name" : "CheckStatus",
      "description" : "Alla koder i CheckStatusCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-authorization-blocking-checkstatus-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/authorization-blocking-checkstatus-cs"
      },
      "name" : "CheckStatus",
      "description" : "Koder för CheckStatusType i domänschemat.",
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
      "description" : "Logisk modell för begäran i DeleteExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlockResponder:4, DeleteExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "DeleteExtendedBlock — Response",
      "description" : "Logisk modell för svaret i DeleteExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlockResponder:4, DeleteExtendedBlockResponseType).",
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
      "description" : "Logisk modell för begäran i GetBlocks\n(urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "GetBlocks — Response",
      "description" : "Logisk modell för svaret i GetBlocks\n(urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4, GetBlocksResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getextendedblocksforpatient-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getextendedblocksforpatient-request"
      },
      "name" : "GetExtendedBlocksForPatient — Request",
      "description" : "Logisk modell för begäran i GetExtendedBlocksForPatient\n(urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getextendedblocksforpatient.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getextendedblocksforpatient"
      },
      "name" : "GetExtendedBlocksForPatient — Response",
      "description" : "Logisk modell för svaret i GetExtendedBlocksForPatient\n(urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4, GetExtendedBlocksForPatientResponseType).",
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
      "description" : "Logisk modell för begäran i GetPatientIds\n(urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "GetPatientIds — Response",
      "description" : "Logisk modell för svaret i GetPatientIds\n(urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4, GetPatientIdsResponseType).",
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
      "description" : "Logisk modell för begäran i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "RegisterBlock — Response",
      "description" : "Logisk modell för svaret i RegisterBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4, RegisterBlockResponseType).",
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
      "description" : "Logisk modell för begäran i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "RegisterExtendedBlock — Response",
      "description" : "Logisk modell för svaret i RegisterExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4, RegisterExtendedBlockResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-registertemporaryextendedrevoke-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/registertemporaryextendedrevoke-request"
      },
      "name" : "RegisterTemporaryExtendedRevoke — Request",
      "description" : "Logisk modell för begäran i RegisterTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevokeResponder:4, RegisterTemporaryExtendedRevokeType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "RegisterTemporaryExtendedRevoke — Response",
      "description" : "Logisk modell för svaret i RegisterTemporaryExtendedRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevokeResponder:4, RegisterTemporaryExtendedRevokeResponseType).",
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
      "description" : "Logisk modell för begäran i RegisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "RegisterTemporaryRevoke — Response",
      "description" : "Logisk modell för svaret i RegisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4, RegisterTemporaryRevokeResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-authorization-blocking-resultcode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/authorization-blocking-resultcode-vs"
      },
      "name" : "ResultCode",
      "description" : "Alla koder i ResultCodeCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-authorization-blocking-resultcode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/authorization-blocking-resultcode-cs"
      },
      "name" : "ResultCode",
      "description" : "Koder för ResultCodeType i domänschemat.",
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
      "description" : "Logisk modell för begäran i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "RevokeExtendedBlock — Response",
      "description" : "Logisk modell för svaret i RevokeExtendedBlock\n(urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4, RevokeExtendedBlockResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-authorization-blocking-temporaryrevokereason-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/authorization-blocking-temporaryrevokereason-vs"
      },
      "name" : "TemporaryRevokeReason",
      "description" : "Alla koder i TemporaryRevokeReasonCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-authorization-blocking-temporaryrevokereason-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/authorization-blocking-temporaryrevokereason-cs"
      },
      "name" : "TemporaryRevokeReason",
      "description" : "Koder för TemporaryRevokeReasonType i domänschemat.",
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
      "description" : "Logisk modell för begäran i UnregisterBlock\n(urn:riv:informationsecurity:authorization:blocking:UnregisterBlockResponder:4, UnregisterBlockType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "UnregisterBlock — Response",
      "description" : "Logisk modell för svaret i UnregisterBlock\n(urn:riv:informationsecurity:authorization:blocking:UnregisterBlockResponder:4, UnregisterBlockResponseType).",
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
      "description" : "Logisk modell för begäran i UnregisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeType), inklusive SOAP-huvuden enligt WSDL.",
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
      "name" : "UnregisterTemporaryRevoke — Response",
      "description" : "Logisk modell för svaret i UnregisterTemporaryRevoke\n(urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4, UnregisterTemporaryRevokeResponseType).",
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
