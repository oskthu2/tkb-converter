# GetListing - crm: carelisting v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetListing**

## Logical Model: GetListing 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlisting | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetListing |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval) (RIV-TA urn:riv:crm:carelisting:GetListingResponder:1). Representerar responsens informationsstruktur. Hämtar information om en persons aktiva listning (tjänsteval). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-carelisting|current/StructureDefinition/StructureDefinition-getlisting.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlisting.csv), [Excel](StructureDefinition-getlisting.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlisting",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlisting",
  "version" : "1.0",
  "name" : "GetListing",
  "title" : "GetListing",
  "status" : "active",
  "date" : "2026-11-06T21:10:46+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:GetListingResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar information om en persons aktiva listning (tjänsteval).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-carelisting/StructureDefinition/getlisting",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlisting",
      "path" : "getlisting",
      "short" : "GetListing",
      "definition" : "Logisk modell för tjänstekontraktet GetListing (Visa tjänsteval)\n(RIV-TA urn:riv:crm:carelisting:GetListingResponder:1).\nRepresenterar responsens informationsstruktur.\nHämtar information om en persons aktiva listning (tjänsteval)."
    },
    {
      "id" : "getlisting.subjectOfCare",
      "path" : "getlisting.subjectOfCare",
      "short" : "En persons listningar",
      "definition" : "En persons listningar.",
      "comment" : "TKB-fält: `subjectOfCare` (`SubjectOfCare`, kardinalitet 1..1).\n\n**Modellanteckning:** SubjectOfCare: root-element som beskriver tjänsteval för en person.\nPostCondition: tillgängliga listningstyper för en listnings vårdenhet är utelämnad.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.personId",
      "path" : "getlisting.subjectOfCare.personId",
      "short" : "Identitetsbeteckning för vård- och omsorgstagaren",
      "definition" : "Identitetsbeteckning för vård- och omsorgstagaren.",
      "comment" : "TKB-fält: `subjectOfCare.personId` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Personnummer, samordningsnummer eller reservnummer för vård- och omsorgstagaren.\nPattern: (([1-9]\\d{7})|(\\d{6}))[\\-]?\\d{4}",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing",
      "path" : "getlisting.subjectOfCare.listing",
      "short" : "En listning för personen",
      "definition" : "En listning för personen. PostCondition: tillgängliga listningstyper för listningens vårdenhet är utelämnad.",
      "comment" : "TKB-fält: `subjectOfCare.listing` (`Listing`, kardinalitet 0..*).\n\n**Modellanteckning:** En persons listning, dvs. en koppling till en vårdenhet och optionellt en resurs.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.validFromDate",
      "path" : "getlisting.subjectOfCare.listing.validFromDate",
      "short" : "Datum för när listningen började gälla",
      "definition" : "Datum för när listningen började gälla.",
      "comment" : "TKB-fält: `subjectOfCare.listing.validFromDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.validToDate",
      "path" : "getlisting.subjectOfCare.listing.validToDate",
      "short" : "Datum när listningen slutade gälla",
      "definition" : "Datum när listningen slutade gälla. Om datum saknas är det implicit obestämt in i framtiden.",
      "comment" : "TKB-fält: `subjectOfCare.listing.validToDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.listingType",
      "path" : "getlisting.subjectOfCare.listing.listingType",
      "short" : "Typ av listning",
      "definition" : "Typ av listning, t.ex. BVC, HLM, FL.",
      "comment" : "TKB-fält: `subjectOfCare.listing.listingType` (`string (ListingType)`, kardinalitet 1..1).\n\n**Modellanteckning:** Typ av listning, t.ex. BVC, HLM, FL.\nListningstyp saknar centralt kodverk — se QUESTIONS.md.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.healthcareFacility",
      "path" : "getlisting.subjectOfCare.listing.healthcareFacility",
      "short" : "Vårdinrättning som ansvarar för personen",
      "definition" : "Vårdinrättning/vårdenhet som ansvarar för personen.",
      "comment" : "TKB-fält: `subjectOfCare.listing.healthcare_facility` (`Facility`, kardinalitet 1..1).\n\n**Modellanteckning:** Facility: Vårdinrättning/vårdenhet som ansvarar för personen som listat sig hos dem.\nDet är denna inrättning som för ekonomisk ersättning för personen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.healthcareFacility.facilityId",
      "path" : "getlisting.subjectOfCare.listing.healthcareFacility.facilityId",
      "short" : "HSA-ID för vårdenheten",
      "definition" : "HSA-ID för vårdenheten.",
      "comment" : "TKB-fält: `subjectOfCare.listing.healthcare_facility.facilityId` (`string (HsaIdType)`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-ID eller alternativt Orgnr+lokalt id för vårdenheten.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA-id).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.healthcareFacility.facilityName",
      "path" : "getlisting.subjectOfCare.listing.healthcareFacility.facilityName",
      "short" : "Namn på vårdenheten",
      "definition" : "Namn på vårdenheten.",
      "comment" : "TKB-fält: `subjectOfCare.listing.healthcare_facility.facilityName` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Enhetens officiella namn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.healthcareFacility.hasQueue",
      "path" : "getlisting.subjectOfCare.listing.healthcareFacility.hasQueue",
      "short" : "Indikerar om vårdenheten har kö",
      "definition" : "Indikerar om vårdenheten har kö vid listningar.",
      "comment" : "TKB-fält: `subjectOfCare.listing.healthcare_facility.hasQueue` (`boolean`, kardinalitet 0..1).\n\n**Modellanteckning:** Boolskt värde som indikerar om vårdenheten har kö vid listningar.\nKan utelämnas om information inte har någon betydelse i kontexten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.healthcareFacility.supportedListingTypes",
      "path" : "getlisting.subjectOfCare.listing.healthcareFacility.supportedListingTypes",
      "short" : "Listningstyper som vårdenheten stödjer",
      "definition" : "Lista med listningstyper som vårdenheten stödjer. Utelämnas i GetListing-svaret (per postcondition).",
      "comment" : "TKB-fält: `subjectOfCare.listing.healthcare_facility.supportedListingTypes` (`string`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.resource",
      "path" : "getlisting.subjectOfCare.listing.resource",
      "short" : "Specifik resurs som utför listningstjänsten",
      "definition" : "Specifik resurs som utför listningstjänsten, t.ex. en läkare eller husläkarteam.",
      "comment" : "TKB-fält: `subjectOfCare.listing.resource` (`Resource`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.resource.resourceId",
      "path" : "getlisting.subjectOfCare.listing.resource.resourceId",
      "short" : "HSA-ID för resursen",
      "definition" : "HSA-ID för resursen.",
      "comment" : "TKB-fält: `subjectOfCare.listing.resource.resourceId` (`string (HsaIdType)`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-ID för resursen (personal).\nI de fall HSA-id inte finns tillgängligt kan alternativ id-beteckning användas.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlisting.subjectOfCare.listing.resource.resourceName",
      "path" : "getlisting.subjectOfCare.listing.resource.resourceName",
      "short" : "Namn på vårdgivaren",
      "definition" : "Namn på vårdgivaren.",
      "comment" : "TKB-fält: `subjectOfCare.listing.resource.resourceName` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Aktuell persons förnamn och efternamn.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
