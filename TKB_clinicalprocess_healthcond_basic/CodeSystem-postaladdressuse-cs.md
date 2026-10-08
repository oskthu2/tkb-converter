# PostalAddressUseEnum - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PostalAddressUseEnum**

## CodeSystem: PostalAddressUseEnum 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/postaladdressuse-cs | *Version*:1.2.3 |
| Active as of 2026-10-08 | *Computable Name*:PostalAddressUseCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Användningskod för adress (AddressType.use). Källa: PostalAddressUseEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [PostalAddressUseEnum — ValueSet](ValueSet-postaladdressuse-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "postaladdressuse-cs",
  "url" : "https://fhir.inera.se/CodeSystem/postaladdressuse-cs",
  "version" : "1.2.3",
  "name" : "PostalAddressUseCS",
  "title" : "PostalAddressUseEnum",
  "status" : "active",
  "date" : "2026-10-08T18:07:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Användningskod för adress (AddressType.use). Källa: PostalAddressUseEnum i clinicalprocess_healthcond_basic_enum_1.2.xsd.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "PHYS",
    "display" : "Adress till fysisk plats/besöksadress"
  },
  {
    "code" : "H",
    "display" : "Hemadress"
  },
  {
    "code" : "HV",
    "display" : "Semesteradress"
  },
  {
    "code" : "WP",
    "display" : "Adress till arbetsplats"
  },
  {
    "code" : "TMP",
    "display" : "Tillfällig adress"
  }]
}

```
