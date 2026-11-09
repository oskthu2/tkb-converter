# GetPractitioners — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetPractitioners — Request**

## Logical Model: GetPractitioners — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetPractitionersRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetPractitioners (urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-getpractitioners-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getpractitioners-request.csv), [Excel](StructureDefinition-getpractitioners-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getpractitioners-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners-request",
  "version" : "2.0",
  "name" : "GetPractitionersRequest",
  "title" : "GetPractitioners — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/getpractitioners-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getpractitioners-request",
      "path" : "getpractitioners-request",
      "short" : "GetPractitioners — Request",
      "definition" : "Logisk modell för begäran i GetPractitioners\n(urn:riv:supportprocess:logistics:scheduling:GetPractitionersResponder:2, GetPractitionersType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getpractitioners-request.actor",
      "path" : "getpractitioners-request.actor",
      "short" : "ActorType",
      "definition" : "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga tider ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”).",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpractitioners-request.actor.actorId",
      "path" : "getpractitioners-request.actor.actorId",
      "short" : "actorId",
      "definition" : "actorId",
      "comment" : "TKB-fält: `../actorId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getpractitioners-request.actor.actorType",
      "path" : "getpractitioners-request.actor.actorType",
      "short" : "SnomedCtType",
      "definition" : "actorType",
      "comment" : "TKB-fält: `../actorType` (`SnomedCtType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpractitioners-request.personId",
      "path" : "getpractitioners-request.personId",
      "short" : "PersonIdType",
      "definition" : "Filtrering av tidstyper baserat på invånares personnummer. . Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getpractitioners-request.originalAppointmentId",
      "path" : "getpractitioners-request.originalAppointmentId",
      "short" : "originalAppointmentId",
      "definition" : "originalAppointmentId",
      "comment" : "TKB-fält: `originalAppointmentId` (`uuidType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/uuidType"]
      }]
    },
    {
      "id" : "getpractitioners-request.timeTypeCode",
      "path" : "getpractitioners-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "Tidstyp att söka personal för.\n\nEn konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop.",
      "comment" : "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getpractitioners-request.healthcareServiceCode",
      "path" : "getpractitioners-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "Vårdtjänst att söka personal för. En konsument kan välja att söka personal baserat på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop. Kod för vårdtjänster uttrycks som SNOMED-CT koder (svensk upplaga).",
      "comment" : "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
