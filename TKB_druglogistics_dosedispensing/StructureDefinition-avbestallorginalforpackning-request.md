# AvbestallOrginalforpackning — Request - druglogistics: dosedispensing — Dosdispensering v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AvbestallOrginalforpackning — Request**

## Logical Model: AvbestallOrginalforpackning — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/avbestallorginalforpackning-request | *Version*:1.1.0 |
| Draft as of 2026-09-26 | *Computable Name*:AvbestallOrginalforpackningRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i AvbestallOrginalforpackning (urn:riv:druglogistics:dosedispensing:AvbestallOrginalforpackningResponder:1, AvbestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.druglogistics-dosedispensing|current/StructureDefinition/StructureDefinition-avbestallorginalforpackning-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-avbestallorginalforpackning-request.csv), [Excel](StructureDefinition-avbestallorginalforpackning-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "avbestallorginalforpackning-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/avbestallorginalforpackning-request",
  "version" : "1.1.0",
  "name" : "AvbestallOrginalforpackningRequest",
  "title" : "AvbestallOrginalforpackning — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:21:50+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i AvbestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:AvbestallOrginalforpackningResponder:1, AvbestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/StructureDefinition/avbestallorginalforpackning-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "avbestallorginalforpackning-request",
      "path" : "avbestallorginalforpackning-request",
      "short" : "AvbestallOrginalforpackning — Request",
      "definition" : "Logisk modell för begäran i AvbestallOrginalforpackning\n(urn:riv:druglogistics:dosedispensing:AvbestallOrginalforpackningResponder:1, AvbestallOrginalforpackningType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "avbestallorginalforpackning-request.logicalAddress",
      "path" : "avbestallorginalforpackning-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Typen har inga element utöver utökningspunkter.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.glnkod",
      "path" : "avbestallorginalforpackning-request.glnkod",
      "short" : "glnkod",
      "definition" : "glnkod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation",
      "short" : "Behorighetsinformation",
      "definition" : "Behorighetsinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.fornamn",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.efternamn",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.forskrivarkod",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.yrkeskod",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.yrkeskod",
      "short" : "yrkeskod",
      "definition" : "yrkeskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-yrkeskod-vs"
      }
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.arbetsplatskod",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.hsaid",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.hsaid",
      "short" : "hsaid",
      "definition" : "hsaid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.personnummer",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.personnummer",
      "short" : "personnummer",
      "definition" : "personnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Behorighetsinformation.organisationsnummer",
      "path" : "avbestallorginalforpackning-request.Behorighetsinformation.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo",
      "short" : "Avbestallningsinfo",
      "definition" : "Avbestallningsinfo",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation",
      "short" : "Patientinformation",
      "definition" : "Patientinformation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.fornamn",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.fornamn",
      "short" : "fornamn",
      "definition" : "Anvandarens fornamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.mellannamn",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.mellannamn",
      "short" : "mellannamn",
      "definition" : "Anvandarens mellanamn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.efternamn",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.efternamn",
      "short" : "efternamn",
      "definition" : "Anvandarens efternamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.identitetstyp",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.identitetstyp",
      "short" : "identitetstyp",
      "definition" : "identitetstyp",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/druglogistics-dosedispensing/ValueSet/dosedispensing-identitetstyp-vs"
      }
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.personid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.personid",
      "short" : "personid",
      "definition" : "Anvandarens personid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.lanskod",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.lanskod",
      "short" : "lanskod",
      "definition" : "Anvandarens folkbokforda lanskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.kommunkod",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.Patientinformation.kommunkod",
      "short" : "kommunkod",
      "definition" : "Anvandarens folkbokforda kommunkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.bestallningsid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.bestallningsid",
      "short" : "bestallningsid",
      "definition" : "bestallningsid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.radid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.radid",
      "short" : "radid",
      "definition" : "radid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.NPLpackid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.NPLpackid",
      "short" : "NPLpackid",
      "definition" : "NPLpackid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.varunummer",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.varunummer",
      "short" : "varunummer",
      "definition" : "varunummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.receptid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.receptid",
      "short" : "receptid",
      "definition" : "receptid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.ordinationsid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.ordinationsid",
      "short" : "ordinationsid",
      "definition" : "ordinationsid",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.dosunderlagsversion",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.dosunderlagsversion",
      "short" : "dosunderlagsversion",
      "definition" : "dosunderlagsversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.meddelandetillapotek",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.meddelandetillapotek",
      "short" : "meddelandetillapotek",
      "definition" : "meddelandetillapotek",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "avbestallorginalforpackning-request.Avbestallningsinfo.onskadleveranstid",
      "path" : "avbestallorginalforpackning-request.Avbestallningsinfo.onskadleveranstid",
      "short" : "onskadleveranstid",
      "definition" : "onskadleveranstid",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
