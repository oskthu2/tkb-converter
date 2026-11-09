# GetHealthcareFacilities — Request - supportprocess: logistics: scheduling v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHealthcareFacilities — Request**

## Logical Model: GetHealthcareFacilities — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities-request | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetHealthcareFacilitiesRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetHealthcareFacilities (urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.supportprocess-logistics-scheduling|current/StructureDefinition/StructureDefinition-gethealthcarefacilities-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethealthcarefacilities-request.csv), [Excel](StructureDefinition-gethealthcarefacilities-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethealthcarefacilities-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities-request",
  "version" : "2.0",
  "name" : "GetHealthcareFacilitiesRequest",
  "title" : "GetHealthcareFacilities — Request",
  "status" : "draft",
  "date" : "2026-11-09T03:52:57+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/supportprocess-logistics-scheduling/StructureDefinition/gethealthcarefacilities-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethealthcarefacilities-request",
      "path" : "gethealthcarefacilities-request",
      "short" : "GetHealthcareFacilities — Request",
      "definition" : "Logisk modell för begäran i GetHealthcareFacilities\n(urn:riv:supportprocess:logistics:scheduling:GetHealthcareFacilitiesResponder:2, GetHealthcareFacilitiesType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "gethealthcarefacilities-request.originalAppointmentId",
      "path" : "gethealthcarefacilities-request.originalAppointmentId",
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
      "id" : "gethealthcarefacilities-request.personId",
      "path" : "gethealthcarefacilities-request.personId",
      "short" : "PersonIdType",
      "definition" : "Filtrering av tidstyper baserat på invånares personnummer. Se kapitel Definition av komplexa typer för detaljerad information om hur de underliggande attributen populeras.",
      "comment" : "TKB-fält: `personId` (`PersonIdType (IIType)`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethealthcarefacilities-request.timeTypeCode",
      "path" : "gethealthcarefacilities-request.timeTypeCode",
      "short" : "timeTypeCode",
      "definition" : "Tidstyp att söka lediga datum för.\n\nEn konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop.",
      "comment" : "TKB-fält: `timeTypeCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethealthcarefacilities-request.healthcareServiceCode",
      "path" : "gethealthcarefacilities-request.healthcareServiceCode",
      "short" : "healthcareServiceCode",
      "definition" : "Vårdtjänst att söka lediga datum för. En konsument kan välja att söka lediga tider på antingen tidstyp eller vårdtjänst. Båda ska inte sättas i samma anrop.",
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
