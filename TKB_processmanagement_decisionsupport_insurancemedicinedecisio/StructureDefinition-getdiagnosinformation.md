# GetDiagnosInformation - processmanagement: decisionsupport: insurancemedicinedecisionsupport v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetDiagnosInformation**

## Logical Model: GetDiagnosInformation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation | *Version*:1.0 |
| Active as of 2026-11-06 | *Computable Name*:GetDiagnosInformation |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetDiagnosInformation (RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1). Representerar responsens informationsstruktur — generell information om diagnoser. Sådan information kan gälla för en eller flera diagnoser samtidigt. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.processmanagement-decisionsupport-insurancemedicinedecisio|current/StructureDefinition/StructureDefinition-getdiagnosinformation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getdiagnosinformation.csv), [Excel](StructureDefinition-getdiagnosinformation.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getdiagnosinformation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation",
  "version" : "1.0",
  "name" : "GetDiagnosInformation",
  "title" : "GetDiagnosInformation",
  "status" : "active",
  "date" : "2026-11-06T21:43:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetDiagnosInformation\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).\nRepresenterar responsens informationsstruktur — generell information om diagnoser.\nSådan information kan gälla för en eller flera diagnoser samtidigt.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/processmanagement-decisionsupport-insurancemedicinedecisio/StructureDefinition/getdiagnosinformation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getdiagnosinformation",
      "path" : "getdiagnosinformation",
      "short" : "GetDiagnosInformation",
      "definition" : "Logisk modell för tjänstekontraktet GetDiagnosInformation\n(RIV-TA urn:riv:processmanagement:decisionsupport:insurancemedicinedecisionsupport:GetDiagnosInformation:1).\nRepresenterar responsens informationsstruktur — generell information om diagnoser.\nSådan information kan gälla för en eller flera diagnoser samtidigt."
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation",
      "path" : "getdiagnosinformation.diagnosInformation",
      "short" : "Diagnosinformation",
      "definition" : "Diagnosinformation",
      "comment" : "TKB-fält: `diagnosInformation` (`diagnosInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.informationsId",
      "path" : "getdiagnosinformation.diagnosInformation.informationsId",
      "short" : "Identitet för diagnosinformationen",
      "definition" : "Identitet för diagnosinformationen",
      "comment" : "TKB-fält: `../informationsId` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.giltighetsTidStart",
      "path" : "getdiagnosinformation.diagnosInformation.giltighetsTidStart",
      "short" : "Giltighetstid — starttid",
      "definition" : "Starttiden i intervallet skall alltid anges.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.giltighetsTidSlut",
      "path" : "getdiagnosinformation.diagnosInformation.giltighetsTidSlut",
      "short" : "Giltighetstid — sluttid",
      "definition" : "Om sluttid ej anges är diagnosinformationen aktiv.\nDiagnosinformation som inte är aktiv skall innehålla ett slutdatum som ligger tidigare\nän aktuellt datum, eller ett startdatum som ligger senare än aktuellt datum.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.version",
      "path" : "getdiagnosinformation.diagnosInformation.version",
      "short" : "Versionsnummer för diagnosinformationen",
      "definition" : "Versionsnummer för diagnosinformationen. Versionen räknas upp när diagnosinformationen förändrats i sin innebörd eller ändrar giltighetstid.",
      "comment" : "TKB-fält: `../version` (`Int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.rubrik",
      "path" : "getdiagnosinformation.diagnosInformation.rubrik",
      "short" : "Rubrik för diagnosinformationen",
      "definition" : "Rubriken för diagnosinformationen",
      "comment" : "TKB-fält: `../rubrik` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransningBeskrivning",
      "path" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransningBeskrivning",
      "short" : "Beskrivning av aktivitetsbegränsningar",
      "definition" : "En beskrivande text för aktivitetsbegränsningar förknippade med diagnosen.",
      "comment" : "TKB-fält: `../aktivitetsbegransningBeskrivning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.funktionsnedsattningsBeskrivning",
      "path" : "getdiagnosinformation.diagnosInformation.funktionsnedsattningsBeskrivning",
      "short" : "Beskrivning av funktionsnedsättningar",
      "definition" : "En beskrivande text för funktionsnedsättningar förknippade med diagnosen.",
      "comment" : "TKB-fält: `../funktionsnedsattningsBeskrivning` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.senastAndrad",
      "path" : "getdiagnosinformation.diagnosInformation.senastAndrad",
      "short" : "Tidpunkt när diagnosinformationen senast ändrades",
      "definition" : "Anger när ett beslutsunderlag senast ändrats",
      "comment" : "TKB-fält: `../senastAndrad` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.huvuddiagnos",
      "path" : "getdiagnosinformation.diagnosInformation.huvuddiagnos",
      "short" : "Huvuddiagnos",
      "definition" : "Huvuddiagnos",
      "comment" : "TKB-fält: `../huvuddiagnos` (`HuvuddiagnosType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.huvuddiagnos.varde",
      "path" : "getdiagnosinformation.diagnosInformation.huvuddiagnos.varde",
      "short" : "Diagnos angiven med ICD-10-SE-kod",
      "definition" : "Diagnos som anges med kod. (Kod för den typ av observation som avses.) Anges med ICD-10-SE kodverket.",
      "comment" : "TKB-fält: `../../varde` (`CVtype`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransning",
      "path" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransning",
      "short" : "Aktivitetsbegränsning",
      "definition" : "Innehåller information om en eller flera aktivitetsbegränsning som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar.",
      "comment" : "TKB-fält: `../aktivitetsbegransning` (`AktivitetsbegransningType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransning.kod",
      "path" : "getdiagnosinformation.diagnosInformation.aktivitetsbegransning.kod",
      "short" : "Kod som anger aktivitetsbegränsning",
      "definition" : "Kod som anger Aktivitetsbegränsning",
      "comment" : "TKB-fält: `../../kod` (`CVtype`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.funktionsnedsattning",
      "path" : "getdiagnosinformation.diagnosInformation.funktionsnedsattning",
      "short" : "Funktionsnedsättning",
      "definition" : "Innehåller information om en eller flera funktionsnedsättningar som vanligt förekommer för den eller de diagnoser som diagnosgruppen omfattar.",
      "comment" : "TKB-fält: `../funktionsnedsattning` (`FunktionsnedsattningType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.funktionsnedsattning.kod",
      "path" : "getdiagnosinformation.diagnosInformation.funktionsnedsattning.kod",
      "short" : "Kod som anger funktionsnedsättning",
      "definition" : "Kod som anger Funktionsnedsättning",
      "comment" : "TKB-fält: `../../kod` (`CVtype`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation",
      "path" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation",
      "short" : "Övrig FMB-information",
      "definition" : "Övrig FMB-information",
      "comment" : "TKB-fält: `../ovrigFmbInformation` (`OvrigFmbInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation.symtomPrognosBehandling",
      "path" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation.symtomPrognosBehandling",
      "short" : "Allmän information om symtom, prognos och behandling",
      "definition" : "Allmän information om symtom, prognos samt behandling.",
      "comment" : "TKB-fält: `../../symtomPrognosBehandling` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation.generellInformation",
      "path" : "getdiagnosinformation.diagnosInformation.ovrigFmbInformation.generellInformation",
      "short" : "Information av betydelse för bedömning av sjukskrivningsbehov",
      "definition" : "Information av betydelse för bedömning av behovet av sjukskrivning.",
      "comment" : "TKB-fält: `../../generellInformation` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getdiagnosinformation.fmbVersion",
      "path" : "getdiagnosinformation.fmbVersion",
      "short" : "Versionsinformation för hela FMB",
      "definition" : "Versionsinformation för hela FMB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getdiagnosinformation.fmbVersion.senasteVersionsuppdatering",
      "path" : "getdiagnosinformation.fmbVersion.senasteVersionsuppdatering",
      "short" : "Tidpunkt för senaste versionsuppdatering bland all diagnosinformation",
      "definition" : "Anger när diagnosinformation senast bytte versionsnummer (skapades, ändrade innebörd eller togs bort) bland alla diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret som föranlett ett nytt datum.",
      "comment" : "TKB-fält: `../senasteVersionsuppdatering` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getdiagnosinformation.fmbVersion.senasteAndring",
      "path" : "getdiagnosinformation.fmbVersion.senasteAndring",
      "short" : "Tidpunkt för senaste ändring bland all diagnosinformation",
      "definition" : "Anger när diagnosinformation senast uppdaterades, både mindre förändringar som ej givit en ny version OCH versionsuppdateringar bland alla producentens diagnosinformation, dvs det kan vara diagnosinformation som ej returnerats i svaret.",
      "comment" : "TKB-fält: `../senasteAndring` (`dateTime`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
