# GetHospPersonForPublicHealthcare - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospPersonForPublicHealthcare**

## Logical Model: GetHospPersonForPublicHealthcare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare | *Version*:2.0 |
| Active as of 2026-11-09 | *Computable Name*:GetHospPersonForPublicHealthcare |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetHospPersonForPublicHealthcare (RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2). Representerar responsens informationsstruktur — en lista av HoSp-personer med legitimationsinformation. Tjänsten ger offentliga vårdgivare direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.masterdata-organisationalresources-licensetopractice|current/StructureDefinition/StructureDefinition-gethosppersonforpublichealthcare.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-gethosppersonforpublichealthcare.csv), [Excel](StructureDefinition-gethosppersonforpublichealthcare.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "gethosppersonforpublichealthcare",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare",
  "version" : "2.0",
  "name" : "GetHospPersonForPublicHealthcare",
  "title" : "GetHospPersonForPublicHealthcare",
  "status" : "active",
  "date" : "2026-11-09T03:45:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetHospPersonForPublicHealthcare\n(RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2).\nRepresenterar responsens informationsstruktur — en lista av HoSp-personer med legitimationsinformation.\nTjänsten ger offentliga vårdgivare direktåtkomst till Socialstyrelsens register över hälso- och\nsjukvårdspersonal (HoSp).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "gethosppersonforpublichealthcare",
      "path" : "gethosppersonforpublichealthcare",
      "short" : "GetHospPersonForPublicHealthcare",
      "definition" : "Logisk modell för tjänstekontraktet GetHospPersonForPublicHealthcare\n(RIV-TA urn:riv:masterdata:organisationalresources:licensetopractice:GetHospPersonForPublicHealthCareResponder:2).\nRepresenterar responsens informationsstruktur — en lista av HoSp-personer med legitimationsinformation.\nTjänsten ger offentliga vårdgivare direktåtkomst till Socialstyrelsens register över hälso- och\nsjukvårdspersonal (HoSp)."
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson",
      "path" : "gethosppersonforpublichealthcare.hospPerson",
      "short" : "HospPersonType",
      "definition" : "hospPerson",
      "comment" : "TKB-fält: `hospPerson*` (`HospPersonType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.hospId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.hospId",
      "short" : "HospIdType",
      "definition" : "Unikt ID för en person i HOSP",
      "comment" : "TKB-fält: `..hospId` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.hospId.extension",
      "path" : "gethosppersonforpublichealthcare.hospPerson.hospId.extension",
      "short" : "extension",
      "definition" : "Identitet.",
      "comment" : "TKB-fält: `../../extension` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.hospId.root",
      "path" : "gethosppersonforpublichealthcare.hospPerson.hospId.root",
      "short" : "root",
      "definition" : "OID= \"1.2.752.116.3.1.1\".",
      "comment" : "TKB-fält: `../../root` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.personId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.personId",
      "short" : "PersonIdType",
      "definition" : "Ett personnummer eller samordningsnummer för en person.",
      "comment" : "TKB-fält: `../personId` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.personId.extension",
      "path" : "gethosppersonforpublichealthcare.hospPerson.personId.extension",
      "short" : "extension",
      "definition" : "Identitet i form av ÅÅÅÅMMDDXXXX.",
      "comment" : "TKB-fält: `../../ extension` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.personId.root",
      "path" : "gethosppersonforpublichealthcare.hospPerson.personId.root",
      "short" : "root",
      "definition" : "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"\n\nSamordningsnummer: \"1.2.752.129.2.1.3.3\"",
      "comment" : "TKB-fält: `../../ root` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId",
      "short" : "PersonIdType",
      "definition" : "Ett tidigare personnummer eller samordningsnummer för en person.",
      "comment" : "TKB-fält: `../tidigarePersonId` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId.extension",
      "path" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId.extension",
      "short" : "extension",
      "definition" : "Identitet i form av ÅÅÅÅMMDDXXXX.",
      "comment" : "TKB-fält: `../../ extension` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PersonIdentitet"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId.root",
      "path" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId.root",
      "short" : "root",
      "definition" : "Anger om identiteten är ett personnummer eller samordningsnummer. Personnummer: \"1.2.752.129.2.1.3.1\"\n\nSamordningsnummer: \"1.2.752.129.2.1.3.3\"",
      "comment" : "TKB-fält: `../../ root` (`String`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.\n\n**Modellanteckning:** root Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.efternamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.efternamn",
      "short" : "efternamn",
      "definition" : "En persons efternamn",
      "comment" : "TKB-fält: `../efternamn` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.mellannamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.mellannamn",
      "short" : "mellannamn",
      "definition" : "mellannamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.samtligaFornamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.samtligaFornamn",
      "short" : "samtligaFornamn",
      "definition" : "En persons samtliga förnamn",
      "comment" : "TKB-fält: `../samtligaFornamn` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.tilltalsnamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.tilltalsnamn",
      "short" : "tilltalsnamn",
      "definition" : "tilltalsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.fodelsedatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.fodelsedatum",
      "short" : "fodelsedatum",
      "definition" : "Datum för en persons födelse, anges enligt ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../fodelsedatum` (`date`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.kon",
      "path" : "gethosppersonforpublichealthcare.hospPerson.kon",
      "short" : "KonType",
      "definition" : "kon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.lan",
      "path" : "gethosppersonforpublichealthcare.hospPerson.lan",
      "short" : "LanType",
      "definition" : "lan",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.kommun",
      "path" : "gethosppersonforpublichealthcare.hospPerson.kommun",
      "short" : "KommunType",
      "definition" : "kommun",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.folkbokforingsort",
      "path" : "gethosppersonforpublichealthcare.hospPerson.folkbokforingsort",
      "short" : "folkbokforingsort",
      "definition" : "folkbokforingsort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitet",
      "path" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitet",
      "short" : "skyddadIdentitet",
      "definition" : "skyddadIdentitet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitetUpplysning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitetUpplysning",
      "short" : "skyddadIdentitetUpplysning",
      "definition" : "Upplysning gällande en person med skyddad identitet",
      "comment" : "TKB-fält: `../skyddadidentitetUpplysning*` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.avliden",
      "path" : "gethosppersonforpublichealthcare.hospPerson.avliden",
      "short" : "avliden",
      "definition" : "avliden",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.avlidenDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.avlidenDatum",
      "short" : "avlidenDatum",
      "definition" : "avlidenDatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.utvandrad",
      "path" : "gethosppersonforpublichealthcare.hospPerson.utvandrad",
      "short" : "utvandrad",
      "definition" : "utvandrad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod",
      "path" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod",
      "short" : "ForskrivarkodType",
      "definition" : "En persons förskrivarkod",
      "comment" : "TKB-fält: `../forskrivarkod` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod.extension",
      "path" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod.extension",
      "short" : "extension",
      "definition" : "Förskrivarkod",
      "comment" : "TKB-fält: `../../ extension` (`Int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod.root",
      "path" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod.root",
      "short" : "root",
      "definition" : "OID = \" 1.2.752.116.3.1.2\"",
      "comment" : "TKB-fält: `../../ root` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation",
      "short" : "LegitimationType",
      "definition" : "Legitimation innehåller en beskrivning av en persons legitimation",
      "comment" : "TKB-fält: `../legitimation` (`LegitimationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimeratYrke",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimeratYrke",
      "short" : "LegitimeratYrkeTyp",
      "definition" : "Anger vilket legitimerat yrke som avses",
      "comment" : "TKB-fält: `../../ legitimeratYrke` (`CV`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.giltigLegitimation",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.giltigLegitimation",
      "short" : "giltigLegitimation",
      "definition" : "Anger om legitimationen är giltig",
      "comment" : "TKB-fält: `../../giltigLegitimation` (`Boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.utbildning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.utbildning",
      "short" : "UtbildningType",
      "definition" : "Anger en persons utbildning för denna legitimation. OID= \"1.2.752.116.3.1.4\"",
      "comment" : "TKB-fält: `../../utbildning` (`CV`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.utbildningsland",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.utbildningsland",
      "short" : "utbildningsland",
      "definition" : "utbildningsland",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.internationellOverrenskommelse",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.internationellOverrenskommelse",
      "short" : "internationellOverrenskommelse",
      "definition" : "internationellOverrenskommelse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimationsDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimationsDatum",
      "short" : "legitimationsDatum",
      "definition" : "Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../legitimationsDatum` (`Datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.beslutsdatumFysioterapeut",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.beslutsdatumFysioterapeut",
      "short" : "beslutsdatumFysioterapeut",
      "definition" : "Anger datum då en person övergått från legitimerat yrke SG till FT",
      "comment" : "TKB-fält: `../../beslutsdatumFysioterapeut` (`Datum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.examensdatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.examensdatum",
      "short" : "examensdatum",
      "definition" : "examensdatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.larosate",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.larosate",
      "short" : "larosate",
      "definition" : "larosate",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.grundyrke",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.grundyrke",
      "short" : "grundyrke",
      "definition" : "grundyrke",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsratt",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsratt",
      "short" : "forskrivningsratt",
      "definition" : "forskrivningsratt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsrattDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsrattDatum",
      "short" : "forskrivningsrattDatum",
      "definition" : "forskrivningsrattDatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis",
      "short" : "SpecialistbevisType",
      "definition" : "specialistbevis",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistinriktning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistinriktning",
      "short" : "SpecialistinriktningType",
      "definition" : "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen",
      "comment" : "TKB-fält: `../../../specialistinriktning` (`CV`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.utbildningsland",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.utbildningsland",
      "short" : "utbildningsland",
      "definition" : "utbildningsland",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.internationellOverrenskommelse",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.internationellOverrenskommelse",
      "short" : "internationellOverrenskommelse",
      "definition" : "internationellOverrenskommelse",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistbevisDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistbevisDatum",
      "short" : "specialistbevisDatum",
      "definition" : "Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../../ specialistbevisDatum` (`Datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning",
      "short" : "BehorighetsbegransningType",
      "definition" : "behorighetsbegransning",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning",
      "short" : "TypAvBehorighetsbegransning",
      "definition" : "Anger typ av behörighetsbegränsning för en viss legitimation",
      "comment" : "TKB-fält: `../../../typAvBehorighetsbegransning` (`CV`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.fromDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.fromDatum",
      "short" : "fromDatum",
      "definition" : "fromDatum",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.tomDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.tomDatum",
      "short" : "tomDatum",
      "definition" : "tomDatum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/DateType"]
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.begransadForskrivningsrattText",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.begransadForskrivningsrattText",
      "short" : "begransadForskrivningsrattText",
      "definition" : "begransadForskrivningsrattText",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet",
      "short" : "OvrigBehorighetType",
      "definition" : "ovrigBehorighet",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighet",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighet",
      "short" : "UtbildningType",
      "definition" : "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen",
      "comment" : "TKB-fält: `../../../behorighet` (`CV`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighetsDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighetsDatum",
      "short" : "behorighetsDatum",
      "definition" : "Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../../ behorighetsDatum` (`Datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/PartielltDatum"]
      }]
    }]
  }
}

```
