# FormCategory - infrastructure: supportservices: forminteraction v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **FormCategory**

## CodeSystem: FormCategory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/formcategory-cs | *Version*:2.0.0 |
| Active as of 2026-09-09 | *Computable Name*:FormCategoryCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för formulärets kategori (KV Formulärkategori) enligt infrastructure:supportservices:forminteraction v2.0. Definierar formulärets typ. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [FormCategory — ValueSet](ValueSet-formcategory-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "formcategory-cs",
  "url" : "https://fhir.inera.se/CodeSystem/formcategory-cs",
  "version" : "2.0.0",
  "name" : "FormCategoryCS",
  "title" : "FormCategory",
  "status" : "active",
  "date" : "2026-09-09T17:02:06+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för formulärets kategori (KV Formulärkategori) enligt infrastructure:supportservices:forminteraction v2.0. Definierar formulärets typ.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "fragment",
  "concept" : [{
    "code" : "HEALTH_DECLARATION",
    "display" : "Hälsodeklaration",
    "definition" : "Formulär av typen hälsodeklaration"
  },
  {
    "code" : "SURVEY",
    "display" : "Enkät",
    "definition" : "Formulär av typen enkät"
  },
  {
    "code" : "REGISTRATION",
    "display" : "Registrering/anmälan",
    "definition" : "Formulär av typen registrering eller anmälan"
  }]
}

```
