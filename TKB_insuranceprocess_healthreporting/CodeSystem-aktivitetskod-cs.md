# Aktivitetskod - insuranceprocess: healthreporting v3.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aktivitetskod**

## CodeSystem: Aktivitetskod 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/CodeSystem/aktivitetskod-cs | *Version*:3.1.0 |
| Active as of 2026-09-09 | *Computable Name*:AktivitetskodCS |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Kodverk för aktivitetskoder i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [Aktivitetskod — ValueSet](ValueSet-aktivitetskod-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "aktivitetskod-cs",
  "url" : "https://fhir.inera.se/CodeSystem/aktivitetskod-cs",
  "version" : "3.1.0",
  "name" : "AktivitetskodCS",
  "title" : "Aktivitetskod",
  "status" : "active",
  "date" : "2026-09-09T17:03:03+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Kodverk för aktivitetskoder i tjänstekontraktet RegisterMedicalCertificate (blankett FK7263).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "AVSTANGNING_ENLIGT_SM_L_PGA_SMITTA",
    "display" : "Avstängning enligt SmL pga smitta",
    "definition" : "Fält 1"
  },
  {
    "code" : "PATIENTEN_BEHOVER_FA_KONTAKT_MED_ARBETSFORMEDLINGEN",
    "display" : "Patienten behöver få kontakt med Arbetsförmedlingen",
    "definition" : "Fält 6a"
  },
  {
    "code" : "PATIENTEN_BEHOVER_FA_KONTAKT_MED_FORETAGSHALSOVARDEN",
    "display" : "Patienten behöver få kontakt med företagshälsovården",
    "definition" : "Fält 6a"
  },
  {
    "code" : "OVRIGT",
    "display" : "Övrigt",
    "definition" : "Fält 6a - Övrigt"
  },
  {
    "code" : "PLANERAD_ELLER_PAGAENDE_BEHANDLING_ELLER_ATGARD_INOM_SJUKVARDEN",
    "display" : "Planerad eller pågående behandling eller åtgärd inom sjukvården",
    "definition" : "Fält 6b"
  },
  {
    "code" : "PLANERAD_ELLER_PAGAENDE_ANNAN_ATGARD",
    "display" : "Planerad eller pågående annan åtgärd",
    "definition" : "Fält 6b"
  },
  {
    "code" : "ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL",
    "display" : "Arbetslivsinriktad rehabilitering är aktuell",
    "definition" : "Fält 7 - Ja"
  },
  {
    "code" : "ARBETSLIVSINRIKTAD_REHABILITERING_AR_EJ_AKTUELL",
    "display" : "Arbetslivsinriktad rehabilitering är ej aktuell",
    "definition" : "Fält 7 - Nej"
  },
  {
    "code" : "GAR_EJ_ATT_BEDOMMA_OM_ARBETSLIVSINRIKTAD_REHABILITERING_AR_AKTUELL",
    "display" : "Går ej att bedöma om arbetslivsinriktad rehabilitering är aktuell",
    "definition" : "Fält 7 - Går ej att bedömma"
  },
  {
    "code" : "FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_EJ_AKTUELLT",
    "display" : "Förändrat ressätt till arbetsplatsen är ej aktuellt",
    "definition" : "Fält 11 - Nej"
  },
  {
    "code" : "FORANDRAT_RESSATT_TILL_ARBETSPLATSEN_AR_AKTUELLT",
    "display" : "Förändrat ressätt till arbetsplatsen är aktuellt",
    "definition" : "Fält 11 - Ja"
  },
  {
    "code" : "KONTAKT_MED_FORSAKRINGSKASSAN_AR_AKTUELL",
    "display" : "Kontakt med Försäkringskassan är aktuell",
    "definition" : "Fält 12"
  }]
}

```
