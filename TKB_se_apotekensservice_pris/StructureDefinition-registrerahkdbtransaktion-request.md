# RegistreraHkdbTransaktion — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **RegistreraHkdbTransaktion — Request**

## Logical Model: RegistreraHkdbTransaktion — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:RegistreraHkdbTransaktionRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i RegistreraHkdbTransaktion (urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-registrerahkdbtransaktion-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-registrerahkdbtransaktion-request.csv), [Excel](StructureDefinition-registrerahkdbtransaktion-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "registrerahkdbtransaktion-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion-request",
  "version" : "2.0.0",
  "name" : "RegistreraHkdbTransaktionRequest",
  "title" : "RegistreraHkdbTransaktion — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i RegistreraHkdbTransaktion\n(urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/registrerahkdbtransaktion-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "registrerahkdbtransaktion-request",
      "path" : "registrerahkdbtransaktion-request",
      "short" : "RegistreraHkdbTransaktion — Request",
      "definition" : "Logisk modell för begäran i RegistreraHkdbTransaktion\n(urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1, RegistreraHkdbTransaktionRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "registrerahkdbtransaktion-request.logicalAddress",
      "path" : "registrerahkdbtransaktion-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader",
      "path" : "registrerahkdbtransaktion-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.forskrivarkod",
      "path" : "registrerahkdbtransaktion-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.legitimationskod",
      "path" : "registrerahkdbtransaktion-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.fornamn",
      "path" : "registrerahkdbtransaktion-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.efternamn",
      "path" : "registrerahkdbtransaktion-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.yrkesgrupp",
      "path" : "registrerahkdbtransaktion-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.befattningskod",
      "path" : "registrerahkdbtransaktion-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.arbetsplatskod",
      "path" : "registrerahkdbtransaktion-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.arbetsplatsnamn",
      "path" : "registrerahkdbtransaktion-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.postort",
      "path" : "registrerahkdbtransaktion-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.postadress",
      "path" : "registrerahkdbtransaktion-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.postnummer",
      "path" : "registrerahkdbtransaktion-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.telefonnummer",
      "path" : "registrerahkdbtransaktion-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.requestId",
      "path" : "registrerahkdbtransaktion-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.rollnamn",
      "path" : "registrerahkdbtransaktion-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.hsaID",
      "path" : "registrerahkdbtransaktion-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.katalog",
      "path" : "registrerahkdbtransaktion-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.organisationsnummer",
      "path" : "registrerahkdbtransaktion-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.systemnamn",
      "path" : "registrerahkdbtransaktion-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.systemversion",
      "path" : "registrerahkdbtransaktion-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.argosHeader.systemIp",
      "path" : "registrerahkdbtransaktion-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.ackBrutto",
      "path" : "registrerahkdbtransaktion-request.ackBrutto",
      "short" : "ackBrutto",
      "definition" : "Om transaktionen avser föregående period skall alltså ackBrutto innehålla FPbrutto i kronor. Om transaktionen avser kommande period skall ackBrutto innehålla motsvarande KPbrutto. I normalfallet används alltså värdet från IPbrutto användas. ackBrutto och periodStart ersätter termerna IPbrutto från version 10.3.0.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.bruttobelopp",
      "path" : "registrerahkdbtransaktion-request.bruttobelopp",
      "short" : "bruttobelopp",
      "definition" : "Transaktionens högkostnadsgrundande bruttobelop i kronor och ören.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.expeditionsId",
      "path" : "registrerahkdbtransaktion-request.expeditionsId",
      "short" : "expeditionsId",
      "definition" : "Expeditionens unika id för spårbarhet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.ipBrutto",
      "path" : "registrerahkdbtransaktion-request.ipBrutto",
      "short" : "ipBrutto",
      "definition" : "Ackumulerat bruttobelopp i högkostnadstrappan för innevarande period i kronor och ören. Används för att verifiera att ingen ny transaktion registrerats för personen efter att högkostnadsfrågan ställts. Skall inte används som indata från och version 10.3.0. Använd periodStart och ackBrutto i stället.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.klientinformation",
      "path" : "registrerahkdbtransaktion-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.klientinformation.anvandare",
      "path" : "registrerahkdbtransaktion-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.klientinformation.session",
      "path" : "registrerahkdbtransaktion-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.klientinformation.system",
      "path" : "registrerahkdbtransaktion-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.kommentar",
      "path" : "registrerahkdbtransaktion-request.kommentar",
      "short" : "kommentar",
      "definition" : "Kommentar till kreditering.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.periodStart",
      "path" : "registrerahkdbtransaktion-request.periodStart",
      "short" : "periodStart",
      "definition" : "Startdatum för den högkostnadsperiod som transaktionen tillhör.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.persNr",
      "path" : "registrerahkdbtransaktion-request.persNr",
      "short" : "persNr",
      "definition" : "Personnummer som transaktionen ska registreras för.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.transId",
      "path" : "registrerahkdbtransaktion-request.transId",
      "short" : "transId",
      "definition" : "Aktörens expeditions-ID.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.transTid",
      "path" : "registrerahkdbtransaktion-request.transTid",
      "short" : "transTid",
      "definition" : "Transaktionstidpunkt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.ursprungligtApoteksaktorsExpeditionsId",
      "path" : "registrerahkdbtransaktion-request.ursprungligtApoteksaktorsExpeditionsId",
      "short" : "ursprungligtApoteksaktorsExpeditionsId",
      "definition" : "Apoteksaktörens ursprungliga expeditionsid, ska anges vid kreditering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.ursprungligtExpeditionsId",
      "path" : "registrerahkdbtransaktion-request.ursprungligtExpeditionsId",
      "short" : "ursprungligtExpeditionsId",
      "definition" : "Expeditionens ursprungliga expeditionsid, ska anges vid kreditering",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "registrerahkdbtransaktion-request.ursprungligTransTid",
      "path" : "registrerahkdbtransaktion-request.ursprungligTransTid",
      "short" : "ursprungligTransTid",
      "definition" : "Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur RegistreraHkdbTransaktionResponder_1.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:RegistreraHkdbTransaktionResponder:1.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
