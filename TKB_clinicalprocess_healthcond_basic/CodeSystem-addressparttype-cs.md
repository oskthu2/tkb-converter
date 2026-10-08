# AddressPartTypeEnum - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AddressPartTypeEnum**

## CodeSystem: AddressPartTypeEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/addressparttype-cs | *Version*:1.2.3 |
| Active as of 2026-10-08 | *Computable Name*:AddressPartTypeCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Typ av adressdel (AddressPartType.type), baserat på ISO 21090. Källa: AddressPartTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AddressPartTypeEnum — ValueSet](ValueSet-addressparttype-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "addressparttype-cs",
  "url" : "https://fhir.inera.se/CodeSystem/addressparttype-cs",
  "version" : "1.2.3",
  "name" : "AddressPartTypeCS",
  "title" : "AddressPartTypeEnum",
  "status" : "active",
  "date" : "2026-10-08T18:07:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Typ av adressdel (AddressPartType.type), baserat på ISO 21090. Källa: AddressPartTypeEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "SAL",
    "display" : "Gatuadressrad (används frekvent då man inte vill bryta ned adressrymden i gatutyper, byggnadsnr etc.)"
  },
  {
    "code" : "CAR",
    "display" : "C/O (care of) adress"
  },
  {
    "code" : "CEN",
    "display" : "Områdes- kvartersbenämning (definierar område eller kvarter som berörd adress ligger i, t.ex. SoFo)"
  },
  {
    "code" : "CNT",
    "display" : "Land"
  },
  {
    "code" : "CPA",
    "display" : "Län"
  },
  {
    "code" : "CTY",
    "display" : "Postort"
  },
  {
    "code" : "POB",
    "display" : "Postbox"
  },
  {
    "code" : "ZIP",
    "display" : "Postnummer"
  },
  {
    "code" : "PRE",
    "display" : "Distriktsområde (LKF)"
  },
  {
    "code" : "STA",
    "display" : "Region eller provins"
  }]
}

```
