# GetRequestActivities - crm: requeststatus v2.0.1-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetRequestActivities**

## Logical Model: GetRequestActivities 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities | *Version*:2.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetRequestActivities |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetRequestActivities (RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2). Representerar responsens informationsstruktur — en lista med statusrader för en patients remisser. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.crm-requeststatus|current/StructureDefinition/StructureDefinition-getrequestactivities.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getrequestactivities.csv), [Excel](StructureDefinition-getrequestactivities.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getrequestactivities",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities",
  "version" : "2.0",
  "name" : "GetRequestActivities",
  "title" : "GetRequestActivities",
  "status" : "draft",
  "date" : "2026-11-09T03:26:19+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetRequestActivities\n(RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).\nRepresenterar responsens informationsstruktur — en lista med statusrader för en patients remisser.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/crm-requeststatus/StructureDefinition/getrequestactivities",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getrequestactivities",
      "path" : "getrequestactivities",
      "short" : "GetRequestActivities",
      "definition" : "Logisk modell för tjänstekontraktet GetRequestActivities\n(RIV-TA urn:riv:crm:requeststatus:GetRequestActivities:2).\nRepresenterar responsens informationsstruktur — en lista med statusrader för en patients remisser."
    },
    {
      "id" : "getrequestactivities.requestActivity",
      "path" : "getrequestactivities.requestActivity",
      "short" : "RequestActivityType",
      "definition" : "Remisstatus som matchar begäran",
      "comment" : "TKB-fält: `requestActivity` (`RequestActivityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header",
      "path" : "getrequestactivities.requestActivity.header",
      "short" : "HeaderType",
      "definition" : "Innehåller information som är gemensam för remisstatusen som tillgängliggörs, exempelvis information om vilken hälso- och sjukvårdspersonal som är angiven som författare av en remisstatus samt information om signering.",
      "comment" : "TKB-fält: `../header` (`HeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader",
      "short" : "AccessControlHeaderType",
      "definition" : "Information som används för kontroll av åtkomst.",
      "comment" : "TKB-fält: `../../accessControlHeader` (`AccessControlHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.accountableHealthcareProvider",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.accountableHealthcareProvider",
      "short" : "accountableHealthcareProvider",
      "definition" : "Id för uppgiftsägande vårdgivare [R11].\n\nI första hand HSA-id, i andra hand organisationsnummer.\n\nOm HSA-id används:\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id\n\nOm organisationsnummer används:\n\nroot sätts till OID för organisationsnummer (1.2.752.29.4.3)\n\nextension sätts till organisationsnumret. Enskild näringsidkare har i rollen som juridisk person sitt personnummer som organisationsnummer.\n\nRegel 2.1",
      "comment" : "TKB-fält: `../../../accountableHealthcareProvider` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.accountableCareUnit",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.accountableCareUnit",
      "short" : "accountableCareUnit",
      "definition" : "HSA-id för vårdenheten [R11] där uppgiften är dokumenterad.\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id\n\nRegel 2.1",
      "comment" : "TKB-fält: `../../../accountableCareUnit` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.originalPatientId",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.originalPatientId",
      "short" : "originalPatientId",
      "definition" : "Personidentifieraren som den tillgängliggjorda remisstatusen lagrades under då den skapades. Detta fält anges endast då det skiljer sig från patientId, exempelvis då patienten tidigare erhållit vård som dokumenterats under ett samordningsnummer för att sedan bli folkbokförd i Sverige och få ett personnummer.\n\nroot sätts till OID för typ av personidentifierare.\n\nFör personnummer ska Skatteverkets OID för personnummer (1.2.752.129.2.1.3.1) användas.\n\nFör samordningsnummer skall Skatteverkets OID för samordningsnummer (1.2.752.129.2.1.3.3) användas.\n\nFör andra typer av personidentifierare sätts root till aktuell OID.\n\nextension sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.",
      "comment" : "TKB-fält: `../../../originalPatientId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.careProcessId",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.careProcessId",
      "short" : "careProcessId",
      "definition" : "Id för den individanpassade vårdprocess som remisstatusen journalförts inom ramen för. Består av ett lokalt genererat UUID.\n\nroot sätts till UUID\n\nextension anges ej",
      "comment" : "TKB-fält: `../../../careProcessId` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.lockTime",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.lockTime",
      "short" : "lockTime",
      "definition" : "Ska ej användas!\n\nRegel 2.2",
      "comment" : "TKB-fält: `../../../lockTime` (`TimeStampType`, kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.blockComparisonTime",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.blockComparisonTime",
      "short" : "blockComparisonTime",
      "definition" : "Den tidpunkt mot vilken spärrkontroll sker vid åtkomst med syftet sammanhållen journalföring. Gäller både yttre (mellan vårdgivare) och inre (mellan vårdenheter) spärr.\n\nInformationsägaren väljer själv en lämplig tidpunkt, t.ex. tidpunkten då remissen först skickades.",
      "comment" : "TKB-fält: `../../../blockComparisonTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.accessControlHeader.approvedForPatient",
      "path" : "getrequestactivities.requestActivity.header.accessControlHeader.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida remisstatusen får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).\n\nOm remisstatusen beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.\n\nNotera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex.",
      "comment" : "TKB-fält: `../../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.sourceSystemId",
      "path" : "getrequestactivities.requestActivity.header.sourceSystemId",
      "short" : "sourceSystemId",
      "definition" : "Det källsystem som remisstatusen lagras i.\n\nroot sätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)\n\nextension sätts till källsystemets HSA-id",
      "comment" : "TKB-fält: `../../sourceSystemId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.record",
      "path" : "getrequestactivities.requestActivity.header.record",
      "short" : "RecordType",
      "definition" : "Information avseende remisstatusen som tillgängliggörs.",
      "comment" : "TKB-fält: `../../record` (`RecordType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.record.id",
      "path" : "getrequestactivities.requestActivity.header.record.id",
      "short" : "id",
      "definition" : "Identifierare för remisstatus.\n\nIdentifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.\n\nRoot sätts till systemHSA-id\n\nExtension sätts till id för remissen",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.record.timestamp",
      "path" : "getrequestactivities.requestActivity.header.record.timestamp",
      "short" : "timestamp",
      "definition" : "Den tidpunkt då remisstatusen skapades i tjänsteproducentens källsystem.",
      "comment" : "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.author",
      "path" : "getrequestactivities.requestActivity.header.author",
      "short" : "AuthorType",
      "definition" : "Information avseende dokumentation av remisstatus som tillgängliggörs.\n\nNotera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.",
      "comment" : "TKB-fält: `../../author` (`AuthorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.author.id",
      "path" : "getrequestactivities.requestActivity.header.author.id",
      "short" : "id",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal som dokumenterat remisstatusen som tillgängliggörs.\n\nroot sätts till OID för HSA-id (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id",
      "comment" : "TKB-fält: `../../../id` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.author.name",
      "path" : "getrequestactivities.requestActivity.header.author.name",
      "short" : "name",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn.",
      "comment" : "TKB-fält: `../../../name` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.author.timestamp",
      "path" : "getrequestactivities.requestActivity.header.author.timestamp",
      "short" : "timestamp",
      "definition" : "Tidpunkt då remisstatusen dokumenterades eller senast uppdaterades.\n\nI de fall då remisstatusen ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där remisstatusen ursprungligen dokumenterades.",
      "comment" : "TKB-fält: `../../../timestamp` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.header.author.byRole",
      "path" : "getrequestactivities.requestActivity.header.author.byRole",
      "short" : "byRole",
      "definition" : "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.\n\nAnges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4).\n\nOm kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.",
      "comment" : "TKB-fält: `../../../byRole` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body",
      "path" : "getrequestactivities.requestActivity.body",
      "short" : "RequestActivityBodyType",
      "definition" : "body",
      "comment" : "TKB-fält: `../body` (`RequestActivityBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.statusCode",
      "path" : "getrequestactivities.requestActivity.body.statusCode",
      "short" : "statusCode",
      "definition" : "Angivelse av vilken status remissen befinner sig i.\n\nAnges med Kv status vårdbegäran [R5]\n\nOID: 1.2.752.129.2.2.2.43\n\nKodverket kan komma att kompletteras över tid vilket medför att konsumenter av kontraktet behöver vara förberedda på att nya koder kan tillkomma utan att versionen på kontraktet uppdateras.",
      "comment" : "TKB-fält: `../../statusCode` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.eventTime",
      "path" : "getrequestactivities.requestActivity.body.eventTime",
      "short" : "eventTime",
      "definition" : "Händelsetidpunkt\n\nTidpunkt då en händelse inträffade, dvs när en ändring av remisstatus sker.",
      "comment" : "TKB-fält: `../../eventTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request",
      "path" : "getrequestactivities.requestActivity.body.request",
      "short" : "RequestType",
      "definition" : "Den utfärdade remissen.",
      "comment" : "TKB-fält: `../../request` (`RequestType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.id",
      "path" : "getrequestactivities.requestActivity.body.request.id",
      "short" : "id",
      "definition" : "Remiss-id. Unik identifierare av remissen.\n\nVid kännedom om remittentens id på remissen ska detta anges för att kunna koppla ihop flera status och följa remissens status-information över tid.\n\nI det fall kännedom om remittentens id på remissen saknas ska källsystemets unika id på remissen anges.\n\nI det fall remissens id (sträng) består av flera delar, t.ex. enligt formatet \"källsystem-Id(HSA-ID)#lokalt-id\" så ska hela strängen anges.",
      "comment" : "TKB-fält: `../../../id` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.type",
      "path" : "getrequestactivities.requestActivity.body.request.type",
      "short" : "type",
      "definition" : "Remisstyp. Kod och klartext som anger vilken typ av remiss som avses.\n\nAnges med Kv framställantyp [R5]\n\nOID: 1.2.752.129.2.2.2.24\n\nGiltiga värden:\n\n1 = röntgenremiss\n\n2 = labbremiss\n\n4 = allmänremiss\n\nExempel:\n\nrequest.type.codesystem = 1.2.752.129.2.2.2.24\n\nrequest.type.code = 4\n\nrequest.type.displayName = allmänremiss",
      "comment" : "TKB-fält: `../../../type` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.medium",
      "path" : "getrequestactivities.requestActivity.body.request.medium",
      "short" : "medium",
      "definition" : "Medium. Kod och klartext som anger medium för remissen.\n\nAnges med Kv Form av framställan [R5]\n\nOID: 1.2.752.129.2.2.2.7\n\nGiltiga värden:\n\n3 = skriftligt elektroniskt\n\n4 = skriftligt papper\n\nExempel:\n\nmedium.codesystem = 1.2.752.129.2.2.2.7\n\nmedium.code = 3\n\nmedium.displayName = skriftligt elektroniskt",
      "comment" : "TKB-fält: `../../../medium` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.author",
      "path" : "getrequestactivities.requestActivity.body.request.author",
      "short" : "RequestAuthorType",
      "definition" : "Remittent\n\nFörfattare av remissen.",
      "comment" : "TKB-fält: `../../../author` (`RequestAuthorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.author.name",
      "path" : "getrequestactivities.requestActivity.body.request.author.name",
      "short" : "name",
      "definition" : "Remittentens namn",
      "comment" : "TKB-fält: `../../../../name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.author.organization",
      "path" : "getrequestactivities.requestActivity.body.request.author.organization",
      "short" : "OrganizationType",
      "definition" : "Remitterande enhet",
      "comment" : "TKB-fält: `../../../../organization` (`OrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.author.organization.id",
      "path" : "getrequestactivities.requestActivity.body.request.author.organization.id",
      "short" : "id",
      "definition" : "Remitterande enhetens id\n\nroot sätts till OID för HSA-id (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id",
      "comment" : "TKB-fält: `../../../../../id` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.author.organization.name",
      "path" : "getrequestactivities.requestActivity.body.request.author.organization.name",
      "short" : "name",
      "definition" : "Remitterande enhetens namn.",
      "comment" : "TKB-fält: `../../../../../name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.receivingOrganization",
      "path" : "getrequestactivities.requestActivity.body.request.receivingOrganization",
      "short" : "OrganizationType",
      "definition" : "Remissmottagande enhet.",
      "comment" : "TKB-fält: `../../../receivingOrganization` (`OrganizationType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.receivingOrganization.id",
      "path" : "getrequestactivities.requestActivity.body.request.receivingOrganization.id",
      "short" : "id",
      "definition" : "Remissmottagande enhets id\n\nIdentitetsbeteckning för den som är angiven mottagare till remissen eller den faktiska mottagaren om detta ändras (om remissen har skickats vidare).\n\nroot sätts till OID för HSA-id (1.2.752.129.2.1.4.1)\n\nextension sätts till HSA-id",
      "comment" : "TKB-fält: `../../../../id` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getrequestactivities.requestActivity.body.request.receivingOrganization.name",
      "path" : "getrequestactivities.requestActivity.body.request.receivingOrganization.name",
      "short" : "name",
      "definition" : "Remissmottagande enhetens namn.",
      "comment" : "TKB-fält: `../../../../name` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
