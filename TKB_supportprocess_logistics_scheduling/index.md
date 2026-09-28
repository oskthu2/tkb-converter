# Hem - supportprocess: logistics: scheduling v2.0.0

* [**Table of Contents**](toc.md)
* **Hem**

## Hem

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ImplementationGuide/inera.supportprocess-logistics-scheduling | *Version*:2.0.0 |
| Draft as of 2026-09-28 | *Computable Name*:supportprocesslogisticsscheduling |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# supportprocess: logistics: scheduling

## Översikt

FHIR Implementation Guide för tjänstedomänen **supportprocess: logistics: scheduling** (Tidbokning) version 2.0. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.0 RC2 (2023-11-01), och domänens WSDL- och XSD-filer (tagg 2.0_RC1).

Tjänstedomänen stöder invånarens tidbokning hos en vårdenhet: söka vårdcentraler, tidstyper och lediga tider, samt boka, omboka, avboka och bekräfta besök.

Domänen innehåller följande tjänstekontrakt:

| | | |
| :--- | :--- | :--- |
| [CancelAppointment](7-tjanstekontrakt.md#cancelappointment) | 2.0 | Tjänstekontraktet ger aktören möjlighet att avboka en befintlig bokning, baserat på kombinationen av unikt bokningsid samt personnummer för patienten som bokningen gäller. |
| [ConfirmAppointment](7-tjanstekontrakt.md#confirmappointment) | 1.0 | Tjänstekontraktet ger aktören möjlighet att bekräfta en tidbokning som verksamheten bokat åt patienten, baserat på kombinationen av ett unikt boknings-id samt personnummer för patienten som bokningen gäller. |
| [GetAppointment](7-tjanstekontrakt.md#getappointment) | 2.0 | Tjänstekontraktet hämtar detalj-information om en befintlig tidbokning vid en vårdenhet, baserat på kombinationen av ett unikt boknings-id samt personnummer för patienten som bokningen gäller. |
| [GetAppointments](7-tjanstekontrakt.md#getappointments) | 2.0 | Tjänstekontraktet hämtar lista med invånarens samtliga tidbokningar, baserat på personnummer för patienten som bokningen/bokningarna gäller. Konsument kan välja att begära filtrering på ett tidsspann, en specifik tidstyp eller vårdtjänst. |
| [GetTimeTypes](7-tjanstekontrakt.md#gettimetypes) | 2.0 | Tjänstekontraktet hämtar alla tidstyper som kan användas vid nybokning hos angiven vårdenhet. Tidstyperna kan filtreras för vald vårdtjänst, vårdpersonal och per invånare. Samtliga filter är frivilliga. En vårdenhet förväntas returnera alla tillgängliga tidstyper i fallet då konsument frågar utan att förmedla ett personnummer, ett scenario som skulle kunna vara tillämpbart i fallet då konsument implementerar administrativa funktioner kring tidstyper. |
| [GetAvailableDates](7-tjanstekontrakt.md#getavailabledates) | 2.0 | Tjänstekontraktet hämtar datum med lediga tider för angivet datumintervall. Vid anrop för att hämta datum med lediga tider gällande en ombokning skickar konsument den ursprungliga tidbokningens unika bokningsId. På så sätt kan en producent ta hänsyn till vilken vårdpersonal eller vilken/vilka resurs(er) som var allokerade för ursprungsbokningen och därmed endast returnera sådana datum som matchar de kriterier som vårdenhet bestämt. Observera att passerade tider inte ska returneras av producenten. |
| [GetAvailableTimeslots](7-tjanstekontrakt.md#getavailabletimeslots) | 2.0 | Tjänstekontraktet hämtar lediga tider för angivet datumintervall. Vid anrop för ombokning skickar konsument den ursprungliga tidbokningens unika bokningsId. På så sätt kan en producent ta hänsyn till vilken vårdpersonal eller vilken/vilka resurs(er) som var allokerade för ursprungsbokningen och därmed endast returnera sådana datum som matchar de kriter som vårdenhet bestämt. Observera att passerade tider inte ska returneras av tjänstekontraktet. |
| [GetHealthcareFacilities](7-tjanstekontrakt.md#gethealthcarefacilities) | 2.0 | Tjänstekontrakt för att hämta alla vårdenheter som erbjuds för nybokning eller ombokning för aktuell invånare (vårdenhet i begäran representerar då den kallande organisationen). Detta tjänstekontrakt följer inte riktigt samma mönster som övriga tjänstekontrakt, genom att vårdenheten som får begäran i någon mening agerar ställföreträdare för en sortiments- och utbudskatalog och därigenom svarar för andra vårdenheters räkning. Det är dock underförstått att de vårdenheter som listas i svaret utför samma typ av behandling som den vårdenhet som fick begäran och följer samma kodverk för AppointmentType (tidstyp), HealthcareService(s) (vårdtjänster) etc. Det är den svarande vårdenhetens ansvar att de vårdenheter som listas i svaret är bokningsbara, rent avtalsmässigt och att de har stöd för online-bokning enligt dessa tjänstekontrakt. |
| [GetHealthcareFacility](7-tjanstekontrakt.md#gethealthcarefacility) | 2.0 | Tjänstekontrakt för att hämta detaljerad information om en vårdenhet. Den detaljerade informationen kan innefatta en alternativ adress, om vårdenheten väljer att uttrycka en sådan. Den detaljerade informationen kan också innefatta information eller villkorstext som vårdenheten vill förmedla till invånaren/patienten i samband med bokningen. |
| [GetPractitioners](7-tjanstekontrakt.md#getpractitioners) | 2.0 | Tjänstekontrakt för att hämta en lista över medarbetare i vårdprofessionen som är bokningsbara online hos angiven vårdenhet för aktuell invånare. Tjänsteproducenten ansvarar för att tillämpa verksamhetens regelverk för att filtrera svaret (t.ex. en vårdenhet som bara tillåter invånare att boka tid enligt listad doktor). |
| [MakeAppointment](7-tjanstekontrakt.md#makeappointment) | 2.0 | Tjänstekontrakt för nybokning vid en vårdenhet. Tjänsten returnerar det unika boknings-id för bokningen vid lyckad genomförd nybokning. |
| [UpdateAppointment](7-tjanstekontrakt.md#updateappointment) | 2.0 | Tjänstekontrakt för att uppdatera en befintlig bokning med nytt datum och tid, alltså en ombokning. |

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
  "id" : "inera.supportprocess-logistics-scheduling",
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/ImplementationGuide/inera.supportprocess-logistics-scheduling",
  "version" : "2.0.0",
  "name" : "supportprocesslogisticsscheduling",
  "title" : "supportprocess: logistics: scheduling",
  "status" : "draft",
  "date" : "2026-09-28T09:26:08+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.supportprocess-logistics-scheduling",
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-appointmentstatus-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-process-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-reasonrequired-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/history.html"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-appointmentstatus-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-process-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-reasonrequired-cs"
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
        "valueString" : "https://fhir.inera.se/CodeSystem/scheduling-resultcode-cs"
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
        "valueString" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/history.html"
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
        "valueUri" : "ValueSet-scheduling-appointmentstatus-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/scheduling-appointmentstatus-vs"
      },
      "name" : "Bokningens tillstånd (AppointmentStatus)",
      "description" : "Alla koder i AppointmentStatusCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-scheduling-appointmentstatus-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/scheduling-appointmentstatus-cs"
      },
      "name" : "Bokningens tillstånd (AppointmentStatus)",
      "description" : "Koder för AppointmentStatusEnum i domänschemat. Visningstexter ur TKB avsnitt 6.3.4 (GetAppointment, appointment.status).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-cancelappointment-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/cancelappointment-request"
      },
      "name" : "CancelAppointment — Request",
      "description" : "Logisk modell för begäran i CancelAppointment\n(urn:riv:supportprocess:logistics:scheduling:CancelAppointmentResponder:2, CancelAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-cancelappointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/cancelappointment"
      },
      "name" : "CancelAppointment — Response",
      "description" : "Logisk modell för svaret i CancelAppointment\n(urn:riv:supportprocess:logistics:scheduling:CancelAppointmentResponder:2, CancelAppointmentResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-confirmappointment-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/confirmappointment-request"
      },
      "name" : "ConfirmAppointment — Request",
      "description" : "Logisk modell för begäran i ConfirmAppointment\n(urn:riv:supportprocess:logistics:scheduling:ConfirmAppointmentResponder:1, ConfirmAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-confirmappointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/confirmappointment"
      },
      "name" : "ConfirmAppointment — Response",
      "description" : "Logisk modell för svaret i ConfirmAppointment\n(urn:riv:supportprocess:logistics:scheduling:ConfirmAppointmentResponder:1, ConfirmAppointmentResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getappointment-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getappointment-request"
      },
      "name" : "GetAppointment — Request",
      "description" : "Logisk modell för begäran i GetAppointment\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentResponder:2, GetAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getappointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getappointment"
      },
      "name" : "GetAppointment — Response",
      "description" : "Logisk modell för svaret i GetAppointment\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentResponder:2, GetAppointmentResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getappointments-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getappointments-request"
      },
      "name" : "GetAppointments — Request",
      "description" : "Logisk modell för begäran i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getappointments.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getappointments"
      },
      "name" : "GetAppointments — Response",
      "description" : "Logisk modell för svaret i GetAppointments\n(urn:riv:supportprocess:logistics:scheduling:GetAppointmentsResponder:2, GetAppointmentsResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getavailabledates-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getavailabledates-request"
      },
      "name" : "GetAvailableDates — Request",
      "description" : "Logisk modell för begäran i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getavailabledates.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getavailabledates"
      },
      "name" : "GetAvailableDates — Response",
      "description" : "Logisk modell för svaret i GetAvailableDates\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableDatesResponder:2, GetAvailableDatesResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getavailabletimeslots-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getavailabletimeslots-request"
      },
      "name" : "GetAvailableTimeslots — Request",
      "description" : "Logisk modell för begäran i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getavailabletimeslots.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getavailabletimeslots"
      },
      "name" : "GetAvailableTimeslots — Response",
      "description" : "Logisk modell för svaret i GetAvailableTimeslots\n(urn:riv:supportprocess:logistics:scheduling:GetAvailableTimeslotsResponder:2, GetAvailableTimeslotsResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gethealthcarefacilities-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gethealthcarefacilities-request"
      },
      "name" : "GetHealthcareFacilities — Request",
      "description" : "Logisk modell för begäran i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gethealthcarefacilities.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gethealthcarefacilities"
      },
      "name" : "GetHealthcareFacilities — Response",
      "description" : "Logisk modell för svaret i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gethealthcarefacility-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gethealthcarefacility-request"
      },
      "name" : "GetHealthcareFacility — Request",
      "description" : "Logisk modell för begäran i GetHealthcareFacility\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gethealthcarefacility.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gethealthcarefacility"
      },
      "name" : "GetHealthcareFacility — Response",
      "description" : "Logisk modell för svaret i GetHealthcareFacility\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilityResponder:2, GetHealthcareFacilityResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpractitioners-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpractitioners-request"
      },
      "name" : "GetPractitioners — Request",
      "description" : "Logisk modell för begäran i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-getpractitioners.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/getpractitioners"
      },
      "name" : "GetPractitioners — Response",
      "description" : "Logisk modell för svaret i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gettimetypes-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gettimetypes-request"
      },
      "name" : "GetTimeTypes — Request",
      "description" : "Logisk modell för begäran i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-gettimetypes.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/gettimetypes"
      },
      "name" : "GetTimeTypes — Response",
      "description" : "Logisk modell för svaret i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-scheduling-reasonrequired-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/scheduling-reasonrequired-vs"
      },
      "name" : "Krav på anledning (ReasonRequired)",
      "description" : "Alla koder i ReasonRequiredCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-scheduling-reasonrequired-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/scheduling-reasonrequired-cs"
      },
      "name" : "Krav på anledning (ReasonRequired)",
      "description" : "Koder för ReasonRequiredEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-makeappointment-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/makeappointment-request"
      },
      "name" : "MakeAppointment — Request",
      "description" : "Logisk modell för begäran i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-makeappointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/makeappointment"
      },
      "name" : "MakeAppointment — Response",
      "description" : "Logisk modell för svaret i MakeAppointment\n(urn:riv:supportprocess:logistics:scheduling:MakeAppointmentResponder:2, MakeAppointmentResponseType).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-scheduling-resultcode-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/scheduling-resultcode-vs"
      },
      "name" : "Resultatkod (ResultCode)",
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
        "valueUri" : "CodeSystem-scheduling-resultcode-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/scheduling-resultcode-cs"
      },
      "name" : "Resultatkod (ResultCode)",
      "description" : "Koder för ResultCodeEnum i domänschemat. Visningstexter ur TKB avsnitt 3.7 ResultCode.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "ValueSet-scheduling-process-vs.html"
      }],
      "reference" : {
        "reference" : "ValueSet/scheduling-process-vs"
      },
      "name" : "Tidbokningsflöde (Process)",
      "description" : "Alla koder i ProcessCS.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "CodeSystem-scheduling-process-cs.html"
      }],
      "reference" : {
        "reference" : "CodeSystem/scheduling-process-cs"
      },
      "name" : "Tidbokningsflöde (Process)",
      "description" : "Koder för ProcessEnum i domänschemat. Visningstexter ur TKB avsnitt 7.8 TimeTypeRulesType.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updateappointment-request.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updateappointment-request"
      },
      "name" : "UpdateAppointment — Request",
      "description" : "Logisk modell för begäran i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentType), inklusive SOAP-huvuden enligt WSDL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-updateappointment.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/updateappointment"
      },
      "name" : "UpdateAppointment — Response",
      "description" : "Logisk modell för svaret i UpdateAppointment\n(urn:riv:supportprocess:logistics:scheduling:UpdateAppointmentResponder:2, UpdateAppointmentResponseType).",
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
