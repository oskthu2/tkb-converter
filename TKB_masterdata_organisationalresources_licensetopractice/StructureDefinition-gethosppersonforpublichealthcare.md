# GetHospPersonForPublicHealthcare - masterdata: organisationalresources: licensetopractice v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetHospPersonForPublicHealthcare**

## Logical Model: GetHospPersonForPublicHealthcare 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/StructureDefinition/gethosppersonforpublichealthcare | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetHospPersonForPublicHealthcare |
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
  "date" : "2026-11-06T21:40:35+00:00",
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
      "short" : "HoSp-person",
      "definition" : "En post i HOSP-registret med legitimationsinformation.",
      "comment" : "TKB-fält: `hospPerson*` (`HospPersonType`, kardinalitet 0..*).\n\n**Modellanteckning:** En post i HOSP-registret med legitimationsinformation.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.hospId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.hospId",
      "short" : "Unikt ID för person i HOSP",
      "definition" : "Unikt ID för en person i HOSP",
      "comment" : "TKB-fält: `..hospId` (`String`, kardinalitet 1..1).\n\n**Modellanteckning:** Unikt identifierare för personen i HOSP-registret.\nOID för root: 1.2.752.116.3.1.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.personId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.personId",
      "short" : "Personnummer eller samordningsnummer",
      "definition" : "Ett personnummer eller samordningsnummer för en person.",
      "comment" : "TKB-fält: `../personId` (`II`, kardinalitet 0..1).\n\n**Modellanteckning:** Personnummer (OID: 1.2.752.129.2.1.3.1) eller\nsamordningsnummer (OID: 1.2.752.129.2.1.3.3).\nFormat: ÅÅÅÅMMDDXXXX (12 siffror).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId",
      "path" : "gethosppersonforpublichealthcare.hospPerson.tidigarePersonId",
      "short" : "Tidigare personnummer eller samordningsnummer",
      "definition" : "Ett tidigare personnummer eller samordningsnummer för en person.",
      "comment" : "TKB-fält: `../tidigarePersonId` (`II`, kardinalitet 0..1).\n\n**Modellanteckning:** Ett tidigare personnummer eller samordningsnummer om personen bytt identitet.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.efternamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.efternamn",
      "short" : "Efternamn",
      "definition" : "En persons efternamn",
      "comment" : "TKB-fält: `../efternamn` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.samtligaFornamn",
      "path" : "gethosppersonforpublichealthcare.hospPerson.samtligaFornamn",
      "short" : "Samtliga förnamn",
      "definition" : "En persons samtliga förnamn",
      "comment" : "TKB-fält: `../samtligaFornamn` (`String`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.fodelsedatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.fodelsedatum",
      "short" : "Födelsedatum (ÅÅÅÅMMDD)",
      "definition" : "Datum för en persons födelse, anges enligt ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../fodelsedatum` (`date`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitetUpplysning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.skyddadIdentitetUpplysning",
      "short" : "Upplysning vid skyddad identitet",
      "definition" : "Upplysning gällande en person med skyddad identitet",
      "comment" : "TKB-fält: `../skyddadidentitetUpplysning*` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Upplysningstext om kontakta Socialstyrelsen, används när personen har skyddad identitet.\nVid skyddad identitet returneras endast personnummer, födelsedatum, och denna upplysning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod",
      "path" : "gethosppersonforpublichealthcare.hospPerson.forskrivarkod",
      "short" : "Förskrivarkod",
      "definition" : "En persons förskrivarkod",
      "comment" : "TKB-fält: `../forskrivarkod` (`String`, kardinalitet 0..1).\n\n**Modellanteckning:** Personens förskrivarkod. OID för root: 1.2.752.116.3.1.2.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation",
      "short" : "Legitimation",
      "definition" : "Legitimation innehåller en beskrivning av en persons legitimation",
      "comment" : "TKB-fält: `../legitimation` (`LegitimationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimeratYrke",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimeratYrke",
      "short" : "Legitimerat yrke",
      "definition" : "Anger vilket legitimerat yrke som avses",
      "comment" : "TKB-fält: `../../ legitimeratYrke` (`CV`, kardinalitet 1..1).\n\n**Modellanteckning:** Anger vilket legitimerat yrke som avses.\nKodas enligt kodverket LegitimeratYrke (OID: 1.2.752.116.3.1.3).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/ValueSet/legitimerat-yrke-vs"
      }
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.giltigLegitimation",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.giltigLegitimation",
      "short" : "Giltig legitimation",
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
      "short" : "Utbildning",
      "definition" : "Anger en persons utbildning för denna legitimation. OID= \"1.2.752.116.3.1.4\"",
      "comment" : "TKB-fält: `../../utbildning` (`CV`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimationsDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.legitimationsDatum",
      "short" : "Legitimationsdatum (ÅÅÅÅMMDD)",
      "definition" : "Datum från vilket legitimationen är giltig. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../legitimationsDatum` (`Datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.beslutsdatumFysioterapeut",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.beslutsdatumFysioterapeut",
      "short" : "Beslutsdatum fysioterapeut (ÅÅÅÅMMDD)",
      "definition" : "Anger datum då en person övergått från legitimerat yrke SG till FT",
      "comment" : "TKB-fält: `../../beslutsdatumFysioterapeut` (`Datum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsratt",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsratt",
      "short" : "Förskrivningsrätt",
      "definition" : "Anger om personen har förskrivningsrätt (true/false).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsrattDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.forskrivningsrattDatum",
      "short" : "Datum för förskrivningsrätt (ÅÅÅÅMMDD)",
      "definition" : "Anger datum för förskrivningsrätt.\nFör LK, TL, TH: samma datum som för legitimationen.\nFör BM och SJ med förskrivningsrätt: datum för godkänd ansökan.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis",
      "short" : "Specialistbevis",
      "definition" : "Specialistbevis kopplade till legitimationen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistinriktning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistinriktning",
      "short" : "Specialistinriktning",
      "definition" : "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen",
      "comment" : "TKB-fält: `../../../specialistinriktning` (`CV`, kardinalitet 1..1).\n\n**Modellanteckning:** Anger vilken specialistinriktning som avses.\nOIDer: 1.2.752.116.3.1.6 (läkare 1992), 1.2.752.116.3.1.7 (läkare 1996),\n1.2.752.116.3.1.8 (läkare 2008), 1.2.752.116.3.1.9 (läkare 2015),\n1.2.752.116.3.1.10 (tandläkare 1993).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistbevisDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.specialistbevis.specialistbevisDatum",
      "short" : "Specialistbevis datum (ÅÅÅÅMMDD)",
      "definition" : "Datum från vilket specialistbeviset är giltigt. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../../ specialistbevisDatum` (`Datum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning",
      "short" : "Behörighetsbegränsning",
      "definition" : "Begränsning i behörighet för legitimationen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.typAvBehorighetsbegransning",
      "short" : "Typ av behörighetsbegränsning",
      "definition" : "Anger typ av behörighetsbegränsning för en viss legitimation",
      "comment" : "TKB-fält: `../../../typAvBehorighetsbegransning` (`CV`, kardinalitet 1..1).\n\n**Modellanteckning:** Anger typ av behörighetsbegränsning.\nKodas enligt kodverket TypAvBehorighetsbegransning (OID: 1.2.752.116.3.1.5).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/masterdata-organisationalresources-licensetopractice/ValueSet/typ-av-behorighetsbegransning-vs"
      }
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.fromDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.fromDatum",
      "short" : "Från-datum (ÅÅÅÅMMDD)",
      "definition" : "Anger från när begränsningen gäller. Format: ÅÅÅÅMMDD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.tomDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.behorighetsbegransning.tomDatum",
      "short" : "Tom-datum (ÅÅÅÅMMDD)",
      "definition" : "Används vid behörighetsbegränsning av typ Prövotid. Format: ÅÅÅÅMMDD.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet",
      "short" : "Övrig behörighet",
      "definition" : "Övrig behörighet kopplad till legitimationen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighet",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighet",
      "short" : "Behörighet",
      "definition" : "Anger vilken specialistinriktning som avses, OIDer se informationsspecifikationen",
      "comment" : "TKB-fält: `../../../behorighet` (`CV`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighetsDatum",
      "path" : "gethosppersonforpublichealthcare.hospPerson.legitimation.ovrigBehorighet.behorighetsDatum",
      "short" : "Behörighetsdatum (ÅÅÅÅMMDD)",
      "definition" : "Datum från vilket behorigheten är giltigt. Anges som ÅÅÅÅMMDD",
      "comment" : "TKB-fält: `../../../ behorighetsDatum` (`Datum`, kardinalitet 1..1).\n\n**Modellanteckning:** Datum från vilket behörigheten är giltig. Format: ÅÅÅÅMMDD.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
