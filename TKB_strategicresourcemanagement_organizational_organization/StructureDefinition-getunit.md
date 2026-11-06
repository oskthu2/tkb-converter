# GetUnit — Response - strategicresourcemanagement: organizational: organization v2.0.0-rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetUnit — Response**

## Logical Model: GetUnit — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/getunit | *Version*:2.0 |
| Draft as of 2026-11-06 | *Computable Name*:GetUnit |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetUnit (urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2, GetUnitResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.strategicresourcemanagement-organizational-organization|current/StructureDefinition/StructureDefinition-getunit.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getunit.csv), [Excel](StructureDefinition-getunit.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getunit",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/getunit",
  "version" : "2.0",
  "name" : "GetUnit",
  "title" : "GetUnit — Response",
  "status" : "draft",
  "date" : "2026-11-06T21:49:07+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetUnit\n(urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2, GetUnitResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/strategicresourcemanagement-organizational-organization/StructureDefinition/getunit",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getunit",
      "path" : "getunit",
      "short" : "GetUnit — Response",
      "definition" : "Logisk modell för svaret i GetUnit\n(urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2, GetUnitResponseType)."
    },
    {
      "id" : "getunit.unit",
      "path" : "getunit.unit",
      "short" : "unit",
      "definition" : "Information om den angivna organisatoriska enheten",
      "comment" : "TKB-fält: `unit` (`unitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.alternateName",
      "path" : "getunit.unit.alternateName",
      "short" : "alternateName",
      "definition" : "Alternativt namn på enheten som används vid sidan av det officiella namnet (se även publicName).",
      "comment" : "TKB-fält: `..alternateName` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.alternateText",
      "path" : "getunit.unit.alternateText",
      "short" : "alternateText",
      "definition" : "Beskrivande text till jpegPhoto/bild på enhet.",
      "comment" : "TKB-fält: `..alternateText` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.businessClassification",
      "path" : "getunit.unit.businessClassification",
      "short" : "businessClassification",
      "definition" : "Verksamhetskod",
      "comment" : "TKB-fält: `..businessClassification` (`BusinessClassificationType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.businessClassification.businessClassificationName",
      "path" : "getunit.unit.businessClassification.businessClassificationName",
      "short" : "businessClassificationName",
      "definition" : "Verksamhetskod(-er) i klartext",
      "comment" : "TKB-fält: `.. ..businessClassificationName` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.businessClassification.businessClassificationCode",
      "path" : "getunit.unit.businessClassification.businessClassificationCode",
      "short" : "businessClassificationCode",
      "definition" : "Verksamhetskod(-er) kod",
      "comment" : "TKB-fält: `.. ..businessClassificationCode` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.businessType",
      "path" : "getunit.unit.businessType",
      "short" : "businessType",
      "definition" : "Klassificering av enhet (t.ex. sjukhus).",
      "comment" : "TKB-fält: `..businessType` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.careType",
      "path" : "getunit.unit.careType",
      "short" : "careType",
      "definition" : "Vårdform.",
      "comment" : "TKB-fält: `..careType` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.countyName",
      "path" : "getunit.unit.countyName",
      "short" : "countyName",
      "definition" : "countyName",
      "comment" : "TKB-fält: `../countyName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.countyCode",
      "path" : "getunit.unit.countyCode",
      "short" : "countyCode",
      "definition" : "Kod för län.",
      "comment" : "TKB-fält: `..countyCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.description",
      "path" : "getunit.unit.description",
      "short" : "description",
      "definition" : "Allmän beskrivning för enheten.",
      "comment" : "TKB-fält: `..description` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.directoryContact",
      "path" : "getunit.unit.directoryContact",
      "short" : "directoryContact",
      "definition" : "Mailadress till ansvarig för informationen om enheten. Uppgiften hämtas från enheten eller från något överliggande objekt (det närmast överliggande objekt där det finns definierat).",
      "comment" : "TKB-fält: `..directoryContact` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.displayOption",
      "path" : "getunit.unit.displayOption",
      "short" : "displayOption",
      "definition" : "Används för att beräkna enhetens publika\n\nnamn (publicName).",
      "comment" : "TKB-fält: `..displayOption` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour",
      "path" : "getunit.unit.dropInHour",
      "short" : "dropInHour",
      "definition" : "Tider för dropin-besök (utan tidbokning).",
      "comment" : "TKB-fält: `..dropInHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour.fromDay",
      "path" : "getunit.unit.dropInHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour.fromTime",
      "path" : "getunit.unit.dropInHour.fromTime",
      "short" : "fromTime",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour.toDay",
      "path" : "getunit.unit.dropInHour.toDay",
      "short" : "toDay",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour.toTime",
      "path" : "getunit.unit.dropInHour.toTime",
      "short" : "toTime",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.dropInHour.comment",
      "path" : "getunit.unit.dropInHour.comment",
      "short" : "comment",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.mail",
      "path" : "getunit.unit.mail",
      "short" : "mail",
      "definition" : "Mailadress till enheten.",
      "comment" : "TKB-fält: `..mail` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.facsimileTelephoneNumber",
      "path" : "getunit.unit.facsimileTelephoneNumber",
      "short" : "facsimileTelephoneNumber",
      "definition" : "facsimileTelephoneNumber",
      "comment" : "TKB-fält: `../facsimileTelephoneNumber` (`TelephoneNumberType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesRt90",
      "path" : "getunit.unit.geographicalCoordinatesRt90",
      "short" : "geographicalCoordinatesRt90",
      "definition" : "Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt RT90.",
      "comment" : "TKB-fält: `..geographicalCoordinatesRt90` (`GeoCoordRt90Type`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesRt90.xCoordinate",
      "path" : "getunit.unit.geographicalCoordinatesRt90.xCoordinate",
      "short" : "xCoordinate",
      "definition" : "X-koordinat.",
      "comment" : "TKB-fält: `.. ..xCoordinate` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesRt90.yCoordinate",
      "path" : "getunit.unit.geographicalCoordinatesRt90.yCoordinate",
      "short" : "yCoordinate",
      "definition" : "Y-koordinat.",
      "comment" : "TKB-fält: `.. ..yCoordinate` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesSWEREF99",
      "path" : "getunit.unit.geographicalCoordinatesSWEREF99",
      "short" : "geographicalCoordinatesSWEREF99",
      "definition" : "Geografiska koordinater för enhetens huvudsakliga fysiska placering. Koordinaterna anges enligt SWEREF99.",
      "comment" : "TKB-fält: `..geographicalCoordinatesSWEREF99` (`GeoCoordSWEREF99Type`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesSWEREF99.nCoordinate",
      "path" : "getunit.unit.geographicalCoordinatesSWEREF99.nCoordinate",
      "short" : "nCoordinate",
      "definition" : "X-koordinat.",
      "comment" : "TKB-fält: `.. ..nCoordinate` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.geographicalCoordinatesSWEREF99.eCoordinate",
      "path" : "getunit.unit.geographicalCoordinatesSWEREF99.eCoordinate",
      "short" : "eCoordinate",
      "definition" : "Y-koordinat.",
      "comment" : "TKB-fält: `.. ..eCoordinate` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.healthCareArea",
      "path" : "getunit.unit.healthCareArea",
      "short" : "healthCareArea",
      "definition" : "Geografiskt definierat område för någon typ av administrativt indelning.",
      "comment" : "TKB-fält: `..healthCareArea` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.destinationIndicator",
      "path" : "getunit.unit.destinationIndicator",
      "short" : "destinationIndicator",
      "definition" : "Anger vilka parter som får ta del av enhetens information.",
      "comment" : "TKB-fält: `..destinationIndicator` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitHsaId",
      "path" : "getunit.unit.unitHsaId",
      "short" : "unitHsaId",
      "definition" : "Enhetens HSA-id",
      "comment" : "TKB-fält: `..unitHsaId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.jpegPhoto",
      "path" : "getunit.unit.jpegPhoto",
      "short" : "jpegPhoto",
      "definition" : "Bild för enheten. Base-64-format.",
      "comment" : "TKB-fält: `..jpegPhoto` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.jpegLogotype",
      "path" : "getunit.unit.jpegLogotype",
      "short" : "jpegLogotype",
      "definition" : "Logotype för enheten. Base-64-format.",
      "comment" : "TKB-fält: `..jpegLogotype` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.labeledUri",
      "path" : "getunit.unit.labeledUri",
      "short" : "labeledUri",
      "definition" : "Fullständig webbadress (inklusive http://  eller https://)",
      "comment" : "TKB-fält: `..labeledUri` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.location",
      "path" : "getunit.unit.location",
      "short" : "location",
      "definition" : "Namn på geografiskt område där enheten i huvudsak är placerad.",
      "comment" : "TKB-fält: `..location` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.webPage1177",
      "path" : "getunit.unit.webPage1177",
      "short" : "webPage1177",
      "definition" : "Länk till Enhetens sida på 1177.se (om enheten är publik och finns på 1177.se)",
      "comment" : "TKB-fält: `..webPage1177` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.management",
      "path" : "getunit.unit.management",
      "short" : "management",
      "definition" : "Ägarform i klartext.",
      "comment" : "TKB-fält: `..management` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.municipalityName",
      "path" : "getunit.unit.municipalityName",
      "short" : "municipalityName",
      "definition" : "municipalityName",
      "comment" : "TKB-fält: `../municipalityName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.municipalityCode",
      "path" : "getunit.unit.municipalityCode",
      "short" : "municipalityCode",
      "definition" : "Kod för kommun.",
      "comment" : "TKB-fält: `..municipalityCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitName",
      "path" : "getunit.unit.unitName",
      "short" : "unitName",
      "definition" : "Namnet på enheten",
      "comment" : "TKB-fält: `..unitName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.patientInformation",
      "path" : "getunit.unit.patientInformation",
      "short" : "patientInformation",
      "definition" : "Informationstext till patienter.",
      "comment" : "TKB-fält: `..patientInformation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.postalAddress",
      "path" : "getunit.unit.postalAddress",
      "short" : "postalAddress",
      "definition" : "Postadress.",
      "comment" : "TKB-fält: `..postalAddress` (`Address`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.postalAddress.addressLine",
      "path" : "getunit.unit.postalAddress.addressLine",
      "short" : "addressLine",
      "definition" : "Adressrad.",
      "comment" : "TKB-fält: `.. ..addressLine` (`String`, kardinalitet 1..n).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.postalCode",
      "path" : "getunit.unit.postalCode",
      "short" : "postalCode",
      "definition" : "Postnummer där verksamheten bedrivs",
      "comment" : "TKB-fält: `..postalCode` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.priceInformation",
      "path" : "getunit.unit.priceInformation",
      "short" : "priceInformation",
      "definition" : "Prisinformation.",
      "comment" : "TKB-fält: `..priceInformation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.publicName",
      "path" : "getunit.unit.publicName",
      "short" : "publicName",
      "definition" : "Publikt officiellt namn.\n\nDet publika namnet beräknas i första hand utifrån enhetens DN tillsammans med värdet i attributet displayOption.\n\nOm displayOption saknas beräknas det publika namnet enligt:\n\nenhetens namn `<blanktecken>` location",
      "comment" : "TKB-fält: `..publicName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.relatedUnitHsaId",
      "path" : "getunit.unit.relatedUnitHsaId",
      "short" : "relatedUnitHsaId",
      "definition" : "HSA-identitet på en enhet som på något sätt hör ihop med aktuell enhet.",
      "comment" : "TKB-fält: `..relatedUnitHsaId` (`String`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.route",
      "path" : "getunit.unit.route",
      "short" : "route",
      "definition" : "Vägbeskrivning.",
      "comment" : "TKB-fält: `..route` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.smsTelephoneNumber",
      "path" : "getunit.unit.smsTelephoneNumber",
      "short" : "smsTelephoneNumber",
      "definition" : "smsTelephoneNumber",
      "comment" : "TKB-fält: `../smsTelephoneNumber` (`TelephoneNumberType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.street",
      "path" : "getunit.unit.street",
      "short" : "street",
      "definition" : "Besöksadress (gatuadress).",
      "comment" : "TKB-fält: `..street` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour",
      "path" : "getunit.unit.surgeryHour",
      "short" : "surgeryHour",
      "definition" : "Öppettider.",
      "comment" : "TKB-fält: `..surgeryHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour.fromDay",
      "path" : "getunit.unit.surgeryHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour.fromTime",
      "path" : "getunit.unit.surgeryHour.fromTime",
      "short" : "fromTime",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour.toDay",
      "path" : "getunit.unit.surgeryHour.toDay",
      "short" : "toDay",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour.toTime",
      "path" : "getunit.unit.surgeryHour.toTime",
      "short" : "toTime",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.surgeryHour.comment",
      "path" : "getunit.unit.surgeryHour.comment",
      "short" : "comment",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.switchboardNumber",
      "path" : "getunit.unit.switchboardNumber",
      "short" : "switchboardNumber",
      "definition" : "Telefonnummer till växel",
      "comment" : "TKB-fält: `..switchboardNumber` (`Telefon`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour",
      "path" : "getunit.unit.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "Telefontider",
      "comment" : "TKB-fält: `..telephoneHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour.fromDay",
      "path" : "getunit.unit.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour.fromTime",
      "path" : "getunit.unit.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour.toDay",
      "path" : "getunit.unit.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour.toTime",
      "path" : "getunit.unit.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.telephoneHour.comment",
      "path" : "getunit.unit.telephoneHour.comment",
      "short" : "comment",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.telephoneNumber",
      "path" : "getunit.unit.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "Publikt direkttelefonnummer.",
      "comment" : "TKB-fält: `..telephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.textTelephoneNumber",
      "path" : "getunit.unit.textTelephoneNumber",
      "short" : "textTelephoneNumber",
      "definition" : "Texttelefonnummer för personer med tal- eller hörselhandikapp.",
      "comment" : "TKB-fält: `..textTelephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitExtraInformation",
      "path" : "getunit.unit.unitExtraInformation",
      "short" : "unitExtraInformation",
      "definition" : "Kompletterande information om enheten",
      "comment" : "TKB-fält: `..unitExtraInformation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction",
      "path" : "getunit.unit.unitFunction",
      "short" : "unitFunction",
      "definition" : "Information från direkt underliggande funktionsobjekt med  reservera funktionsnamn Avbokning Rådgivning",
      "comment" : "TKB-fält: `..unitFunction` (`UnitFunctionType`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.unitFunctionName",
      "path" : "getunit.unit.unitFunction.unitFunctionName",
      "short" : "unitFunctionName",
      "definition" : "unktionens namn (se ).",
      "comment" : "TKB-fält: `.. ..name` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** unitFunctionName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour",
      "path" : "getunit.unit.unitFunction.telephoneHour",
      "short" : "telephoneHour",
      "definition" : "Telefontider för telefonnummer i parametern telephoneNumber.",
      "comment" : "TKB-fält: `.. ..telephoneHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour.fromDay",
      "path" : "getunit.unit.unitFunction.telephoneHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. .. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour.fromTime",
      "path" : "getunit.unit.unitFunction.telephoneHour.fromTime",
      "short" : "fromTime",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. .. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour.toDay",
      "path" : "getunit.unit.unitFunction.telephoneHour.toDay",
      "short" : "toDay",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. .. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour.toTime",
      "path" : "getunit.unit.unitFunction.telephoneHour.toTime",
      "short" : "toTime",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. .. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneHour.comment",
      "path" : "getunit.unit.unitFunction.telephoneHour.comment",
      "short" : "comment",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. .. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitFunction.telephoneNumber",
      "path" : "getunit.unit.unitFunction.telephoneNumber",
      "short" : "telephoneNumber",
      "definition" : "Publikt direkttelefonnummer.",
      "comment" : "TKB-fält: `.. ..telephoneNumber` (`Telefon`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitTemporaryInformation",
      "path" : "getunit.unit.unitTemporaryInformation",
      "short" : "unitTemporaryInformation",
      "definition" : "Tillfällig information om enheten.",
      "comment" : "TKB-fält: `..unitTemporaryInformation` (`DateSpan`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.unitTemporaryInformation.fromDate",
      "path" : "getunit.unit.unitTemporaryInformation.fromDate",
      "short" : "fromDate",
      "definition" : "Från datum. Exempel: 20101123",
      "comment" : "TKB-fält: `.. ..fromDate` (`String`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitTemporaryInformation.toDate",
      "path" : "getunit.unit.unitTemporaryInformation.toDate",
      "short" : "toDate",
      "definition" : "Till datum. Exempel: 20101131",
      "comment" : "TKB-fält: `.. ..toDate` (`String`, kardinalitet 0..1).\n\nObs: modellen anger 1..1 där TKB:n anger 0..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitTemporaryInformation.temporaryInformation",
      "path" : "getunit.unit.unitTemporaryInformation.temporaryInformation",
      "short" : "temporaryInformation",
      "definition" : "Tillfällig information",
      "comment" : "TKB-fält: `.. ..temporaryInformation` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour",
      "path" : "getunit.unit.visitingHour",
      "short" : "visitingHour",
      "definition" : "Besökstider för anhöriga.",
      "comment" : "TKB-fält: `..visitingHour` (`TimeSpan`, kardinalitet 0..n).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour.fromDay",
      "path" : "getunit.unit.visitingHour.fromDay",
      "short" : "fromDay",
      "definition" : "Från dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..fromDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour.fromTime",
      "path" : "getunit.unit.visitingHour.fromTime",
      "short" : "fromTime",
      "definition" : "Från tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..fromTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour.toDay",
      "path" : "getunit.unit.visitingHour.toDay",
      "short" : "toDay",
      "definition" : "Till dag. Måndag (1) – Söndag (7).",
      "comment" : "TKB-fält: `.. ..toDay` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour.toTime",
      "path" : "getunit.unit.visitingHour.toTime",
      "short" : "toTime",
      "definition" : "Till tid. Format enligt ISO-8601.",
      "comment" : "TKB-fält: `.. ..toTime` (`Time`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "time"
      }]
    },
    {
      "id" : "getunit.unit.visitingHour.comment",
      "path" : "getunit.unit.visitingHour.comment",
      "short" : "comment",
      "definition" : "Information om aktuellt tidsintervall.",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingRuleAge",
      "path" : "getunit.unit.visitingRuleAge",
      "short" : "visitingRuleAge",
      "definition" : "Åldersintervall på patienter som tas emot.",
      "comment" : "TKB-fält: `..visitingRuleAge` (`AgeSpan`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getunit.unit.visitingRuleAge.fromAge",
      "path" : "getunit.unit.visitingRuleAge.fromAge",
      "short" : "fromAge",
      "definition" : "Från ålder. 00 för nyfödd.",
      "comment" : "TKB-fält: `.. ..fromAge` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingRuleAge.toAge",
      "path" : "getunit.unit.visitingRuleAge.toAge",
      "short" : "toAge",
      "definition" : "Till ålder. 99 för ingen övre åldersgräns.",
      "comment" : "TKB-fält: `.. ..toAge` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingRuleAge.comment",
      "path" : "getunit.unit.visitingRuleAge.comment",
      "short" : "comment",
      "definition" : "Kommentar till åldersintervallet",
      "comment" : "TKB-fält: `.. ..comment` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.referralRules",
      "path" : "getunit.unit.referralRules",
      "short" : "referralRules",
      "definition" : "Beskrivning av remisskrav.",
      "comment" : "TKB-fält: `..referralRules` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.visitingRules",
      "path" : "getunit.unit.visitingRules",
      "short" : "visitingRules",
      "definition" : "Besöksregler",
      "comment" : "TKB-fält: `..visitingRules` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getunit.unit.unitStartDate",
      "path" : "getunit.unit.unitStartDate",
      "short" : "unitStartDate",
      "definition" : "Startdatum för enhetens verksamhet",
      "comment" : "TKB-fält: `..unitStartDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getunit.unit.unitEndDate",
      "path" : "getunit.unit.unitEndDate",
      "short" : "unitEndDate",
      "definition" : "Slutdatum för enhetens verksamhet",
      "comment" : "TKB-fält: `..unitEndDate` (`dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getunit.unit.feignedUnit",
      "path" : "getunit.unit.feignedUnit",
      "short" : "feignedUnit",
      "definition" : "feignedUnit",
      "comment" : "TKB-fält: `../feignedUnit` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
