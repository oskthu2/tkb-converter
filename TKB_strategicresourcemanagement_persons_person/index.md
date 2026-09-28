# Hem - strategicresourcemanagement: persons: person v5.1.0

* [**Table of Contents**](toc.md)
* **Hem**

## Hem

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ImplementationGuide/inera.strategicresourcemanagement-persons-person | *Version*:5.1.0 |
| Draft as of 2026-09-28 | *Computable Name*:strategicresourcemanagementpersonsperson |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# strategicresourcemanagement: persons: person

## Översikt

FHIR Implementation Guide för tjänstedomänen **strategicresourcemanagement: persons: person** (Personuppgiftstjänsten, PU-tjänsten) version 5.1. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 5.1 (2024-11-28), och domänens WSDL- och XSD-filer (tagg 5.1).

Personuppgiftstjänsten tillhandahåller personuppgifter ur Skatteverkets folkbokföring (Navet) och hanterar reservidentiteter och personers kontaktuppgifter. Kontrakten med suffixet **Unrestricted** returnerar även uppgifter för personer med skyddade personuppgifter. Utöver RIV-TA-kontrakten beskriver TKB:n REST-tjänsten [GetPersonsByFile](7-tjanstekontrakt.md#getpersonsbyfile).

Domänen innehåller följande tjänstekontrakt:

| | | |
| :--- | :--- | :--- |
| [GetPersonsForProfile](7-tjanstekontrakt.md#getpersonsforprofile) | 5.0 | Tjänst för att hämta uppgifter för 1..* personidentiteter. |
| [GetPersonsForProfileUnrestricted](7-tjanstekontrakt.md#getpersonsforprofileunrestricted) | 5.0 | Tjänst för att hämta uppgifter för 1..* personidentiteter. |
| [SearchPersonsForProfile](7-tjanstekontrakt.md#searchpersonsforprofile) | 5.0 | Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [SearchPersonsForProfileUnrestricted](7-tjanstekontrakt.md#searchpersonsforprofileunrestricted) | 5.0 | Tjänst för att söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [SearchPersonsForProfileByOrder](7-tjanstekontrakt.md#searchpersonsforprofilebyorder) | 5.0 | Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. Denna tjänst tillskillnad från SearchPersonsForProfile returnerar endast ett orderId som sedan ska användas tillsammans med tjänsten GetFilesForOrderId för att få tillgång till resultatet av sökningen. Se sekvensschemat i kapitel 3.1.10. |
| [SearchPersonsForProfileByOrderUnrestricted](7-tjanstekontrakt.md#searchpersonsforprofilebyorderunrestricted) | 5.0 | Tjänst för att asynkront söka uppgifter för 0..* personidentiteter utifrån sökparametrar definierad enligt en bestämd syntax. |
| [GetFilesForOrderId](7-tjanstekontrakt.md#getfilesfororderid) | 4.0 | Tjänst för få en adress (URL) utifrån ett givet OrderId, där man kan hämta begärda data. Till exempel personposter utifrån en tidigare begärd sökning med tjänsten SearchPersonsForProfileByOrder eller förändrade personposter. |
| [GetPersonContactInformation](7-tjanstekontrakt.md#getpersoncontactinformation) | 4.0 | Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. Kontaktinformationen kan ha skapats antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller av t.ex en vårdaktör via vårdaktörens tjänst. Kontaktuppgifterna består dels av vilka kontaktvägar (telefon, mail etc) som personen själv i fråga kan nås på, dels av kontaktpersoner och kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. |
| [GetPersonContactInformationUnrestricted](7-tjanstekontrakt.md#getpersoncontactinformationunrestricted) | 4.0 | Tjänst för att hämta information om kontaktinformation, exempelvis mailadress eller mobilnummer till personen. |
| [UpdatePersonContactInformation](7-tjanstekontrakt.md#updatepersoncontactinformation) | 4.0 | Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. Kontaktuppgifterna består dels av vilka kontaktvägar som personen själv i fråga kan nås på (exempelvis telefon, email), dels av kontaktpersoner samt kontaktuppgifter till dem. Kontaktpersoner kan t.ex vara anhöriga som vårdens aktörer kan ha behov av att kontakta kring personens vård. En konsument av denna tjänst kan således dels vara en tjänst såsom Journalen, dels ett vårdsystem. |
| [UpdatePersonContactInformationUnrestricted](7-tjanstekontrakt.md#updatepersoncontactinformationunrestricted) | 4.0 | Tjänst för att skapa/uppdatera kontaktinformation. Antingen via någon tjänst där personen själv har matat in uppgifterna (t.ex via 1177) eller där en vårdaktör uppger personen kontaktuppgifter via vårdaktörens journalsystem/eTjänst. |
| [UpdatePerson](7-tjanstekontrakt.md#updateperson) | 5.0 | Tjänst för att ta ut en ny reservidentitet (NRID), uppdatera en befintlig reservidentitet, eller lägga till en lokal reservidentitet (LRID). Om tjänsten anropas utan identitet så erhålls en ny identitet (NRID) i svaret baserad på de uppgifter som har angivets på personen, ex födelsedatum, kön. |
| [LinkPersonIdentity](7-tjanstekontrakt.md#linkpersonidentity) | 4.0 | Tjänst för att koppla en persons identitet till dess huvudidentitet. T.ex en reservidentitet (LRID/NRID) till ett personnummer. Dvs kunna ange att en person som har 2 identiteter är densamma person. Genom denna koppling kan t.ex NPÖ för en person som är journalförd på 2 olika identiteter, t.ex en reservidentitet och sitt ordinarie personnummer, visa upp journalerna för bägge identiteterna. |
| [UnlinkPersonIdentity](7-tjanstekontrakt.md#unlinkpersonidentity) | 4.0 | Tjänst för att koppla isär en tidigare koppling mellan 2 identiteter. T.ex en koppling mellan en reservidentitet (LRID/NRID) och ett personnummer (PNR). Skälet till isärkopplingen är normalt en felaktig tidigare genomförd koppling. |

## Innehåll

* [1 Inledning](1-inledning.md)
* [2 Versionsinformation](2-versionsinformation.md)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.md)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.md)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.md)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.md)
* [7 Tjänstekontrakt](7-tjanstekontrakt.md)
* [8 Aktuella profiler](8-aktuella-profiler.md)
* [Artefakter](artifacts.md)



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inera.strategicresourcemanagement-persons-person",
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/ImplementationGuide/inera.strategicresourcemanagement-persons-person",
  "version" : "5.1.0",
  "name" : "strategicresourcemanagementpersonsperson",
  "title" : "strategicresourcemanagement: persons: person",
  "status" : "draft",
  "date" : "2026-09-28T09:23:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.strategicresourcemanagement-persons-person",
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-datetypeformat-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-lookupprofile-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/history.html"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-datetypeformat-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-lookupprofile-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/SPP-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/ig/strategicresourcemanagement-persons-person/history.html"
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
        "valueUri" : "ValueSet-SPP-datetypeformat-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/SPP-datetypeformat-vs"
      },
      "name" : "DateTypeFormat",
      "description" : "Alla koder i DateTypeFormatCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-SPP-datetypeformat-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/SPP-datetypeformat-cs"
      },
      "name" : "DateTypeFormat",
      "description" : "Koder för DateTypeFormatType i domänschemat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getfilesfororderid-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getfilesfororderid-request"
      },
      "name" : "GetFilesForOrderId — Request",
      "description" : "Logisk modell för begäran i GetFilesForOrderId\n(urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getfilesfororderid.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getfilesfororderid"
      },
      "name" : "GetFilesForOrderId — Response",
      "description" : "Logisk modell för svaret i GetFilesForOrderId\n(urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderIdResponder:4, GetFilesForOrderIdResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersoncontactinformation-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersoncontactinformation-request"
      },
      "name" : "GetPersonContactInformation — Request",
      "description" : "Logisk modell för begäran i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersoncontactinformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersoncontactinformation"
      },
      "name" : "GetPersonContactInformation — Response",
      "description" : "Logisk modell för svaret i GetPersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationResponder:4, GetPersonContactInformationResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersoncontactinformationunrestricted-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersoncontactinformationunrestricted-request"
      },
      "name" : "GetPersonContactInformationUnrestricted — Request",
      "description" : "Logisk modell för begäran i GetPersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersoncontactinformationunrestricted.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersoncontactinformationunrestricted"
      },
      "name" : "GetPersonContactInformationUnrestricted — Response",
      "description" : "Logisk modell för svaret i GetPersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestrictedResponder:4, GetPersonContactInformationUnrestrictedResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersonsforprofile-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersonsforprofile-request"
      },
      "name" : "GetPersonsForProfile — Request",
      "description" : "Logisk modell för begäran i GetPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5, GetPersonsForProfileType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersonsforprofile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersonsforprofile"
      },
      "name" : "GetPersonsForProfile — Response",
      "description" : "Logisk modell för svaret i GetPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileResponder:5, GetPersonsForProfileResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersonsforprofileunrestricted-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersonsforprofileunrestricted-request"
      },
      "name" : "GetPersonsForProfileUnrestricted — Request",
      "description" : "Logisk modell för begäran i GetPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5, GetPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpersonsforprofileunrestricted.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpersonsforprofileunrestricted"
      },
      "name" : "GetPersonsForProfileUnrestricted — Response",
      "description" : "Logisk modell för svaret i GetPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestrictedResponder:5, GetPersonsForProfileUnrestrictedResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-linkpersonidentity-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/linkpersonidentity-request"
      },
      "name" : "LinkPersonIdentity — Request",
      "description" : "Logisk modell för begäran i LinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-linkpersonidentity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/linkpersonidentity"
      },
      "name" : "LinkPersonIdentity — Response",
      "description" : "Logisk modell för svaret i LinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentityResponder:4, LinkPersonIdentityResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-SPP-lookupprofile-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/SPP-lookupprofile-vs"
      },
      "name" : "LookupProfile",
      "description" : "Alla koder i LookupProfileCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-SPP-lookupprofile-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/SPP-lookupprofile-cs"
      },
      "name" : "LookupProfile",
      "description" : "Koder för LookupProfileType i domänschemat.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-SPP-resultcode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/SPP-resultcode-vs"
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
        "valueUri" : "CodeSystem-SPP-resultcode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/SPP-resultcode-cs"
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
        "valueUri" : "StructureDefinition-searchpersonsforprofile-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofile-request"
      },
      "name" : "SearchPersonsForProfile — Request",
      "description" : "Logisk modell för begäran i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofile.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofile"
      },
      "name" : "SearchPersonsForProfile — Response",
      "description" : "Logisk modell för svaret i SearchPersonsForProfile\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileResponder:5, SearchPersonsForProfileResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofilebyorder-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofilebyorder-request"
      },
      "name" : "SearchPersonsForProfileByOrder — Request",
      "description" : "Logisk modell för begäran i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofilebyorder.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofilebyorder"
      },
      "name" : "SearchPersonsForProfileByOrder — Response",
      "description" : "Logisk modell för svaret i SearchPersonsForProfileByOrder\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderResponder:5, SearchPersonsForProfileByOrderResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofilebyorderunrestricted-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofilebyorderunrestricted-request"
      },
      "name" : "SearchPersonsForProfileByOrderUnrestricted — Request",
      "description" : "Logisk modell för begäran i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofilebyorderunrestricted.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofilebyorderunrestricted"
      },
      "name" : "SearchPersonsForProfileByOrderUnrestricted — Response",
      "description" : "Logisk modell för svaret i SearchPersonsForProfileByOrderUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestrictedResponder:5, SearchPersonsForProfileByOrderUnrestrictedResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofileunrestricted-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofileunrestricted-request"
      },
      "name" : "SearchPersonsForProfileUnrestricted — Request",
      "description" : "Logisk modell för begäran i SearchPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5, SearchPersonsForProfileUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-searchpersonsforprofileunrestricted.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/searchpersonsforprofileunrestricted"
      },
      "name" : "SearchPersonsForProfileUnrestricted — Response",
      "description" : "Logisk modell för svaret i SearchPersonsForProfileUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestrictedResponder:5, SearchPersonsForProfileUnrestrictedResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unlinkpersonidentity-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unlinkpersonidentity-request"
      },
      "name" : "UnlinkPersonIdentity — Request",
      "description" : "Logisk modell för begäran i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-unlinkpersonidentity.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/unlinkpersonidentity"
      },
      "name" : "UnlinkPersonIdentity — Response",
      "description" : "Logisk modell för svaret i UnlinkPersonIdentity\n(urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentityResponder:4, UnlinkPersonIdentityResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updateperson-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updateperson-request"
      },
      "name" : "UpdatePerson — Request",
      "description" : "Logisk modell för begäran i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updateperson.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updateperson"
      },
      "name" : "UpdatePerson — Response",
      "description" : "Logisk modell för svaret i UpdatePerson\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonResponder:5, UpdatePersonResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updatepersoncontactinformation-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updatepersoncontactinformation-request"
      },
      "name" : "UpdatePersonContactInformation — Request",
      "description" : "Logisk modell för begäran i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updatepersoncontactinformation.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updatepersoncontactinformation"
      },
      "name" : "UpdatePersonContactInformation — Response",
      "description" : "Logisk modell för svaret i UpdatePersonContactInformation\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationResponder:4, UpdatePersonContactInformationResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updatepersoncontactinformationunrestricted-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updatepersoncontactinformationunrestricted-request"
      },
      "name" : "UpdatePersonContactInformationUnrestricted — Request",
      "description" : "Logisk modell för begäran i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updatepersoncontactinformationunrestricted.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updatepersoncontactinformationunrestricted"
      },
      "name" : "UpdatePersonContactInformationUnrestricted — Response",
      "description" : "Logisk modell för svaret i UpdatePersonContactInformationUnrestricted\n(urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestrictedResponder:4, UpdatePersonContactInformationUnrestrictedResponseType).",
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
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "8-aktuella-profiler.html"
        }],
        "nameUrl" : "8-aktuella-profiler.html",
        "title" : "8 Aktuella profiler",
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
