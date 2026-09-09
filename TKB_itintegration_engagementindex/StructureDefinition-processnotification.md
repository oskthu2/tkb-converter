# ProcessNotification - itintegration: engagementindex v1.0.9

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ProcessNotification**

## Logical Model: ProcessNotification 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification | *Version*:1.0.9 |
| Draft as of 2026-09-09 | *Computable Name*:ProcessNotification |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet ProcessNotification (RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1). Representerar responsens informationsstruktur — ett statusbesked på att notifieringen mottagits och behandlats. 
OBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen: 
* Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.
* Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index. Fr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent (tar emot notifieringar från lokala index). Nationellt EI skickar inte längre ProcessNotification till lokala index eller verksamhetssystem. Undantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag.
 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.itintegration-engagementindex|current/StructureDefinition/StructureDefinition-processnotification.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-processnotification.csv), [Excel](StructureDefinition-processnotification.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "processnotification",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification",
  "version" : "1.0.9",
  "name" : "ProcessNotification",
  "title" : "ProcessNotification",
  "status" : "draft",
  "date" : "2026-09-09T17:04:05+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet ProcessNotification\n(RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).\nRepresenterar responsens informationsstruktur — ett statusbesked\npå att notifieringen mottagits och behandlats.\n\nOBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen:\n- Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.\n- Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index.\nFr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent\n(tar emot notifieringar från lokala index). Nationellt EI skickar inte längre\nProcessNotification till lokala index eller verksamhetssystem.\nUndantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/itintegration-engagementindex/StructureDefinition/processnotification",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "processnotification",
      "path" : "processnotification",
      "short" : "ProcessNotification",
      "definition" : "Logisk modell för tjänstekontraktet ProcessNotification\n(RIV-TA urn:riv:itintegration:engagementindex:ProcessNotification:1).\nRepresenterar responsens informationsstruktur — ett statusbesked\npå att notifieringen mottagits och behandlats.\n\nOBS: ProcessNotification har en ovanlig dubbel roll i arkitekturen:\n- Engagemangsindex agerar PRODUCENT för att TA EMOT notifieringar från andra index.\n- Engagemangsindex agerar KONSUMENT för att SKICKA notifieringar till andra index.\nFr.o.m. version 1.0.9 agerar nationellt engagemangsindex ENBART som producent\n(tar emot notifieringar från lokala index). Nationellt EI skickar inte längre\nProcessNotification till lokala index eller verksamhetssystem.\nUndantag: Formulärtjänsten och Tidbokning/Kallelser har tidsbegränsat undantag."
    },
    {
      "id" : "processnotification.resultCode",
      "path" : "processnotification.resultCode",
      "short" : "Resultatkod",
      "definition" : "Statuskod som anger utfallet av notifieringsoperationen.\nTillåtna värden:\n  OK    — Transaktionen har utförts enligt uppdraget.\n  INFO  — Transaktionen har utförts men det finns ett informationsmeddelande.\n  ERROR — Transaktionen har INTE kunnat utföras p.g.a. logiskt fel.\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "processnotification.comment",
      "path" : "processnotification.comment",
      "short" : "Kommentar",
      "definition" : "Fritext-meddelande med ytterligare information om resultatet.\nAnvänds framförallt vid INFO och ERROR för att ge konsumenten\nmer detaljerad information om vad som hänt.\nKardinalitet: Valfri.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
