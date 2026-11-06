# GetVaccinationHistory - clinicalprocess: activityprescription: actoutcome v2.2.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetVaccinationHistory**

## Logical Model: GetVaccinationHistory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetVaccinationHistory |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetVaccinationHistory (RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2). Representerar responsens informationsstruktur — vaccinationsjournal per patient. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-activityprescription-actoutcome|current/StructureDefinition/StructureDefinition-getvaccinationhistory.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getvaccinationhistory.csv), [Excel](StructureDefinition-getvaccinationhistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getvaccinationhistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory",
  "version" : "2.0",
  "name" : "GetVaccinationHistory",
  "title" : "GetVaccinationHistory",
  "status" : "active",
  "date" : "2026-11-06T20:58:52+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetVaccinationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — vaccinationsjournal per patient.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/StructureDefinition/getvaccinationhistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getvaccinationhistory",
      "path" : "getvaccinationhistory",
      "short" : "GetVaccinationHistory",
      "definition" : "Logisk modell för tjänstekontraktet GetVaccinationHistory\n(RIV-TA urn:riv:clinicalprocess:activityprescription:actoutcome:GetVaccinationHistoryResponder:2).\nRepresenterar responsens informationsstruktur — vaccinationsjournal per patient."
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord",
      "short" : "En strukturerad vaccinationsjournal",
      "definition" : "En strukturerad vaccinationsjournal.",
      "comment" : "TKB-fält: `vaccinationMedicalRecord` (`VaccinationMedicalRecordType`, kardinalitet 0..*).\n\n**Modellanteckning:** En strukturerad vaccinationsjournal. Kan innehålla en eller flera administreringsposter.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader",
      "short" : "Basinformation om dokumentet",
      "definition" : "Innehåller basinformation om dokumentet.",
      "comment" : "TKB-fält: `../vaccinationMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentId",
      "short" : "Identifierare för uppgift i patientjournal",
      "definition" : "Identifierare för uppgift i patientjournal.\n\nIdentifieraren ska vara konsistent och beständig mellan olika majorversioner av ett tjänstekontrakt. Detta för att en tjänstekonsument ska kunna ta bort dubbletter från de tjänsteproducenter som producerar via flera majorversioner. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska även vara konsistent och beständig mellan olika tjänstekontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.sourceSystemHSAId",
      "short" : "Det källsystem som uppgiften lagras i",
      "definition" : "Det källsystem som uppgiften lagras i.\n\nSätts till OID för HSA-katalogen (1.2.752.129.2.1.4.1)",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTitle",
      "short" : "Titel som beskriver informationen",
      "definition" : "Titel som beskriver den information som tillgängliggörs.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.documentTime",
      "short" : "Händelsetidpunkt (vaccinationstidpunkt)",
      "definition" : "Händelsetidpunkt. Tidsangivelse för den vaccinationstidpunkt dokumentet gäller.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.patientId",
      "short" : "Personidentifierare för patienten",
      "definition" : "Personidentifierare för patienten.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** id = patientens identifierare (12 tecken utan avskiljare).\ntype = OID för typ av personidentifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional",
      "short" : "Dokumentationsansvarig",
      "definition" : "Information avseende dokumentation av uppgiften som tillgängliggörs.\n\nNotera att den som registrerar uppgiften från annan källa, exempelvis en medicinsk sekreterare som transkriberar ett diktat, inte avses.",
      "comment" : "TKB-fält: `../../accountableHealthCareProfessional` (`HealthCareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.authorTime",
      "short" : "Tidpunkt för dokumentation",
      "definition" : "Tidpunkt då uppgiften dokumenterades eller senast uppdaterades.\n\nI de fall då uppgiften ursprungligen dokumenterats eller uppdaterats i ett annat informationssystem än tjänsteproducentens källsystem (t.ex. laboratorieinformationssystem), ska tidpunkten spegla informationen från systemet där uppgiften ursprungligen dokumenterades.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalHSAId",
      "short" : "HSA-id för personal",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal som dokumenterat uppgiften som tillgängliggörs.\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalName",
      "short" : "Namn på personal",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning",
      "definition" : "Information om hälso- och sjukvårdspersonalens befattning så som den var angiven i HSA-katalogen vid dokumentationstidpunkten.\n\nAnges med HSAs kodverk Befattning (OID: 1.2.752.129.2.2.1.4) [R6].\n\nOm kod inte är tillgänglig anges befattning som klartext i datatypens attribut originalText.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet.\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namnet på den organisation som hälso- och sjukvårdspersonen är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet",
      "comment" : "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post till organisationsenhet",
      "definition" : "E-post till organisationsenhet",
      "comment" : "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress till organisationsenhet",
      "definition" : "Postadress för den organisation som hälso- och sjukvårdspersonen är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats/ort för organisationens fysiska placering",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "comment" : "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenheten där uppgiften är dokumenterad. För mer information av vad som avses med vårdenhet, se [R17].\n\nI de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet).\n\nRegel 1.1",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.accountableHealthCareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id/id för vårdgivare",
      "definition" : "Id för uppgiftsägande vårdgivare. För mer information av vad som avses med vårdgivare, se [R17].\n\nI första hand HSA-id, i andra hand organisationsnummer.\n\nRegel 1.1",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator",
      "short" : "Information om signering",
      "definition" : "Information avseende signering av uppgiften som tillgängliggörs.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Tidpunkt då uppgiften signerades.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande personal",
      "definition" : "HSA-id för hälso- och sjukvårdspersonal som signerat uppgiften som tillgängliggörs.\n\nI de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande personal",
      "definition" : "Namn på hälso- och sjukvårdspersonal. Anges med tilltalsnamn och efternamn.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.approvedForPatient",
      "short" : "Beslut om synlighet för patient (PDL-prövning)",
      "definition" : "Ansvarig vårdpersonals beslut, alternativt verksamhetens policy och regler (men- och sekretessprövning), huruvida uppgiften får delas till patient för ändamålet patients åtkomst (Individens direktåtkomst).\n\nOm uppgiften beslutas delas sätts värdet till true, i annat fall till false. False innebär att uppgiften inte får delas till patient.\n\nNotera att värdet kan, för samma uppgift, förändras med tiden på grund av att rådrumstid har passerats, eller att verksamheten ändrat policy för vad som lämnas ut till patient. I sådana fall skall källsystemet uppdatera engagemangsindex.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.careContactId",
      "short" : "Identitet för vård- och omsorgskontakt",
      "definition" : "Identitetet för den vård- och omsorgskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullified",
      "short" : "Anger om dokumentet makulerats i källsystemet",
      "definition" : "Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.",
      "comment" : "TKB-fält: `../../nullified` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordHeader.nullifiedReason",
      "short" : "Orsak till makulering",
      "definition" : "Anger orsak till makulering. Får endast anges i kombination med att nullified = true",
      "comment" : "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody",
      "short" : "Vaccinationsjournalens innehåll",
      "definition" : "Består av en registrationData med ytterligare administrativ information samt en eller flera vaccinationData om utförda vaccinationer vid vaccinationstillfället.",
      "comment" : "TKB-fält: `../vaccinationMedicalRecordBody` (`VaccinationMedicalRecordBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord",
      "short" : "Administrativ information om vaccinationstillfället",
      "definition" : "Annan information än ovan som registreras vid eller relaterat till vaccinationstillfället",
      "comment" : "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.date",
      "short" : "Datum då vaccination(er) gavs",
      "definition" : "Datum då nedan vaccination(er) gavs",
      "comment" : "TKB-fält: `../../../date` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientPostalCode",
      "short" : "Postnummer för patientens senast kända bostadsadress",
      "definition" : "Postnummer för patientens senast kända bostadsadress",
      "comment" : "TKB-fält: `../../../patientPostalCode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.vaccinationUnstructuredNote",
      "short" : "Fritextsammanfattning av strukturerad information",
      "definition" : "Enligt CDA:s konvention med läsbar fritextsammanfattning av den strukturerade information kan också använda här.\n\nNot: Om endast ostrukturerad vaccinationsinformation finns, kan, detta kontrakt produceras men i så fall inga administrationRecords nedan returneras.",
      "comment" : "TKB-fält: `../../../vaccinationUnstructuredNote` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.riskCategory",
      "short" : "Patientens riskgruppstillhörighet vid vaccinationstillfället",
      "definition" : "Information om patientens eventuella riskgruppstillhörighet, känd vid vaccinationstillfället, baserad på i förekommande fall patientens hälsodeklaration",
      "comment" : "TKB-fält: `../../../riskCategory` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.patientAdverseEffect",
      "short" : "Reaktioner hos patienten vid vaccinationstillfället",
      "definition" : "Information om patienten erfarit någon eller några reaktioner hänför bara till vaccinationstillfället men ej specifik vaccination (i fall som när flera vaccin givits vid samma tillfälle)",
      "comment" : "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg",
      "short" : "Information om juridisk vårdgivare",
      "definition" : "Information om juridisk vårdgivare; hsaid (om finns) och kontaktuppgifter namn, e-post, tel, adress etc.",
      "comment" : "TKB-fält: `../../../careGiverOrg` (`OrgUnitType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namn på organisationsenhet",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitEmail",
      "short" : "E-post",
      "definition" : "E-post",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitAddress",
      "short" : "Postadress",
      "definition" : "Postadress",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverOrg.orgUnitLocation",
      "short" : "Plats/ort",
      "definition" : "Plats/ort",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact",
      "short" : "Kontaktperson hos juridiskt ansvarig vårdgivare",
      "definition" : "Kontaktperson hos juridiskt ansvarig vårdgivare",
      "comment" : "TKB-fält: `../../../careGiverContact` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorId",
      "short" : "Identifierare för aktören",
      "definition" : "Identifierare för aktören",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careGiverContact.actorName",
      "short" : "Namn på aktören",
      "definition" : "Namn på aktören",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemName",
      "short" : "Klartextnamn på källsystemet/organisationen",
      "definition" : "Klartextnamn på källsystemet.\n\nDetta fält fylls med namnet på den organisationen som ansvarar för vaccinationen, till exempel privat företag eller vårdgivarens huvudman.",
      "comment" : "TKB-fält: `../../../sourceSystemName` (`String`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductName",
      "short" : "Källsystemets produktnamn",
      "definition" : "Klartextnamn på källsystemets produktnamn",
      "comment" : "TKB-fält: `../../../sourceSystemProductName` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemProductVersion",
      "short" : "Källsystemets produktversion",
      "definition" : "Klartextnamn på källsystemets produktversion",
      "comment" : "TKB-fält: `../../../sourceSystemProductVersion` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact",
      "short" : "Kontaktuppgifter till källsystemsansvarig",
      "definition" : "Kontaktuppgifter till källsystemsansvarig",
      "comment" : "TKB-fält: `../../../sourceSystemContact` (`ActorType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.sourceSystemContact.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.registrationRecord.careUnitSmiId",
      "short" : "Utförande vårdenhetens registreringsId hos SMI (Folkhälsomyndigheten)",
      "definition" : "Utförande vårdenhetens registreringsId hos SMI",
      "comment" : "TKB-fält: `../../../careUnitSmiId` (`String`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord",
      "short" : "Information om utförd vaccination",
      "definition" : "Information om utförd(a) vaccination(er) vid tillfället. Ordinerad men av någon anledning ej given vaccination kan inkluderas.",
      "comment" : "TKB-fält: `../../administrationRecord` (`AdministrationRecordType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationProgramName",
      "short" : "Information om vaccinationsprogram",
      "definition" : "Information om vaccinationsprogram om vaccinationen är del av sådant program. Tillåter kodat värde liksom endast namn genom bruk av originalText i CVType.",
      "comment" : "TKB-fält: `../../../vaccinationProgramName` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg",
      "short" : "Information om var vaccinationen ordinerats",
      "definition" : "Information om var vaccinationen ordinerats (eller i fallet med förskrivna vaccinationsläkemedel, förskrivits)",
      "comment" : "TKB-fält: `../../../prescriberOrg` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberOrg.orgUnitName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson",
      "short" : "Information om vem som ordinerat/förskrivit",
      "definition" : "Information om vem som ordinerat/förskrivit vaccinationen",
      "comment" : "TKB-fält: `../../../prescriberPerson` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.prescriberPerson.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg",
      "short" : "Information om vårdenhet som utfört vaccinationen",
      "definition" : "Information om vårdenhet som utfört vaccinationen",
      "comment" : "TKB-fält: `../../../performerOrg` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performerOrg.orgUnitName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer",
      "short" : "Information om vem som administrerat vaccineringen",
      "definition" : "Information om vem som utfört (administrerat) vaccineringen",
      "comment" : "TKB-fält: `../../../performer` (`ActorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorId",
      "short" : "Identifierare",
      "definition" : "Identifierare",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.performer.actorName",
      "short" : "Namn",
      "definition" : "Namn",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.anatomicalSite",
      "short" : "Var på kroppen vaccinet givits",
      "definition" : "Information om var på kroppen vaccinet givits.",
      "comment" : "TKB-fält: `../../../anatomicalSite` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.route",
      "short" : "Hur vaccinet givits (administrationsväg)",
      "definition" : "Information om hur vaccinet givits. Ibland kallat ”administrationsväg”",
      "comment" : "TKB-fält: `../../../route` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose",
      "short" : "Mängd vaccin som givits",
      "definition" : "Mängd vaccin som givits",
      "comment" : "TKB-fält: `../../../dose` (`DoseType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.quantity",
      "short" : "Mängd preparat som givits (strukturerad form)",
      "definition" : "Mängd preparat som givits dvs 1 ml etc.\n\nSka anges om möjligt i denna strukturerade form med värde(float) samt enhet. Annars i nästa fält om det endast finns angivet som text.",
      "comment" : "TKB-fält: `../../../../quantity` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.dose.displayName",
      "short" : "Fritextbeskrivning av mängd vaccin, t.ex. '1 ml'",
      "definition" : "Fritextbeskrivning av mängd vaccin som givits. T ex ”1 ml”\n\nAnges även om quantity angivits ovan.",
      "comment" : "TKB-fält: `../../../../displayName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.isDoseComplete",
      "short" : "True om vaccinering räknas som hel dos",
      "definition" : "True om vaccineringen räknas som hel dos eller efter flera delvaccinationer fullt utförd. Annars false (dvs för de fall som ytterligare delvaccinationer ska ges innan full dos är uppnådd)",
      "comment" : "TKB-fält: `../../../isDoseComplete` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.doseOrdinalNumber",
      "short" : "Anger vilken dos i ordningen",
      "definition" : "Anger vilken dos i ordningen som administrerats då vaccineringen är en del av flera vaccinationer som ska utföras för att räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos.\n\nExempel: om tre doser krävs för att vaccinationen ska uppnå full dos och patient erhåller den andra i ordningen anges detta värde som 2.",
      "comment" : "TKB-fält: `../../../doseOrdinalNumber` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.numberOfPrescribedDoses",
      "short" : "Antal delvaccinationer för hel dos",
      "definition" : "Anger antalet delvaccinationer som ska utföras för att vaccinationen ska räknas som full dos uppnådd. Värden 1,2,3,… 1 om endast en vaccinering utgör full dos\n\nExempel: om tre doser krävs för att vaccinationen ska uppnå full dos anges detta värde som 3.",
      "comment" : "TKB-fält: `../../../numberOfPrescribedDoses` (`integer`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.sourceDescription",
      "short" : "Fritext om källa för efterregistrerad vaccinering",
      "definition" : "Fritextinformation som anger källa för vaccinering som efterregistrerats. T ex namn på annan vårdenhet, intyg, land el. dyl.",
      "comment" : "TKB-fält: `../../../sourceDescription` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentPrescription",
      "short" : "Fritext: instruktioner från ordination",
      "definition" : "Fritextinformation. T.ex. instruktioner som noterats i ordinationen av vaccineringen",
      "comment" : "TKB-fält: `../../../commentPrescription` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.commentAdministration",
      "short" : "Fritext: kommentarer vid vaccinering",
      "definition" : "Fritextinformation. Generella kommentarer gjorde vid vaccineringen av den som utfört den",
      "comment" : "TKB-fält: `../../../commentAdministration` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.patientAdverseEffect",
      "short" : "Reaktioner för det specifika administreringstillfället",
      "definition" : "Information om patienten erfarit någon eller några reaktioner hänför bara till den specifika administreringen",
      "comment" : "TKB-fält: `../../../patientAdverseEffect` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.typeOfVaccine",
      "short" : "Vaccintyp (vilka sjukdomar vaccinet skyddar emot)",
      "definition" : "Information om givet vaccin. Beskriver vaccintyp i praktiken genom att beskriva vilka sjukdomar som vaccinet skyddar emot (exempel på koder: Hep A, MPR och säsongsinfluensa).",
      "comment" : "TKB-fält: `../../../typeOfVaccine` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineName",
      "short" : "Vaccinets produktnamn (NPL-id rekommenderas)",
      "definition" : "Information om givet vaccins produktnamn. I code ska anges företrädelsevis NPL-id (codeSystem =1.2.752.129.2.1.5.1, codeSystemName = ”NPL”). Om standardkodverk ej används anges endast namnet på vaccinet i attributet originalText.",
      "comment" : "TKB-fält: `../../../vaccineName` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineBatchId",
      "short" : "Batchnummer för vaccinets tillverkning",
      "definition" : "Identifiering av batchnummer för vaccinets tillverkning",
      "comment" : "TKB-fält: `../../../vaccineBatchId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineManufacturer",
      "short" : "Namn på vaccintillverkaren",
      "definition" : "Namn på tillverkaren av vaccinet.",
      "comment" : "TKB-fält: `../../../vaccineManufacturer` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccineTargetDisease",
      "short" : "Sjukdomar vaccinet skyddar emot",
      "definition" : "Information om den/de sjukdomar vaccinet skyddar emot.",
      "comment" : "TKB-fält: `../../../vaccineTargetDisease` (`CVType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.administrationRecord.vaccinationUniqueReference",
      "short" : "Unik referens till källsystemets vaccinationsinformation",
      "definition" : "Unika referensen till källsystemets vaccinationsinformation.",
      "comment" : "TKB-fält: `../../../vaccinationUniqueReference` (`IIType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation",
      "short" : "Ytterligare patientinformation",
      "definition" : "Ytterligare information om patienten som inte går att få tag på via en gemensam PU-slagning.",
      "comment" : "TKB-fält: `../../additionalPatientInformation` (`AdditionalPatientInformationType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.dateOfBirth",
      "short" : "Patientens födelsedatum",
      "definition" : "Patientens födelsedatum.",
      "comment" : "TKB-fält: `../../../dateOfBirth` (`DateType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender",
      "path" : "getvaccinationhistory.vaccinationMedicalRecord.vaccinationMedicalRecordBody.additionalPatientInformation.gender",
      "short" : "Patientens kön. KV Kön (OID 1.2.752.129.2.2.1.1) bör användas",
      "definition" : "Patientens kön. KV Kön (1.2.752.129.2.2.1.1) bör användas.",
      "comment" : "TKB-fält: `../../../gender` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getvaccinationhistory.result",
      "path" : "getvaccinationhistory.result",
      "short" : "Svarsstatus",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getvaccinationhistory.result.resultCode",
      "path" : "getvaccinationhistory.result.resultCode",
      "short" : "OK, INFO eller ERROR",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getvaccinationhistory.result.errorCode",
      "path" : "getvaccinationhistory.result.errorCode",
      "short" : "Sätts om resultCode är ERROR",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-activityprescription-actoutcome/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getvaccinationhistory.result.subcode",
      "path" : "getvaccinationhistory.result.subcode",
      "short" : "Inga subkoder specificerade",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.result.logId",
      "path" : "getvaccinationhistory.result.logId",
      "short" : "UUID för felsökning hos producent",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getvaccinationhistory.result.message",
      "path" : "getvaccinationhistory.result.message",
      "short" : "Beskrivande text för användaren",
      "definition" : "En beskrivande text som kan visas för användaren.",
      "comment" : "TKB-fält: `../message` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
