# Typ av statusmeddelande (response_detail) - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Typ av statusmeddelande (response_detail)**

## CodeSystem: Typ av statusmeddelande (response_detail) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/patientsummary-responsedetailtypecodes-cs | *Version*:1.0.0 |
| Active as of 2026-09-26 | *Computable Name*:ResponseDetailTypeCodesCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Koder för ResponseDetailTypeCodes i domänschemat. Visningstexter ur TKB avsnitt 2.3 Statusrapportering. 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Typ av statusmeddelande (response_detail)](ValueSet-patientsummary-responsedetailtypecodes-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "patientsummary-responsedetailtypecodes-cs",
  "url" : "https://fhir.inera.se/CodeSystem/patientsummary-responsedetailtypecodes-cs",
  "version" : "1.0.0",
  "name" : "ResponseDetailTypeCodesCS",
  "title" : "Typ av statusmeddelande (response_detail)",
  "status" : "active",
  "date" : "2026-09-26T19:25:56+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Koder för ResponseDetailTypeCodes i domänschemat. Visningstexter ur TKB avsnitt 2.3 Statusrapportering.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "E",
    "display" : "Fel",
    "definition" : "Fel som innebär att anropet inte kunde bearbetas och ingen information returneras."
  },
  {
    "code" : "W",
    "display" : "Varning",
    "definition" : "För GetEhrExtract: problem uppstod som kan påverka det som returneras, men åtminstone partiell information finns. För ReceiveEhrExtract: problem uppstod vid hanteringen, men ingen information har förlorats."
  },
  {
    "code" : "I",
    "display" : "Information",
    "definition" : "Kan skickas oavsett hur bearbetningen av anropet fungerat."
  }]
}

```
