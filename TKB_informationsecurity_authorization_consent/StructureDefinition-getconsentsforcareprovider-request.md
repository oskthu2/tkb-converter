# GetConsentsForCareProvider — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetConsentsForCareProvider — Request**

## Logical Model: GetConsentsForCareProvider — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider-request | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetConsentsForCareProviderRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i GetConsentsForCareProvider (urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-getconsentsforcareprovider-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getconsentsforcareprovider-request.csv), [Excel](StructureDefinition-getconsentsforcareprovider-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getconsentsforcareprovider-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider-request",
  "version" : "2.0",
  "name" : "GetConsentsForCareProviderRequest",
  "title" : "GetConsentsForCareProvider — Request",
  "status" : "active",
  "date" : "2026-11-09T03:35:51+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i GetConsentsForCareProvider\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/getconsentsforcareprovider-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getconsentsforcareprovider-request",
      "path" : "getconsentsforcareprovider-request",
      "short" : "GetConsentsForCareProvider — Request",
      "definition" : "Logisk modell för begäran i GetConsentsForCareProvider\n(urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2, GetConsentsForCareProviderType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "getconsentsforcareprovider-request.careProviderId",
      "path" : "getconsentsforcareprovider-request.careProviderId",
      "short" : "careProviderId",
      "definition" : "HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas.",
      "comment" : "TKB-fält: `careProviderId` (`urn:riv:informationsecurity:authorization:consent:2:HsaId`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getconsentsforcareprovider-request.createdOnOrAfter",
      "path" : "getconsentsforcareprovider-request.createdOnOrAfter",
      "short" : "createdOnOrAfter",
      "definition" : "Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras.",
      "comment" : "TKB-fält: `createdOnOrAfter` (`xs:DateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getconsentsforcareprovider-request.getCancelledFlag",
      "path" : "getconsentsforcareprovider-request.getCancelledFlag",
      "short" : "getCancelledFlag",
      "definition" : "Flagga som avgör om makulerade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras.",
      "comment" : "TKB-fält: `getCancelledFlag` (`xs:Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
