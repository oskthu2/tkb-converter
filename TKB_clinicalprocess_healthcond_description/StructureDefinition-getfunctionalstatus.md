# GetFunctionalStatus - clinicalprocess: healthcond: description v3.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetFunctionalStatus**

## Logical Model: GetFunctionalStatus 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetFunctionalStatus |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetFunctionalStatus (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2). Representerar responsens informationsstruktur: dokumenterade bedömningar av funktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient. Bedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning). En tjänsteproducent måste använda samma värde för categorization i engagemangsindex som för assessmentCategory i svaret. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-description|current/StructureDefinition/StructureDefinition-getfunctionalstatus.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getfunctionalstatus.csv), [Excel](StructureDefinition-getfunctionalstatus.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getfunctionalstatus",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus",
  "version" : "2.0",
  "name" : "GetFunctionalStatus",
  "title" : "GetFunctionalStatus",
  "status" : "active",
  "date" : "2026-11-06T21:05:44+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetFunctionalStatus\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).\nRepresenterar responsens informationsstruktur: dokumenterade bedömningar av\nfunktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient.\nBedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning).\nEn tjänsteproducent måste använda samma värde för categorization i engagemangsindex som\nför assessmentCategory i svaret.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getfunctionalstatus",
      "path" : "getfunctionalstatus",
      "short" : "GetFunctionalStatus",
      "definition" : "Logisk modell för tjänstekontraktet GetFunctionalStatus\n(RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2).\nRepresenterar responsens informationsstruktur: dokumenterade bedömningar av\nfunktionsnedsättningar och/eller aktivitetsförmåga (PADL) för en patient.\nBedömningskategori styrs av assessmentCategory: 'pad-pad' (PADL) eller 'fun-fun' (funktionsnedsättning).\nEn tjänsteproducent måste använda samma värde för categorization i engagemangsindex som\nför assessmentCategory i svaret."
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment",
      "path" : "getfunctionalstatus.functionalStatusAssessment",
      "short" : "Funktionsstatusbedömning",
      "definition" : "De funktionsstatusbedömningar som matchar begäran.",
      "comment" : "TKB-fält: `functionalStatusAssessment` (`FunctionalStatusAssessmentTime`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader",
      "short" : "Dokumenthuvud (PatientSummaryHeader)",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../functionalStatusAssessmentHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.documentId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.documentId",
      "short" : "Dokumentets identitet",
      "definition" : "Funktionsbedömningens identitet som är unik inom källsystemet.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId",
      "short" : "HSA-id för källsystem",
      "definition" : "HSA-id för det system tillgängliggör informationen.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime",
      "short" : "Bedömningstidpunkt",
      "definition" : "Bedömningstidpunkt/händelsetidpunkt.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Modellanteckning:** Bedömningstidpunkt/händelsetidpunkt. Format: YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.patientId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.patientId",
      "short" : "Patientidentifierare",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Identifierare för patient. id = patientens identifierare (12 tecken).\ntype = OID för typ av identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdsperson",
      "definition" : "Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "constraint" : [{
        "key" : "getfunctionalstatus-pdl-careunit-caregiver",
        "severity" : "warning",
        "human" : "Regel 1: HSA-id för vårdenhet och vårdgivare krävs för spärrhantering, åtkomstkontroll och loggning enligt PDL. Saknas de visas elementet inte av konsumenter inom sammanhållen journalföring.",
        "expression" : "healthcareProfessionalCareUnitHSAId.exists() and healthcareProfessionalCareGiverHSAId.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/StructureDefinition/getfunctionalstatus"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för registrering",
      "definition" : "Tidpunkt då informationen registrerades.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Författarens HSA-id",
      "definition" : "Författarens HSA-id.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn på författaren. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Namn på hälso- och sjukvårdspersonal.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Befattning",
      "definition" : "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13].\n\nI de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället.\n\nInformation som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).\n\n**Modellanteckning:** Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet",
      "definition" : "HSA-id för organisationsenhet.",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namn på organisationsenhet",
      "definition" : "Namnet på den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för vårdenhet",
      "definition" : "HSA-id för vårdenhet. (Regel:1)",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivare",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1)",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator",
      "short" : "Signerande person",
      "definition" : "Information om vem som signerat informationen i dokumentet.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering",
      "definition" : "Signaturtidpunkt.\n\nTid vid vilken funktionsstatusbedömningen signeras.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Modellanteckning:** Signaturtidpunkt. Format: YYYYMMDDhhmmss.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för signerande",
      "definition" : "HSA-id för person som signerat dokumentet",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn på signerande person",
      "definition" : "Namnen i klartext för signerande person.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "short" : "Signerande persons befattning",
      "definition" : "Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]",
      "comment" : "TKB-fält: `../../../legalAuthenticatorRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient",
      "short" : "Godkänd för visning till patient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId",
      "short" : "Vårdkontakts-id",
      "definition" : "Vårdkontakts-id.\n\nId för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts.",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Id för den vårdkontakt vid vilken bedömningen genomfördes.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody",
      "short" : "Bedömningens innehåll",
      "definition" : "FunctionalStatusAssessmentBodyType — bedömningens informationsinnehåll.\nKardinalitet: Obligatorisk.",
      "comment" : "TKB-fält: `../functionalStatusAssessmentBody` (`FunctionalStatusAssessmentBodyType`, kardinalitet 1..1).\n\n**Modellanteckning:** FunctionalStatusAssessmentBodyType — bedömningens informationsinnehåll.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory",
      "short" : "Bedömningskategori",
      "definition" : "Bedömningskategori.\n\nBeskriver vilken kategori av bedömning som är gjord. Tillåtna värden är \"pad-pad\" (för PADL-bedömning) och \"fun-fun\" (för funktionsnedsättningsbedömningar).\n\nVärdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI.",
      "comment" : "TKB-fält: `../../assessmentCategory` (`AssessmentCategoryEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** Bedömningskategori. 'pad-pad' = PADL-bedömning, 'fun-fun' = funktionsnedsättningsbedömning.\nOBS: tjänsteproducent måste använda samma värde som categorization i engagemangsindex.\nSe AssessmentCategoryCS/AssessmentCategoryVS.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-description/ValueSet/assessmentcategory-vs"
      }
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.comment",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.comment",
      "short" : "Kommentar",
      "definition" : "Kommentar.\n\nText som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad.",
      "comment" : "TKB-fält: `../../comment` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Kommentar till total bedömning.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl",
      "short" : "PADL-bedömning",
      "definition" : "Beskriver gjorda PADL-bedömningar.\n\nFår enbart anges samtidigt som assessmentCategory = pad-pad.",
      "comment" : "TKB-fält: `../../padl` (`PADLType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment",
      "short" : "Typ av PADL-bedömning",
      "definition" : "Typ av PADL-bedömning. Kan anges med lämpligt kodsystem.\n\n(Regel:2)",
      "comment" : "TKB-fält: `../../../typeOfAssessment` (`CVType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment",
      "short" : "Textuell PADL-bedömning",
      "definition" : "Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment.",
      "comment" : "TKB-fält: `../../../assessment` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability",
      "short" : "Funktionsnedsättningsbedömning",
      "definition" : "Beskriver gjord funktionsnedsättningsbedömning.\n\nFår endast anges om assessmentCategory = fun-fun.",
      "comment" : "TKB-fält: `../../disability` (`DisabilityType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment",
      "short" : "ICF-kod för funktionsnedsättning",
      "definition" : "Angivelse av kod för den funktion som bedömts nedsatt.\n\nOm funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare.\n\nOm ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText\n\nKontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor.",
      "comment" : "TKB-fält: `../../../disabilityAssessment` (`CVType`, kardinalitet 1..1).\n\n**Modellanteckning:** Angivelse av kod för den funktion som bedömts nedsatt.\nKodsystem: ICF, OID 1.2.752.116.1.1.3.\nExempelkod: b310 = röst- och talfunktioner.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment",
      "path" : "getfunctionalstatus.functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment",
      "short" : "Kommentar till funktionsnedsättning",
      "definition" : "Kommentar.\n\nText som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”.",
      "comment" : "TKB-fält: `../../../comment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.result",
      "path" : "getfunctionalstatus.result",
      "short" : "Resultat",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getfunctionalstatus.result.resultCode",
      "path" : "getfunctionalstatus.result.resultCode",
      "short" : "Resultatkod",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getfunctionalstatus.result.errorCode",
      "path" : "getfunctionalstatus.result.errorCode",
      "short" : "Felkod",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getfunctionalstatus.result.logId",
      "path" : "getfunctionalstatus.result.logId",
      "short" : "Log-id",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getfunctionalstatus.result.message",
      "path" : "getfunctionalstatus.result.message",
      "short" : "Meddelande",
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
