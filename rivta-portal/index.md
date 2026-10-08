# Start - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* **Start**

## Start

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-portal/ImplementationGuide/inera.rivta-portal | *Version*:0.1.0 |
| Draft as of 2026-10-08 | *Computable Name*:RivtaPortal |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

Denna webbplats samlar regelverket för RIV Tekniska Anvisningar (RIV-TA): tjänstedomäner, tjänstekontrakt, arkitekturella dokument, nyheter och vanliga frågor. Varje tjänstedomän länkar dessutom till sin FHIR Implementation Guide, där hela tjänstekontraktsbeskrivningen (TKB) finns som webbsidor tillsammans med logiska FHIR-modeller.

### Innehåll

| | |
| :--- | :--- |
| [Tjänstedomäner](tjanstedomaner.md) | 77 tjänstedomäner, varav 70 med FHIR IG |
| [Tjänstekontrakt](tjanstekontrakt.md) | 515 tjänstekontrakt (en rad per huvudversion) |
| [Dokument](dokument.md) | Referensarkitekturer, RIV Tekniska anvisningar, mallar och presentationer |
| [Aktuellt](aktuellt.md) | Nyheter och arkiv sedan 2014, även som[RSS](rss.xml) |
| [Utveckling](utveckling.md) | Anvisningar, mallar och verktyg för tjänstekontrakt, e-tjänster och tjänsteplattform |
| [FAQ](faq.md) | Vanliga frågor och svar |
| [Byggstatus](https://oskthu2.github.io/tkb-converter/index.html) | Kvalitetsrapport för alla FHIR IG:ar |

### Senaste nyheterna

* 2026-06-08 — [RIV-TA Refererade bilagor](aktuellt.md#nyhet-2026-06-08-riv-ta-refererade-bilagor)
* 2026-06-08 — [RIV-TA Basic Profile 2.1, version 3.1, samt RIV-TA Tjänsteplattform, version 2.1 har publicerats](aktuellt.md#nyhet-2026-06-08-riv-ta-basic-profile-2-1-version-3-1-sam)
* 2026-05-11 — [RIV-TA Konfigurationsstyrning tjänstedomäner](aktuellt.md#nyhet-2026-05-11-riv-ta-konfigurationsstyrning-tjanstedom)
* 2026-01-30 — [Behörighetsmodell för vård och omsorg](aktuellt.md#nyhet-2026-01-30-behorighetsmodell-for-vard-och-omsorg)
* 2025-08-11 — [RIV Tekniska Anvisningar - Översikt](aktuellt.md#nyhet-2025-08-11-riv-tekniska-anvisningar-oversikt)

Den gemensamma arkitekturen utvecklas och förvaltas av [Inera](https://www.inera.se/).



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inera.rivta-portal",
  "url" : "https://fhir.inera.se/ig/rivta-portal/ImplementationGuide/inera.rivta-portal",
  "version" : "0.1.0",
  "name" : "RivtaPortal",
  "title" : "RIV Tekniska Anvisningar — tjänstedomäner och regelverk",
  "status" : "draft",
  "date" : "2026-10-08T18:59:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.rivta-portal",
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
        "valueString" : "2026+"
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
        "valueString" : "https://fhir.inera.se/ig/rivta-portal/history.html"
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
        "valueString" : "2026+"
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
        "valueString" : "https://fhir.inera.se/ig/rivta-portal/history.html"
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
        "title" : "Start",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "tjanstedomaner.html"
        }],
        "nameUrl" : "tjanstedomaner.html",
        "title" : "Tjänstedomäner",
        "generation" : "markdown",
        "page" : [{
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-cgi-healthcare-efrikort.html"
          }],
          "nameUrl" : "doman-cgi-healthcare-efrikort.html",
          "title" : "cgi:healthcare:efrikort",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activity-actions.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activity-actions.html",
          "title" : "clinicalprocess:activity:actions",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activity-order.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activity-order.html",
          "title" : "clinicalprocess:activity:order",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activity-request.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activity-request.html",
          "title" : "clinicalprocess:activity:request",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activityprescription-actoutcome.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activityprescription-actoutcome.html",
          "title" : "clinicalprocess:activityprescription:actoutcome",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activityprescription-logistics.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activityprescription-logistics.html",
          "title" : "clinicalprocess:activityprescription:logistics",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-activityprescription-prescribe.html"
          }],
          "nameUrl" : "doman-clinicalprocess-activityprescription-prescribe.html",
          "title" : "clinicalprocess:activityprescription:prescribe",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-healthcond-actoutcome.html"
          }],
          "nameUrl" : "doman-clinicalprocess-healthcond-actoutcome.html",
          "title" : "clinicalprocess:healthcond:actoutcome",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-healthcond-basic.html"
          }],
          "nameUrl" : "doman-clinicalprocess-healthcond-basic.html",
          "title" : "clinicalprocess:healthcond:basic",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-healthcond-certificate.html"
          }],
          "nameUrl" : "doman-clinicalprocess-healthcond-certificate.html",
          "title" : "clinicalprocess:healthcond:certificate",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-healthcond-description.html"
          }],
          "nameUrl" : "doman-clinicalprocess-healthcond-description.html",
          "title" : "clinicalprocess:healthcond:description",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-healthcond-rheuma.html"
          }],
          "nameUrl" : "doman-clinicalprocess-healthcond-rheuma.html",
          "title" : "clinicalprocess:healthcond:rheuma",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-logistics-cervixscreening.html"
          }],
          "nameUrl" : "doman-clinicalprocess-logistics-cervixscreening.html",
          "title" : "clinicalprocess:logistics:cervixscreening",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-clinicalprocess-logistics-logistics.html"
          }],
          "nameUrl" : "doman-clinicalprocess-logistics-logistics.html",
          "title" : "clinicalprocess:logistics:logistics",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-coreprocess-residentparticipation-residentparticipation.html"
          }],
          "nameUrl" : "doman-coreprocess-residentparticipation-residentparticipation.html",
          "title" : "coreprocess:residentparticipation:residentparticipation",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-crm-carelisting.html"
          }],
          "nameUrl" : "doman-crm-carelisting.html",
          "title" : "crm:carelisting",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-crm-requeststatus.html"
          }],
          "nameUrl" : "doman-crm-requeststatus.html",
          "title" : "crm:requeststatus",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-crm-scheduling.html"
          }],
          "nameUrl" : "doman-crm-scheduling.html",
          "title" : "crm:scheduling",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-druglogistics-dosedispensing.html"
          }],
          "nameUrl" : "doman-druglogistics-dosedispensing.html",
          "title" : "druglogistics:dosedispensing",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-accesscontrol.html"
          }],
          "nameUrl" : "doman-ehr-accesscontrol.html",
          "title" : "ehr:accesscontrol",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-blocking.html"
          }],
          "nameUrl" : "doman-ehr-blocking.html",
          "title" : "ehr:blocking",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-commission.html"
          }],
          "nameUrl" : "doman-ehr-commission.html",
          "title" : "ehr:commission",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-log.html"
          }],
          "nameUrl" : "doman-ehr-log.html",
          "title" : "ehr:log",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-patientconsent.html"
          }],
          "nameUrl" : "doman-ehr-patientconsent.html",
          "title" : "ehr:patientconsent",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-patientrelationship.html"
          }],
          "nameUrl" : "doman-ehr-patientrelationship.html",
          "title" : "ehr:patientrelationship",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ehr-patientsummary.html"
          }],
          "nameUrl" : "doman-ehr-patientsummary.html",
          "title" : "ehr:patientsummary",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-eservicesupply-eoffering.html"
          }],
          "nameUrl" : "doman-eservicesupply-eoffering.html",
          "title" : "eservicesupply:eoffering",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-financial-billing-claim.html"
          }],
          "nameUrl" : "doman-financial-billing-claim.html",
          "title" : "financial:billing:claim",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-financial-patientfees-exemption.html"
          }],
          "nameUrl" : "doman-financial-patientfees-exemption.html",
          "title" : "financial:patientfees:exemption",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-followup-groupoutcomes-qualityreporting.html"
          }],
          "nameUrl" : "doman-followup-groupoutcomes-qualityreporting.html",
          "title" : "followup:groupoutcomes:qualityreporting",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-followup-processdevelopment-infections.html"
          }],
          "nameUrl" : "doman-followup-processdevelopment-infections.html",
          "title" : "followup:processdevelopment:infections",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-followup-qualityregistry-nkrr.html"
          }],
          "nameUrl" : "doman-followup-qualityregistry-nkrr.html",
          "title" : "followup:qualityregistry:nkrr",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-healthcertificate-lifeline.html"
          }],
          "nameUrl" : "doman-healthcertificate-lifeline.html",
          "title" : "healthcertificate:lifeline",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-ihe-pcd-dec.html"
          }],
          "nameUrl" : "doman-ihe-pcd-dec.html",
          "title" : "ihe:pcd:dec",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-informatics-terminology.html"
          }],
          "nameUrl" : "doman-informatics-terminology.html",
          "title" : "informatics:terminology",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-informationsecurity-auditing-log.html"
          }],
          "nameUrl" : "doman-informationsecurity-auditing-log.html",
          "title" : "informationsecurity:auditing:log",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-informationsecurity-authorization-blocking.html"
          }],
          "nameUrl" : "doman-informationsecurity-authorization-blocking.html",
          "title" : "informationsecurity:authorization:blocking",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-informationsecurity-authorization-consent.html"
          }],
          "nameUrl" : "doman-informationsecurity-authorization-consent.html",
          "title" : "informationsecurity:authorization:consent",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-informationsecurity-authorization-pip.html"
          }],
          "nameUrl" : "doman-informationsecurity-authorization-pip.html",
          "title" : "informationsecurity:authorization:pip",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-directory-authorizationmanagement.html"
          }],
          "nameUrl" : "doman-infrastructure-directory-authorizationmanagement.html",
          "title" : "infrastructure:directory:authorizationmanagement",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-directory-employee.html"
          }],
          "nameUrl" : "doman-infrastructure-directory-employee.html",
          "title" : "infrastructure:directory:employee",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-directory-organization.html"
          }],
          "nameUrl" : "doman-infrastructure-directory-organization.html",
          "title" : "infrastructure:directory:organization",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-directory-synchronization.html"
          }],
          "nameUrl" : "doman-infrastructure-directory-synchronization.html",
          "title" : "infrastructure:directory:synchronization",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-eservicesupply-forminteraction.html"
          }],
          "nameUrl" : "doman-infrastructure-eservicesupply-forminteraction.html",
          "title" : "infrastructure:eservicesupply:forminteraction",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-eservicesupply-patientportal.html"
          }],
          "nameUrl" : "doman-infrastructure-eservicesupply-patientportal.html",
          "title" : "infrastructure:eservicesupply:patientportal",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-informationstructureservice-terminology.html"
          }],
          "nameUrl" : "doman-infrastructure-informationstructureservice-terminology.html",
          "title" : "infrastructure:informationstructureservice:terminology",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-itintegration-dataexchange.html"
          }],
          "nameUrl" : "doman-infrastructure-itintegration-dataexchange.html",
          "title" : "infrastructure:itintegration:dataexchange",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-itintegration-messagebox.html"
          }],
          "nameUrl" : "doman-infrastructure-itintegration-messagebox.html",
          "title" : "infrastructure:itintegration:messagebox",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-itintegration-registry.html"
          }],
          "nameUrl" : "doman-infrastructure-itintegration-registry.html",
          "title" : "infrastructure:itintegration:registry",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-infrastructure-supportservices-forminteraction.html"
          }],
          "nameUrl" : "doman-infrastructure-supportservices-forminteraction.html",
          "title" : "infrastructure:supportservices:forminteraction",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-insuranceprocess-healthreporting.html"
          }],
          "nameUrl" : "doman-insuranceprocess-healthreporting.html",
          "title" : "insuranceprocess:healthreporting",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-interoperability-headers.html"
          }],
          "nameUrl" : "doman-interoperability-headers.html",
          "title" : "interoperability:headers",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-intygsbestallning-certificate-order.html"
          }],
          "nameUrl" : "doman-intygsbestallning-certificate-order.html",
          "title" : "intygsbestallning.certificate.order",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-itintegration-engagementindex.html"
          }],
          "nameUrl" : "doman-itintegration-engagementindex.html",
          "title" : "itintegration:engagementindex",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-itintegration-monitoring.html"
          }],
          "nameUrl" : "doman-itintegration-monitoring.html",
          "title" : "itintegration:monitoring",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-itintegration-registry.html"
          }],
          "nameUrl" : "doman-itintegration-registry.html",
          "title" : "itintegration:registry",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-masterdata-citizen-citizen.html"
          }],
          "nameUrl" : "doman-masterdata-citizen-citizen.html",
          "title" : "masterdata:citizen:citizen",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-masterdata-citizen-patient.html"
          }],
          "nameUrl" : "doman-masterdata-citizen-patient.html",
          "title" : "masterdata:citizen:patient",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-masterdata-organisationalresources-licensetopractice.html"
          }],
          "nameUrl" : "doman-masterdata-organisationalresources-licensetopractice.html",
          "title" : "masterdata:organisationalresources:licensetopractice",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-orgmaster-hsa.html"
          }],
          "nameUrl" : "doman-orgmaster-hsa.html",
          "title" : "orgmaster:hsa",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-population-residentmaster.html"
          }],
          "nameUrl" : "doman-population-residentmaster.html",
          "title" : "population:residentmaster",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-processdevelopment-infections.html"
          }],
          "nameUrl" : "doman-processdevelopment-infections.html",
          "title" : "processdevelopment:infections",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-processmanagement-decisionsupport-insurancemedicinedecisionsupport.html"
          }],
          "nameUrl" : "doman-processmanagement-decisionsupport-insurancemedicinedecisionsupport.html",
          "title" : "processmanagement:decisionsupport:insurancemedicinedecisionsupport",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-se-apotekensservice-axs.html"
          }],
          "nameUrl" : "doman-se-apotekensservice-axs.html",
          "title" : "se.apotekensservice:axs",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-se-apotekensservice-expo.html"
          }],
          "nameUrl" : "doman-se-apotekensservice-expo.html",
          "title" : "se.apotekensservice:expo",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-se-apotekensservice-lf.html"
          }],
          "nameUrl" : "doman-se-apotekensservice-lf.html",
          "title" : "se.apotekensservice:lf",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-se-apotekensservice-or.html"
          }],
          "nameUrl" : "doman-se-apotekensservice-or.html",
          "title" : "se.apotekensservice:or",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-se-apotekensservice-pris.html"
          }],
          "nameUrl" : "doman-se-apotekensservice-pris.html",
          "title" : "se.apotekensservice:pris",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-sebra-reporting-pharmacovigilance.html"
          }],
          "nameUrl" : "doman-sebra-reporting-pharmacovigilance.html",
          "title" : "sebra:reporting:pharmacovigilance",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-sob-apps-resident.html"
          }],
          "nameUrl" : "doman-sob-apps-resident.html",
          "title" : "sob:apps:resident",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-strategicresourcemanagement-organizational-organization.html"
          }],
          "nameUrl" : "doman-strategicresourcemanagement-organizational-organization.html",
          "title" : "strategicresourcemanagement:organizational:organization",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-strategicresourcemanagement-persons-employee.html"
          }],
          "nameUrl" : "doman-strategicresourcemanagement-persons-employee.html",
          "title" : "strategicresourcemanagement:persons:employee",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-strategicresourcemanagement-persons-person.html"
          }],
          "nameUrl" : "doman-strategicresourcemanagement-persons-person.html",
          "title" : "strategicresourcemanagement:persons:person",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-supportprocess-logistics-carelisting.html"
          }],
          "nameUrl" : "doman-supportprocess-logistics-carelisting.html",
          "title" : "supportprocess:logistics:carelisting",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-supportprocess-logistics-scheduling.html"
          }],
          "nameUrl" : "doman-supportprocess-logistics-scheduling.html",
          "title" : "supportprocess:logistics:scheduling",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-supportprocess-personalresources-interpretation.html"
          }],
          "nameUrl" : "doman-supportprocess-personalresources-interpretation.html",
          "title" : "supportprocess:personalresources:interpretation",
          "generation" : "markdown"
        },
        {
          "extension" : [{
            "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
            "valueUrl" : "doman-supportprocess-serviceprovisioning-healthcareoffering.html"
          }],
          "nameUrl" : "doman-supportprocess-serviceprovisioning-healthcareoffering.html",
          "title" : "supportprocess:serviceprovisioning:healthcareoffering",
          "generation" : "markdown"
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "tjanstekontrakt.html"
        }],
        "nameUrl" : "tjanstekontrakt.html",
        "title" : "Tjänstekontrakt",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "dokument.html"
        }],
        "nameUrl" : "dokument.html",
        "title" : "Dokument",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "aktuellt.html"
        }],
        "nameUrl" : "aktuellt.html",
        "title" : "Aktuellt",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "utveckling.html"
        }],
        "nameUrl" : "utveckling.html",
        "title" : "Utveckling",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "faq.html"
        }],
        "nameUrl" : "faq.html",
        "title" : "FAQ",
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
