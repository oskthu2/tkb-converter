# GetObservations - clinicalprocess: healthcond: basic v1.2.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetObservations**

## Logical Model: GetObservations 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations | *Version*:1.2 |
| Active as of 2026-10-08 | *Computable Name*:GetObservations |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetObservations 1.2 (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse). Representerar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient, utförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer (TKB avsnitt 5.1) motsvarar svarsmeddelandet. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-basic|current/StructureDefinition/StructureDefinition-getobservations.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getobservations.csv), [Excel](StructureDefinition-getobservations.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getobservations",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations",
  "version" : "1.2",
  "name" : "GetObservations",
  "title" : "GetObservations",
  "status" : "active",
  "date" : "2026-10-08T18:07:24+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).\nRepresenterar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,\nutförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer\n(TKB avsnitt 5.1) motsvarar svarsmeddelandet.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getobservations",
      "path" : "getobservations",
      "short" : "GetObservations",
      "definition" : "Logisk modell för tjänstekontraktet GetObservations 1.2\n(RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).\nRepresenterar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,\nutförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer\n(TKB avsnitt 5.1) motsvarar svarsmeddelandet."
    },
    {
      "id" : "getobservations.observationGroup",
      "path" : "getobservations.observationGroup",
      "short" : "Grupp av observationer som delar samma patient, utförare, signerare, deltagare och källsystem (ObservationGroupType).",
      "definition" : "Denna nivå är framförallt till för att begränsa mängden redundant data i överföringen i de fall då flera\nobservationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck).\nKlassen är en teknisk optimering som inte speglas i NI 2015:1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient",
      "path" : "getobservations.observationGroup.patient",
      "short" : "Den patient som observationsgruppen avser (PatientType).",
      "definition" : "Den patient som observationsgruppen avser (PatientType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.patientId",
      "path" : "getobservations.observationGroup.patient.patientId",
      "short" : "Id för patienten, 12 tecken utan avskiljare (IIType).",
      "definition" : "- root: OID för typ av identifierare. Personnummer 1.2.752.129.2.1.3.1, samordningsnummer\n  1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL reservnummer 1.2.752.97.3.1.3).\n- extension: personnummer/samordningsnummer/reservnummer.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.patientName",
      "path" : "getobservations.observationGroup.patient.patientName",
      "short" : "Personens namn.",
      "definition" : "Personens namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.dateOfBirth",
      "path" : "getobservations.observationGroup.patient.dateOfBirth",
      "short" : "Patientens födelseår, månad och dag. Ej personnummer. Format ÅÅÅÅMMDD (DateType).",
      "definition" : "Patientens födelseår, månad och dag. Ej personnummer. Format ÅÅÅÅMMDD (DateType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getobservations.observationGroup.patient.gender",
      "path" : "getobservations.observationGroup.patient.gender",
      "short" : "Patientens kön (CVType). KV kön, OID 1.2.752.129.2.2.1.1.",
      "definition" : "Koder: 0 okänt, 1 man, 2 kvinna, 9 ej tillämpligt. Kodverket finns i [R9].",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole",
      "path" : "getobservations.observationGroup.performerRole",
      "short" : "Den som utfört observationerna inom gruppen (PerformerRoleType).",
      "definition" : "Den som utfört observationerna inom gruppen (PerformerRoleType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-performer-careunit",
        "severity" : "warning",
        "human" : "Regel 2.1: careUnit ska endast anges då utföraren är hälso- och sjukvårdspersonal (performerRole.id angivet med HSA-id).",
        "expression" : "careUnit.exists() implies performerRoleId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.performerRoleId",
      "path" : "getobservations.observationGroup.performerRole.performerRoleId",
      "short" : "HSA-id för personen som utfört observationen (IIType). Regel 2.1.",
      "definition" : "Anges enbart om observationen utförts av hälso- och sjukvårdspersonal.\nroot = 1.2.752.129.2.1.4.1 (HSA-katalogen), extension = HSA-id.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.performerRoleCode",
      "path" : "getobservations.observationGroup.performerRole.performerRoleCode",
      "short" : "Den roll som utföraren agerar i under observationen (CVType).",
      "definition" : "Den roll som utföraren agerar i under observationen (CVType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person",
      "path" : "getobservations.observationGroup.performerRole.person",
      "short" : "Den person som utfört observationen (PersonType). Regel 2.1.",
      "definition" : "Används då det finns behov av att beskriva egenskaper hos personen som inte beskrivs i performerRole\n(t.ex. namn på hälso- och sjukvårdspersonal), eller då observationen utförts av en person som inte\nklassas som hälso- och sjukvårdspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-person-id-or-name",
        "severity" : "warning",
        "human" : "Om person.id inte anges måste person.name vara angiven (regel 2.1).",
        "expression" : "personId.exists() or personName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person.personId",
      "path" : "getobservations.observationGroup.performerRole.person.personId",
      "short" : "Identifierare för personen (IIType).",
      "definition" : "Anges endast om observationen utförts av person som INTE klassas som hälso- och sjukvårdspersonal.\nroot: OID för personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3) eller\nlokalt definierat reservnummer. extension: personnummer/samordningsnummer/reservnummer.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.person.personName",
      "path" : "getobservations.observationGroup.performerRole.person.personName",
      "short" : "För- och efternamn i klartext. Regel 2.1.",
      "definition" : "För- och efternamn i klartext. Regel 2.1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit",
      "path" : "getobservations.observationGroup.performerRole.careUnit",
      "short" : "PDL-vårdenhet och vårdgivare som observationen utförs på uppdrag av (CareUnitType). Regel 2.1, 2.5.",
      "definition" : "Ska endast anges då den person som utfört observationen är hälso- och sjukvårdspersonal.\nKrävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careUnitId",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careUnitId",
      "short" : "HSA-id för PDL-vårdenhet med medicinskt ansvar för observationen (IIType).",
      "definition" : "HSA-id för PDL-vårdenhet med medicinskt ansvar för observationen (IIType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careUnitName",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careUnitName",
      "short" : "Vårdenhetens namn.",
      "definition" : "Vårdenhetens namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver",
      "short" : "Den vårdgivare som enheten är knuten till (CareGiverType).",
      "definition" : "Den vårdgivare som enheten är knuten till (CareGiverType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver.careGiverId",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver.careGiverId",
      "short" : "HSA-id för vårdgivaren (IIType).",
      "definition" : "HSA-id för vårdgivaren (IIType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.performerRole.careUnit.careGiver.careGiverName",
      "path" : "getobservations.observationGroup.performerRole.careUnit.careGiver.careGiverName",
      "short" : "Vårdgivarens namn.",
      "definition" : "Vårdgivarens namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator",
      "path" : "getobservations.observationGroup.legalAuthenticator",
      "short" : "Den som signerat observationerna inom gruppen (LegalAuthenticatorType). Regel 2.3.",
      "definition" : "En kompakt och specifik version av AdditionalParticipation; indirekt en Professionell aktör med\ndeltagandetyp signerare enligt V-MIM.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-legalauthenticator-id-or-name",
        "severity" : "error",
        "human" : "Regel 2.3: Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges.",
        "expression" : "legalAuthenticatorId.exists() or legalAuthenticatorName.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.legalAuthenticatorId",
      "path" : "getobservations.observationGroup.legalAuthenticator.legalAuthenticatorId",
      "short" : "HSA-id för personen som signerat (IIType). root = 1.2.752.129.2.1.4.1.",
      "definition" : "HSA-id för personen som signerat (IIType). root = 1.2.752.129.2.1.4.1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.signatureTime",
      "path" : "getobservations.observationGroup.legalAuthenticator.signatureTime",
      "short" : "Tid för signeringen (PartialTimeStampType). Format ÅÅÅÅMMDDttmmss där klockslaget är frivilligt.",
      "definition" : "Tid för signeringen (PartialTimeStampType). Format ÅÅÅÅMMDDttmmss där klockslaget är frivilligt.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.signatureTime.format",
      "path" : "getobservations.observationGroup.legalAuthenticator.signatureTime.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.signatureTime.timeValue",
      "path" : "getobservations.observationGroup.legalAuthenticator.signatureTime.timeValue",
      "short" : "Tidpunkten, YYYY till YYYYMMDDhhmmss (PartialTimeStampValueType).",
      "definition" : "Tidpunkten, YYYY till YYYYMMDDhhmmss (PartialTimeStampValueType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.legalAuthenticator.legalAuthenticatorName",
      "path" : "getobservations.observationGroup.legalAuthenticator.legalAuthenticatorName",
      "short" : "För- och efternamn i klartext för signerande person. Regel 2.3.",
      "definition" : "För- och efternamn i klartext för signerande person. Regel 2.3.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant",
      "path" : "getobservations.observationGroup.additionalParticipant",
      "short" : "Övriga deltagare relaterade till observationerna inom gruppen (AdditionalParticipantType). Regel 2.2.",
      "definition" : "Övriga deltagare relaterade till observationerna inom gruppen (AdditionalParticipantType). Regel 2.2.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-participant-one-kind",
        "severity" : "error",
        "human" : "Endast en av person, organisation, device och location får anges för en ytterligare deltagare.",
        "expression" : "(person.count() + organisation.count() + device.count() + location.count()) <= 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participantId",
      "path" : "getobservations.observationGroup.additionalParticipant.participantId",
      "short" : "HSA-id för ytterligare deltagare som är hälso- och sjukvårdspersonal (IIType).",
      "definition" : "HSA-id för ytterligare deltagare som är hälso- och sjukvårdspersonal (IIType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participationType",
      "path" : "getobservations.observationGroup.additionalParticipant.participationType",
      "short" : "Typ av deltagande (CVType), t.ex. sekundär utförare/assistent.",
      "definition" : "codeSystemName, codeSystemVersion och displayName ska ej anges (0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participantRole",
      "path" : "getobservations.observationGroup.additionalParticipant.participantRole",
      "short" : "Den roll deltagaren agerar i (CVType), t.ex. anhörig eller vårdpersonal.",
      "definition" : "codeSystemName, codeSystemVersion och displayName ska ej anges (0..0).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participationTime",
      "path" : "getobservations.observationGroup.additionalParticipant.participationTime",
      "short" : "Deltagandetid om den inte överensstämmer med observationens (TimePeriodType).",
      "definition" : "Deltagandetid om den inte överensstämmer med observationens (TimePeriodType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participationTime.start",
      "path" : "getobservations.observationGroup.additionalParticipant.participationTime.start",
      "short" : "Startdatum. Format ÅÅÅÅMMDDttmmss.",
      "definition" : "Startdatum. Format ÅÅÅÅMMDDttmmss.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.participationTime.end",
      "path" : "getobservations.observationGroup.additionalParticipant.participationTime.end",
      "short" : "Slutdatum. Format ÅÅÅÅMMDDttmmss.",
      "definition" : "Slutdatum. Format ÅÅÅÅMMDDttmmss.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person",
      "path" : "getobservations.observationGroup.additionalParticipant.person",
      "short" : "Deltagande övrig person (PersonType).",
      "definition" : "Deltagande övrig person (PersonType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person.personId",
      "path" : "getobservations.observationGroup.additionalParticipant.person.personId",
      "short" : "Identifierare för personen (IIType).",
      "definition" : "Identifierare för personen (IIType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.person.personName",
      "path" : "getobservations.observationGroup.additionalParticipant.person.personName",
      "short" : "För- och efternamn i klartext.",
      "definition" : "För- och efternamn i klartext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation",
      "short" : "Deltagande övrig organisation (OrganisationType).",
      "definition" : "Deltagande övrig organisation (OrganisationType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation.organisationId",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation.organisationId",
      "short" : "Id för organisation, vanligtvis HSA-id (root 1.2.752.129.2.1.4.1).",
      "definition" : "Id för organisation, vanligtvis HSA-id (root 1.2.752.129.2.1.4.1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.organisation.organisationName",
      "path" : "getobservations.observationGroup.additionalParticipant.organisation.organisationName",
      "short" : "Organisationens namn.",
      "definition" : "Organisationens namn.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device",
      "path" : "getobservations.observationGroup.additionalParticipant.device",
      "short" : "Deltagande utrustning (DeviceType).",
      "definition" : "Deltagande utrustning (DeviceType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.deviceId",
      "path" : "getobservations.observationGroup.additionalParticipant.device.deviceId",
      "short" : "Identitetsbeteckning på en viss verklig instans av utrustning (IIType).",
      "definition" : "Identitetsbeteckning på en viss verklig instans av utrustning (IIType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.deviceType",
      "path" : "getobservations.observationGroup.additionalParticipant.device.deviceType",
      "short" : "Typ av deltagande utrustning (CVType).",
      "definition" : "Typ av deltagande utrustning (CVType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model",
      "short" : "Modell för angiven utrustning (SCType).",
      "definition" : "Modell för angiven utrustning (SCType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.modelCode",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.modelCode",
      "short" : "Modellbeteckning (CVType). codeSystemVersion ska ej anges.",
      "definition" : "Modellbeteckning (CVType). codeSystemVersion ska ej anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.device.model.modelValue",
      "path" : "getobservations.observationGroup.additionalParticipant.device.model.modelValue",
      "short" : "Tillverkarens modellbeteckning i klartext; komplement eller i stället för modelCode.",
      "definition" : "Tillverkarens modellbeteckning i klartext; komplement eller i stället för modelCode.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location",
      "path" : "getobservations.observationGroup.additionalParticipant.location",
      "short" : "Deltagande plats (LocationType). Sammanslagning av roll och plats enligt V-MIM.",
      "definition" : "Deltagande plats (LocationType). Sammanslagning av roll och plats enligt V-MIM.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.locationId",
      "path" : "getobservations.observationGroup.additionalParticipant.location.locationId",
      "short" : "HSA-id för platsen; anges om platsen är en vårdenhet (IIType).",
      "definition" : "HSA-id för platsen; anges om platsen är en vårdenhet (IIType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.locationName",
      "path" : "getobservations.observationGroup.additionalParticipant.location.locationName",
      "short" : "Namn på den plats där observationen har genomförts.",
      "definition" : "Namn på den plats där observationen har genomförts.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address",
      "short" : "Adress till plats (AddressType).",
      "definition" : "Adress till plats (AddressType).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.addressUse",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.addressUse",
      "short" : "Adressens användning (PostalAddressUseEnum). Den primära adressen anges utan use-kod.",
      "definition" : "Adressens användning (PostalAddressUseEnum). Den primära adressen anges utan use-kod.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/postaladdressuse-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part",
      "short" : "Adressdel (AddressPartType). Delarna listas i ordningen CAR, POB, SAL, ZIP, CTY, CNT, PRE, CPA.",
      "definition" : "Adressdel (AddressPartType). Delarna listas i ordningen CAR, POB, SAL, ZIP, CTY, CNT, PRE, CPA.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part.partValue",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part.partValue",
      "short" : "Adressdelens värde.",
      "definition" : "Adressdelens värde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.address.part.partType",
      "path" : "getobservations.observationGroup.additionalParticipant.location.address.part.partType",
      "short" : "Typ av adressdel (AddressPartTypeEnum, baserad på ISO 21090).",
      "definition" : "Typ av adressdel (AddressPartTypeEnum, baserad på ISO 21090).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/addressparttype-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress",
      "short" : "Elektronisk adress till plats (TelType).",
      "definition" : "Elektronisk adress till plats (TelType).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.telUse",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.telUse",
      "short" : "Typ av elektronisk adress (TelTypeEnum): voice, fax, data, sms.",
      "definition" : "Typ av elektronisk adress (TelTypeEnum): voice, fax, data, sms.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/teltype-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.telValue",
      "path" : "getobservations.observationGroup.additionalParticipant.location.electronicAddress.telValue",
      "short" : "Elektronisk adress.",
      "definition" : "Elektronisk adress.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.sourceSystem",
      "path" : "getobservations.observationGroup.sourceSystem",
      "short" : "Källsystem som observationsgruppen lagras i (SourceSystemType).",
      "definition" : "Källsystem som observationsgruppen lagras i (SourceSystemType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.sourceSystem.sourceSystemId",
      "path" : "getobservations.observationGroup.sourceSystem.sourceSystemId",
      "short" : "HSA-id för källsystemet (IIType). root = 1.2.752.129.2.1.4.1.",
      "definition" : "HSA-id för källsystemet (IIType). root = 1.2.752.129.2.1.4.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation",
      "path" : "getobservations.observationGroup.observation",
      "short" : "De observationer som ligger inom gruppen (ObservationType).",
      "definition" : "De observationer som ligger inom gruppen (ObservationType).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-status-not-used",
        "severity" : "warning",
        "human" : "TKB: status har kardinalitet 0..0 — denna version av specifikationen tillåter endast faktiskt utförda observationer (schemat tillåter 0..1).",
        "expression" : "observationStatus.empty()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationId",
      "path" : "getobservations.observationGroup.observation.observationId",
      "short" : "Unik identifierare för observationen (IIType).",
      "definition" : "Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett kontrakt och\nmellan olika kontrakt. root: vårdgivarens HSA-id. extension: den inom vårdgivaren eller\nkällsystemet unika identifieraren för observationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationType",
      "path" : "getobservations.observationGroup.observation.observationType",
      "short" : "NI 2015:1 Observation.typ — kod för typ av observation (CVType).",
      "definition" : "Det som faktiskt är avsett, önskat eller observerat tillstånd dokumenteras i value. Exempelvis kan\ntype vara \"diagnos\", vilket innebär att value håller diagnosen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationStatus",
      "path" : "getobservations.observationGroup.observation.observationStatus",
      "short" : "NI 2015:1 Observation.status (CVType). TKB: 0..0.",
      "definition" : "Denna version av specifikationen tillåter endast faktiskt utförda observationer; TKB anger kardinalitet\n0..0 medan schemat tillåter 0..1. Om statuskoden utelämnas antas detta vara en faktisk observation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime",
      "path" : "getobservations.observationGroup.observation.observationTime",
      "short" : "NI 2015:1 Observation.tid — tidsperiod för observationen (PartialTimePeriodType).",
      "definition" : "Om observationen är en tidpunkt sätts sluttid till samma tid som starttid. Minst en av start och end\nmåste vara angiven. Skiljer sig vanligtvis från registrationTime.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-period-bound",
        "severity" : "error",
        "human" : "Minst en av start och end måste vara angiven.",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.start",
      "path" : "getobservations.observationGroup.observation.observationTime.start",
      "short" : "Starttid (PartialTimeStampType).",
      "definition" : "Starttid (PartialTimeStampType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.start.format",
      "path" : "getobservations.observationGroup.observation.observationTime.start.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.start.timeValue",
      "path" : "getobservations.observationGroup.observation.observationTime.start.timeValue",
      "short" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "definition" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.end",
      "path" : "getobservations.observationGroup.observation.observationTime.end",
      "short" : "Sluttid (PartialTimeStampType).",
      "definition" : "Sluttid (PartialTimeStampType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.end.format",
      "path" : "getobservations.observationGroup.observation.observationTime.end.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.observationTime.end.timeValue",
      "path" : "getobservations.observationGroup.observation.observationTime.end.timeValue",
      "short" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "definition" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.method",
      "path" : "getobservations.observationGroup.observation.method",
      "short" : "Kod för typ av tillvägagångssätt för genomförandet av observationen (CVType).",
      "definition" : "Kod för typ av tillvägagångssätt för genomförandet av observationen (CVType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue",
      "path" : "getobservations.observationGroup.observation.observationValue",
      "short" : "NI 2015:1 Observation.värde — observationens utfall (ValueANYType).",
      "definition" : "En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts. I schemat en xs:sequence av valfria\nelement (av kompatibilitetsskäl i stället för xs:choice).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-value-one-type",
        "severity" : "error",
        "human" : "En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts ska anges i value (ValueANYType).",
        "expression" : "(cv.count() + pq.count() + ivlPq.count() + ts.count() + ivlTs.count()) = 1",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.cv",
      "path" : "getobservations.observationGroup.observation.observationValue.cv",
      "short" : "Kodat värde (CVType), t.ex. diagnoskod enligt ICD-10 eller kliniskt fynd enligt Snomed CT.",
      "definition" : "Kodat värde (CVType), t.ex. diagnoskod enligt ICD-10 eller kliniskt fynd enligt Snomed CT.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.pq",
      "path" : "getobservations.observationGroup.observation.observationValue.pq",
      "short" : "Mätvärde (PQType), t.ex. 187 cm.",
      "definition" : "Mätvärde (PQType), t.ex. 187 cm.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.pq.pqValue",
      "path" : "getobservations.observationGroup.observation.observationValue.pq.pqValue",
      "short" : "Den numeriska delen av värdet.",
      "definition" : "Den numeriska delen av värdet.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.pq.unit",
      "path" : "getobservations.observationGroup.observation.observationValue.pq.unit",
      "short" : "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1.",
      "definition" : "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq",
      "short" : "Mätvärdesintervall (ivl_pq, PQIntervalType i clinicalprocess_healthcond_basic_1.2_ext.xsd), t.ex. 5–10 st.",
      "definition" : "Mätvärdesintervall (ivl_pq, PQIntervalType i clinicalprocess_healthcond_basic_1.2_ext.xsd), t.ex. 5–10 st.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-ivlpq-bound",
        "severity" : "error",
        "human" : "Minst ett av fälten low och high måste anges i ivl_pq.",
        "expression" : "low.exists() or high.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq.low",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq.low",
      "short" : "Intervallets lägsta mätetal.",
      "definition" : "Intervallets lägsta mätetal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq.lowClosed",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq.lowClosed",
      "short" : "Om low ingår i intervallet (true: ≥, false: >).",
      "definition" : "Om low ingår i intervallet (true: ≥, false: >).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq.high",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq.high",
      "short" : "Intervallets högsta mätetal.",
      "definition" : "Intervallets högsta mätetal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq.highClosed",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq.highClosed",
      "short" : "Om high ingår i intervallet (true: ≤, false: <).",
      "definition" : "Om high ingår i intervallet (true: ≤, false: <).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlPq.unit",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlPq.unit",
      "short" : "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1.",
      "definition" : "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ts",
      "path" : "getobservations.observationGroup.observation.observationValue.ts",
      "short" : "Tidpunkt (PartialTimeStampType), precision ner till endast årtal.",
      "definition" : "Tidpunkt (PartialTimeStampType), precision ner till endast årtal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ts.format",
      "path" : "getobservations.observationGroup.observation.observationValue.ts.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ts.timeValue",
      "path" : "getobservations.observationGroup.observation.observationValue.ts.timeValue",
      "short" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "definition" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs",
      "short" : "Tidsintervall (ivl_ts, PartialTimePeriodType). Minst en av start och end ska anges.",
      "definition" : "Tidsintervall (ivl_ts, PartialTimePeriodType). Minst en av start och end ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getobservations-period-bound",
        "severity" : "error",
        "human" : "Minst en av start och end måste vara angiven.",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/StructureDefinition/getobservations"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.start",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.start",
      "short" : "Starttid (PartialTimeStampType).",
      "definition" : "Starttid (PartialTimeStampType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.start.format",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.start.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.start.timeValue",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.start.timeValue",
      "short" : "Tidpunkten.",
      "definition" : "Tidpunkten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.end",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.end",
      "short" : "Sluttid (PartialTimeStampType).",
      "definition" : "Sluttid (PartialTimeStampType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.end.format",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.end.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.observationValue.ivlTs.end.timeValue",
      "path" : "getobservations.observationGroup.observation.observationValue.ivlTs.end.timeValue",
      "short" : "Tidpunkten.",
      "definition" : "Tidpunkten.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.targetSite",
      "path" : "getobservations.observationGroup.observation.targetSite",
      "short" : "NI 2015:1 Observation.lokalisation (CVType).",
      "definition" : "Beskriver vad observationen avser gällande anatomi, funktion eller system. Används endast om inte\ntype innefattar tillräcklig information om detta.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.valueNegation",
      "path" : "getobservations.observationGroup.observation.valueNegation",
      "short" : "NI 2015:1 Observation.negation — negerar betydelsen av value. Normalvärde false.",
      "definition" : "NI 2015:1 Observation.negation — negerar betydelsen av value. Normalvärde false.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.description",
      "path" : "getobservations.observationGroup.observation.description",
      "short" : "Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen.",
      "definition" : "Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.approvedForPatient",
      "path" : "getobservations.observationGroup.observation.approvedForPatient",
      "short" : "Om informationen får delas till patient (menprövad).",
      "definition" : "Om informationen får delas till patient (menprövad).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.registrationTime",
      "path" : "getobservations.observationGroup.observation.registrationTime",
      "short" : "Dokumentationstidpunkt i patientens journal. Format ÅÅÅÅMMDDttmmss (TimeStampType).",
      "definition" : "Dokumentationstidpunkt i patientens journal. Format ÅÅÅÅMMDDttmmss (TimeStampType).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation",
      "path" : "getobservations.observationGroup.observation.relation",
      "short" : "Typade samband till andra informationsmängder (RelationType).",
      "definition" : "Typade samband till andra informationsmängder (RelationType).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.relationCode",
      "path" : "getobservations.observationGroup.observation.relation.relationCode",
      "short" : "Typ av relation den refererade informationen har till observationen (CVType).",
      "definition" : "Typ av relation den refererade informationen har till observationen (CVType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation",
      "short" : "Den refererade informationen (ReferredInformationType).",
      "definition" : "Den refererade informationen (ReferredInformationType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.referredInformationId",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.referredInformationId",
      "short" : "Den refererade informationens identitet (IIType).",
      "definition" : "root: HSA-id för källsystem där den refererade informationen är lagrad.\nextension: ett inom vårdgivaren unikt id.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime",
      "short" : "Starttid för refererad information (PartialTimeStampType). Regel 2.4.",
      "definition" : "Starttid för refererad information (PartialTimeStampType). Regel 2.4.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime.format",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime.format",
      "short" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "definition" : "Tidpunktens precision (TimeStampTypeFormatEnum).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-basic/ValueSet/timestamptypeformat-vs"
      }
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime.timeValue",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.referredTime.timeValue",
      "short" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "definition" : "Tidpunkten, YYYY till YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.referredType",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.referredType",
      "short" : "Typ av uppgift som sambandet pekar ut — kod från Categorization i engagemangsindex, t.ex. chb-o.",
      "definition" : "Typ av uppgift som sambandet pekar ut — kod från Categorization i engagemangsindex, t.ex. chb-o.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner",
      "short" : "Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType).",
      "definition" : "Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner.informationOwnerId",
      "path" : "getobservations.observationGroup.observation.relation.referredInformation.informationOwner.informationOwnerId",
      "short" : "Vårdgivarens HSA-id (IIType). root = 1.2.752.129.2.1.4.1.",
      "definition" : "Vårdgivarens HSA-id (IIType). root = 1.2.752.129.2.1.4.1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
