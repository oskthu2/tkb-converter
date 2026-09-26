# LasLFVardsystem — Response - se.apotekensservice: lf — Läkemedelsförteckningen för vårdsystem v7.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LasLFVardsystem — Response**

## Logical Model: LasLFVardsystem — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem | *Version*:7.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:LasLFVardsystem |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i LasLFVardsystem (urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-lf|current/StructureDefinition/StructureDefinition-laslfvardsystem.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-laslfvardsystem.csv), [Excel](StructureDefinition-laslfvardsystem.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "laslfvardsystem",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem",
  "version" : "7.0.0",
  "name" : "LasLFVardsystem",
  "title" : "LasLFVardsystem — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:43:55+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i LasLFVardsystem\n(urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-lf/StructureDefinition/laslfvardsystem",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "laslfvardsystem",
      "path" : "laslfvardsystem",
      "short" : "LasLFVardsystem — Response",
      "definition" : "Logisk modell för svaret i LasLFVardsystem\n(urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4, LasLFVardsystemResponseType)."
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning",
      "path" : "laslfvardsystem.lakemedelsforteckning",
      "short" : "lakemedelsforteckning",
      "definition" : "Patientens läkemedelsförteckning. Om patienten saknar poster i läkemedelsförteckningen så returneras en tom lista.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.aktorsExpeditionsId",
      "path" : "laslfvardsystem.lakemedelsforteckning.aktorsExpeditionsId",
      "short" : "aktorsExpeditionsId",
      "definition" : "Aktörens expeditionsId",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.antalForpackningar",
      "path" : "laslfvardsystem.lakemedelsforteckning.antalForpackningar",
      "short" : "antalForpackningar",
      "definition" : "Antal förpackningar av utlämnad vara. Obligatorisk parameter om posten ej är en dosdispenserad artikel",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.antalPillerKlartext",
      "path" : "laslfvardsystem.lakemedelsforteckning.antalPillerKlartext",
      "short" : "antalPillerKlartext",
      "definition" : "Summa antal avdelade doser inklusive enhet. Angiven om posten är en dosdispenserad artikel.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation",
      "short" : "artikelinformation",
      "definition" : "Information om expedierad artikel.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalEnhet",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalEnhet",
      "short" : "antalEnhet",
      "definition" : "Antalets enhet. Exempelvis 'styck' eller 'milliliter'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalIForpackning",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalIForpackning",
      "short" : "antalIForpackning",
      "definition" : "Antal i förpackning. Numerisk angivelse, exempelvis '0,72'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalYtterstaForpackning",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalYtterstaForpackning",
      "short" : "antalYtterstaForpackning",
      "definition" : "Antal multipel 2. Antal yttersta förpackningar för artikeln, exempelvis '6'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalYttreForpackning",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.antalYttreForpackning",
      "short" : "antalYttreForpackning",
      "definition" : "Antal multipel 1. Antal yttre förpackningar som varan har, exempelvis '5'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.atckod",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.atckod",
      "short" : "atckod",
      "definition" : "ATC-kod vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.atckodKlartext",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.atckodKlartext",
      "short" : "atckodKlartext",
      "definition" : "Verksamt ämne vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.forpackningsstorlek",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.forpackningsstorlek",
      "short" : "forpackningsstorlek",
      "definition" : "Förpackningsstorlek vid inläsningstillfället, exempelvis '6x5x0,72 milliliter'. Ej angivet för dosdispenserade artiklar.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.forpackningstyp",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.forpackningstyp",
      "short" : "forpackningstyp",
      "definition" : "Beskrivning av artikelns förpackningstyp vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.intressent",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.intressent",
      "short" : "intressent",
      "definition" : "Ansvarig intressent för artikeln. Värde kan hämtas från olika fält i VARA beroende på artikel. Exempelvis parallellimportör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.lakemedelsform",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.lakemedelsform",
      "short" : "lakemedelsform",
      "definition" : "Läkemedelsform vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.lakemedelsformKod",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.lakemedelsformKod",
      "short" : "lakemedelsformKod",
      "definition" : "Kod för läkemedelsform (beredningsformkod).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.nplPackid",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.nplPackid",
      "short" : "nplPackid",
      "definition" : "Identitet på förskrivet läkemedel som har NPL Pack-id alternativt SB Pack-id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.produktnamn",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.produktnamn",
      "short" : "produktnamn",
      "definition" : "Läkemedelsnamn vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrka",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrka",
      "short" : "styrka",
      "definition" : "Numerisk styrka, exempelvis '20.0'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrkaEnhet",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrkaEnhet",
      "short" : "styrkaEnhet",
      "definition" : "Styrkans enhet, exempelvis 'mg'.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrkaKlartext",
      "path" : "laslfvardsystem.lakemedelsforteckning.artikelinformation.styrkaKlartext",
      "short" : "styrkaKlartext",
      "definition" : "Styrka i klartext vid inläsningstillfället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.borttagen",
      "path" : "laslfvardsystem.lakemedelsforteckning.borttagen",
      "short" : "borttagen",
      "definition" : "Markering om posten är borttagen. Sant om posten är borttagen, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.borttagsdatum",
      "path" : "laslfvardsystem.lakemedelsforteckning.borttagsdatum",
      "short" : "borttagsdatum",
      "definition" : "Datum då posten blev markerad som borttagen. Endast angiven om borttagen är sant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.borttagsorsak",
      "path" : "laslfvardsystem.lakemedelsforteckning.borttagsorsak",
      "short" : "borttagsorsak",
      "definition" : "Kommentar för borttagen post. Endast angiven om borttagen är sant.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.borttagstyp",
      "path" : "laslfvardsystem.lakemedelsforteckning.borttagstyp",
      "short" : "borttagstyp",
      "definition" : "Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: Synlig, Begränsad synlighet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.borttagstypHeltal",
      "path" : "laslfvardsystem.lakemedelsforteckning.borttagstypHeltal",
      "short" : "borttagstypHeltal",
      "definition" : "Typ av borttag som gäller för posten. Endast angiven om borttagen är sant. Möjliga värden är: 0 - Synlig, 1 - Begränsad synlighet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.doseringstext",
      "path" : "laslfvardsystem.lakemedelsforteckning.doseringstext",
      "short" : "doseringstext",
      "definition" : "Doseringsanvisning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.expeditionsId",
      "path" : "laslfvardsystem.lakemedelsforteckning.expeditionsId",
      "short" : "expeditionsId",
      "definition" : "ExpeditionsId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.expeditionsdatum",
      "path" : "laslfvardsystem.lakemedelsforteckning.expeditionsdatum",
      "short" : "expeditionsdatum",
      "definition" : "Datum för expedition på apotek.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivararbetsplatsnamn",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivararbetsplatsnamn",
      "short" : "forskrivararbetsplatsnamn",
      "definition" : "Förskrivarens arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivararbetsplatsort",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivararbetsplatsort",
      "short" : "forskrivararbetsplatsort",
      "definition" : "Förskrivarens arbetsplatsort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivarnamn",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivarnamn",
      "short" : "forskrivarnamn",
      "definition" : "Förskrivarens namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivarpostadress",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivarpostadress",
      "short" : "forskrivarpostadress",
      "definition" : "Förskrivarens postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivarpostnummer",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivarpostnummer",
      "short" : "forskrivarpostnummer",
      "definition" : "Förskrivarens postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivarspecialiteter",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivarspecialiteter",
      "short" : "forskrivarspecialiteter",
      "definition" : "Förskrivarens specialitet i klartext",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.forskrivaryrke",
      "path" : "laslfvardsystem.lakemedelsforteckning.forskrivaryrke",
      "short" : "forskrivaryrke",
      "definition" : "Förskrivarens yrke i klartext",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.mangd",
      "path" : "laslfvardsystem.lakemedelsforteckning.mangd",
      "short" : "mangd",
      "definition" : "Mängd",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.radid",
      "path" : "laslfvardsystem.lakemedelsforteckning.radid",
      "short" : "radid",
      "definition" : "Unikt id för posten i läkemedelsförteckningen. (xs:long i schemat.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.lakemedelsforteckning.radnummer",
      "path" : "laslfvardsystem.lakemedelsforteckning.radnummer",
      "short" : "radnummer",
      "definition" : "Radnummer för expedierad vara i aktuell expedition. Obligatorisk som indata dock ej som utdata.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "laslfvardsystem.patient",
      "path" : "laslfvardsystem.patient",
      "short" : "patient",
      "definition" : "Information om patienten vars läkemedelsförteckning man hämtat. Om patienten är markerad som Avliden så returneras ej läkemedelsförteckning.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "laslfvardsystem.patient.avliden",
      "path" : "laslfvardsystem.patient.avliden",
      "short" : "avliden",
      "definition" : "Anger om patienten är markerad som avliden i FOLK. Sant om personen är markerad som avliden, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "laslfvardsystem.patient.efternamn",
      "path" : "laslfvardsystem.patient.efternamn",
      "short" : "efternamn",
      "definition" : "Patientens efternamn som registrerat i FOLK.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.patient.fornamn",
      "path" : "laslfvardsystem.patient.fornamn",
      "short" : "fornamn",
      "definition" : "Patientens förnamn som registrerat i FOLK.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.patient.personnummer",
      "path" : "laslfvardsystem.patient.personnummer",
      "short" : "personnummer",
      "definition" : "Patientens personnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "laslfvardsystem.varningsnivaUppnadd",
      "path" : "laslfvardsystem.varningsnivaUppnadd",
      "short" : "varningsnivaUppnadd",
      "definition" : "Flagga som anger om förskrivarens antal läsningar det senaste dygnet överskridit varningsnivå. Sant om varningsnivå har uppnåtts, annars falskt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "laslfvardsystem.avPatientSparradePosterArBorttagna",
      "path" : "laslfvardsystem.avPatientSparradePosterArBorttagna",
      "short" : "avPatientSparradePosterArBorttagna",
      "definition" : "Markering som anger om poster plockats bort ur resultatet pga att patienten spärrat dessa, dvs det finns poster som är spärrade och därför inte är med i resultatet. (Refererat element ur LasLFVardsystemResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:lf:LasLFVardsystemResponder:4.1.)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
