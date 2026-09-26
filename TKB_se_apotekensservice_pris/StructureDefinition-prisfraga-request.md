# Prisfraga — Request - se.apotekensservice: pris — Pris och högkostnadsskydd v2.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Prisfraga — Request**

## Logical Model: Prisfraga — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga-request | *Version*:2.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:PrisfragaRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för begäran i Prisfraga (urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaRequestType), inklusive SOAP-huvuden enligt WSDL. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.se-apotekensservice-pris|current/StructureDefinition/StructureDefinition-prisfraga-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-prisfraga-request.csv), [Excel](StructureDefinition-prisfraga-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "prisfraga-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga-request",
  "version" : "2.0.0",
  "name" : "PrisfragaRequest",
  "title" : "Prisfraga — Request",
  "status" : "draft",
  "date" : "2026-09-26T19:46:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för begäran i Prisfraga\n(urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaRequestType), inklusive SOAP-huvuden enligt WSDL.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/se-apotekensservice-pris/StructureDefinition/prisfraga-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "prisfraga-request",
      "path" : "prisfraga-request",
      "short" : "Prisfraga — Request",
      "definition" : "Logisk modell för begäran i Prisfraga\n(urn:riv:se.apotekensservice:pris:PrisfragaResponder:4, PrisfragaRequestType), inklusive SOAP-huvuden enligt WSDL."
    },
    {
      "id" : "prisfraga-request.logicalAddress",
      "path" : "prisfraga-request.logicalAddress",
      "short" : "logicalAddress",
      "definition" : "SOAP-huvud LogicalAddress. Orgnr of Apotekens Service AB",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader",
      "path" : "prisfraga-request.argosHeader",
      "short" : "argosHeader",
      "definition" : "SOAP-huvud ArgosHeader. Argos header of Apotekens Service AB. Check documentation regarding mandatory fields for this specific service interaction",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.forskrivarkod",
      "path" : "prisfraga-request.argosHeader.forskrivarkod",
      "short" : "forskrivarkod",
      "definition" : "forskrivarkod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.legitimationskod",
      "path" : "prisfraga-request.argosHeader.legitimationskod",
      "short" : "legitimationskod",
      "definition" : "legitimationskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.fornamn",
      "path" : "prisfraga-request.argosHeader.fornamn",
      "short" : "fornamn",
      "definition" : "fornamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.efternamn",
      "path" : "prisfraga-request.argosHeader.efternamn",
      "short" : "efternamn",
      "definition" : "efternamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.yrkesgrupp",
      "path" : "prisfraga-request.argosHeader.yrkesgrupp",
      "short" : "yrkesgrupp",
      "definition" : "yrkesgrupp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.befattningskod",
      "path" : "prisfraga-request.argosHeader.befattningskod",
      "short" : "befattningskod",
      "definition" : "befattningskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.arbetsplatskod",
      "path" : "prisfraga-request.argosHeader.arbetsplatskod",
      "short" : "arbetsplatskod",
      "definition" : "arbetsplatskod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.arbetsplatsnamn",
      "path" : "prisfraga-request.argosHeader.arbetsplatsnamn",
      "short" : "arbetsplatsnamn",
      "definition" : "arbetsplatsnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.postort",
      "path" : "prisfraga-request.argosHeader.postort",
      "short" : "postort",
      "definition" : "postort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.postadress",
      "path" : "prisfraga-request.argosHeader.postadress",
      "short" : "postadress",
      "definition" : "postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.postnummer",
      "path" : "prisfraga-request.argosHeader.postnummer",
      "short" : "postnummer",
      "definition" : "postnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.telefonnummer",
      "path" : "prisfraga-request.argosHeader.telefonnummer",
      "short" : "telefonnummer",
      "definition" : "telefonnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.requestId",
      "path" : "prisfraga-request.argosHeader.requestId",
      "short" : "requestId",
      "definition" : "requestId",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.rollnamn",
      "path" : "prisfraga-request.argosHeader.rollnamn",
      "short" : "rollnamn",
      "definition" : "rollnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.hsaID",
      "path" : "prisfraga-request.argosHeader.hsaID",
      "short" : "hsaID",
      "definition" : "hsaID",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.katalog",
      "path" : "prisfraga-request.argosHeader.katalog",
      "short" : "katalog",
      "definition" : "katalog",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.organisationsnummer",
      "path" : "prisfraga-request.argosHeader.organisationsnummer",
      "short" : "organisationsnummer",
      "definition" : "organisationsnummer",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.systemnamn",
      "path" : "prisfraga-request.argosHeader.systemnamn",
      "short" : "systemnamn",
      "definition" : "systemnamn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.systemversion",
      "path" : "prisfraga-request.argosHeader.systemversion",
      "short" : "systemversion",
      "definition" : "systemversion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.argosHeader.systemIp",
      "path" : "prisfraga-request.argosHeader.systemIp",
      "short" : "systemIp",
      "definition" : "systemIp",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.klientinformation",
      "path" : "prisfraga-request.klientinformation",
      "short" : "klientinformation",
      "definition" : "Objekt innehållande information om anropande klientsystem.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "prisfraga-request.klientinformation.anvandare",
      "path" : "prisfraga-request.klientinformation.anvandare",
      "short" : "anvandare",
      "definition" : "Unikt användarid i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.klientinformation.session",
      "path" : "prisfraga-request.klientinformation.session",
      "short" : "session",
      "definition" : "Sessionens id i anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.klientinformation.system",
      "path" : "prisfraga-request.klientinformation.system",
      "short" : "system",
      "definition" : "GLN-kod för anropande system.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.periodStart",
      "path" : "prisfraga-request.periodStart",
      "short" : "periodStart",
      "definition" : "Start av period. Om periodStart anges så avses normalt annan period än innevarande period. Innehållet är en periodstart och kan avse föregående period, innevarande period eller kommande period.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "prisfraga-request.personnummer",
      "path" : "prisfraga-request.personnummer",
      "short" : "personnummer",
      "definition" : "Personnummer för person som prisfrågan gäller. Om personnummer saknas, använd tjänsten AnonymPrisfraga",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.rader",
      "path" : "prisfraga-request.rader",
      "short" : "rader",
      "definition" : "Rader",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "prisfraga-request.rader.antal",
      "path" : "prisfraga-request.rader.antal",
      "short" : "antal",
      "definition" : "Antal förpackningar av vara som expedieras. Vid kreditering sätts detta fält till ett negativt värde. Altenativt kan fälten pris och prisUtbyte sättas till negativa värden.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "prisfraga-request.rader.formansVal",
      "path" : "prisfraga-request.rader.formansVal",
      "short" : "formansVal",
      "definition" : "Farmacevtens bedömning om vilken förmån som gäller för receptraden. Förmånstyp R, U, F, L kan förekomma.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "prisfraga-request.rader.pris",
      "path" : "prisfraga-request.rader.pris",
      "short" : "pris",
      "definition" : "Apoteksaktörs utpris inkl. eventuell moms per förpackning för vara som avses att expedieras.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga-request.rader.prisUtbyte",
      "path" : "prisfraga-request.rader.prisUtbyte",
      "short" : "prisUtbyte",
      "definition" : "Apoteksaktörs utpris inkl. eventuell moms för billigare vara som ej expedieras vid möjligt byte inom högkostnadsskyddet. Anges om pristillägg skall gälla, dvs när kund motsätter sig byte och väljer förskriven vara.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "prisfraga-request.rader.radNr",
      "path" : "prisfraga-request.rader.radNr",
      "short" : "radNr",
      "definition" : "Radnr.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "prisfraga-request.transaktionstid",
      "path" : "prisfraga-request.transaktionstid",
      "short" : "transaktionstid",
      "definition" : "Transaktionsdag som priset ska beräknas för. Om värdet inte anges används dagens datum. För att garantera korrekt prisberäkning för en efterföljande transaktionsregistrering skall denna parameter ha samma värde som parametern transTid i RegistreraHkdbTransaktion. Får inte vara mer än ett år och en dag bakåt i tiden, eller två timmar framåt i tiden.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "prisfraga-request.ursprungligTransaktionstid",
      "path" : "prisfraga-request.ursprungligTransaktionstid",
      "short" : "ursprungligTransaktionstid",
      "definition" : "Ursprunglig transaktionstidpunkt. Ges vid kreditering. Avser tidpunkten när det ursprungliga köpet gjordes. Används för att avgöra om personen var över eller under 18 år vid köptillfället. Parametern blir obligatorisk i och med att lagen om kostnadsbefrielse för barn under 18 år trätt i kraft. (Refererat element ur PrisfragaResponder_4.1_ext.xsd, namnrymd urn:riv:se.apotekensservice:pris:PrisfragaResponder:4.1.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    }]
  }
}

```
