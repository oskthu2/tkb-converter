# EndConsentByPatient — Request - informationsecurity: authorization: consent v2.0.4

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EndConsentByPatient — Request**

## Logical Model: EndConsentByPatient — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/endconsentbypatient-request | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:EndConsentByPatientRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i EndConsentByPatient (urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.informationsecurity-authorization-consent|current/StructureDefinition/StructureDefinition-endconsentbypatient-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-endconsentbypatient-request.csv), [Excel](StructureDefinition-endconsentbypatient-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "endconsentbypatient-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/endconsentbypatient-request",
  "version" : "1.0",
  "name" : "EndConsentByPatientRequest",
  "title" : "EndConsentByPatient — Request",
  "status" : "active",
  "date" : "2026-11-06T21:27:21+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i EndConsentByPatient\n(urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/informationsecurity-authorization-consent/StructureDefinition/endconsentbypatient-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "endconsentbypatient-request",
      "path" : "endconsentbypatient-request",
      "short" : "EndConsentByPatient — Request",
      "definition" : "Logisk modell för begäran i EndConsentByPatient\n(urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1, EndConsentByPatientType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "endconsentbypatient-request.logicalAddress",
      "path" : "endconsentbypatient-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Som logisk adress anges HSA-id för vårdgivaren som samtycket gäller för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.assertionId",
      "path" : "endconsentbypatient-request.assertionId",
      "short" : "assertionId",
      "definition" : "Unikt id som identifierar det intyg som skall avslutas.",
      "comment" : "TKB-fält: `assertionId` (`urn:riv:informationsecurity:authorization:consent:2:Id`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.patientId",
      "path" : "endconsentbypatient-request.patientId",
      "short" : "patientId",
      "definition" : "Personidentitet på patienten/brukaren vars samtycken skall hämtas.",
      "comment" : "TKB-fält: `patientId` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 1..1).\n\n**Modellanteckning:** En universellt unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "endconsentbypatient-request.patientId.root",
      "path" : "endconsentbypatient-request.patientId.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.patientId.iiExtension",
      "path" : "endconsentbypatient-request.patientId.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.representedById",
      "path" : "endconsentbypatient-request.representedById",
      "short" : "representedById",
      "definition" : "Personidentitet för den företrädare/vårdnadshavare som företräder patienten/brukaren.\n\nSka anges om samtycket avslutas av företrädare/vårdnadshavare.",
      "comment" : "TKB-fält: `representedById` (`urn:riv:informationsecurity:authorization:consent:2:IIType`, kardinalitet 0..1).\n\n**Modellanteckning:** En universellt unik identifierare.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "endconsentbypatient-request.representedById.root",
      "path" : "endconsentbypatient-request.representedById.root",
      "short" : "root",
      "definition" : "root",
      "comment" : "TKB-fält: `../root` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.representedById.iiExtension",
      "path" : "endconsentbypatient-request.representedById.iiExtension",
      "short" : "iiExtension",
      "definition" : "iiExtension Heter extension i schemat.",
      "comment" : "TKB-fält: `../extension` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** iiExtension Heter extension i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "endconsentbypatient-request.endDateTime",
      "path" : "endconsentbypatient-request.endDateTime",
      "short" : "endDateTime",
      "definition" : "Frivillig tidpunkt/tidsstämpel för när samtycket ska avslutas. Tidstämpeln ska som tidigast vara nuvarande tidpunkt, alternativt före en tidigare given sista giltighetstidpunkt som är i framtiden. Om ingen tidpunkt anges ska producenten tolka samtyckets nya giltighetstidpunkt t o m nuvarande tidpunkt.",
      "comment" : "TKB-fält: `endDateTime` (`xs:dateTime`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
