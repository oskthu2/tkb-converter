# GetTimeTypes — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetTimeTypes — Request**

## Logical Model: GetTimeTypes — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetTimeTypesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetTimeTypes (urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gettimetypes-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gettimetypes-request.csv), [Excel](StructureDefinition-gettimetypes-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gettimetypes-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request",
  "version" : "2.0",
  "name" : "GetTimeTypesRequest",
  "title" : "GetTimeTypes — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gettimetypes-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gettimetypes-request",
      "path" : "gettimetypes-request",
      "short" : "GetTimeTypes — Request",
      "definition" : "Logisk modell för begäran i GetTimeTypes\n(urn:riv:supportprocess:logistics:scheduling:GetTimeTypesResponder:2, GetTimeTypesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gettimetypes-request.actor",
      "path" : "gettimetypes-request.actor",
      "short" : "ActorType",
      "definition" : "Typ av aktör som anropar tjänstekontraktet. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras. Om anropet sker i ett flöde där lediga datum ska hämtas utan att aktören är känd ska fältet actor och fältet personId utelämnas. Detta kan exempelvis vara applicerbart om anropet sker då ingen aktör autentiserat sig (”ej inloggat läge”).",
      "comment" : "TKB-fält: `actor` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gettimetypes-request.actor.actorId",
      "path" : "gettimetypes-request.actor.actorId",
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
      "id" : "gettimetypes-request.actor.actorType",
      "path" : "gettimetypes-request.actor.actorType",
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
      "id" : "gettimetypes-request.healthcareServiceCode",
      "path" : "gettimetypes-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "Filtrering på tidstyper som kan utföra en specifik vårdtjänst. Vårdtjänstkoden som anges här ska motsvara en kod enligt SNOMED-CT (svenska upplagan)",
      "comment" : "TKB-fält: `healthcareServiceCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gettimetypes-request.practitionerId",
      "path" : "gettimetypes-request.practitionerId",
      "short" : "HSAIdType",
      "definition" : "Filtrering på tidstyper som erbjuds av specifik vårdpersonal",
      "comment" : "TKB-fält: `practitionerId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gettimetypes-request.personId",
      "path" : "gettimetypes-request.personId",
      "short" : "PersonIdType",
      "definition" : "Filtrering av tidstyper baserat på invånares personnummer.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    }]
  }
}

```
