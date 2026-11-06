# GetMaternityMedicalHistory - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetMaternityMedicalHistory**

## Logical Model: GetMaternityMedicalHistory 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory | *Version*:2.0 |
| Active as of 2026-11-06 | *Computable Name*:GetMaternityMedicalHistory |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getmaternitymedicalhistory.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getmaternitymedicalhistory.csv), [Excel](StructureDefinition-getmaternitymedicalhistory.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getmaternitymedicalhistory",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory",
  "version" : "2.0",
  "name" : "GetMaternityMedicalHistory",
  "title" : "GetMaternityMedicalHistory",
  "status" : "active",
  "date" : "2026-11-06T21:03:04+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getmaternitymedicalhistory",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getmaternitymedicalhistory",
      "path" : "getmaternitymedicalhistory",
      "short" : "GetMaternityMedicalHistory",
      "definition" : "Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2."
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord",
      "short" : "En moders mödravårdsjournal.",
      "definition" : "En moders mödravårdsjournal.",
      "comment" : "TKB-fält: `maternityMedicalRecord` (`MaternityMedicalRecordType`, kardinalitet 0..*).\n\n**Modellanteckning:** En moders mödravårdsjournal.\nRIV-TA-typ: MaternityMedicalRecordType. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader",
      "short" : "Innehåller basinformation om dokumentet.",
      "definition" : "Innehåller basinformation om dokumentet.",
      "comment" : "TKB-fält: `../maternityMedicalRecordHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentId",
      "short" : "Dokumentets identitet som är unik inom källsystemet",
      "definition" : "Dokumentets identitet som är unik inom källsystemet.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.sourceSystemHSAId",
      "short" : "HSAid för det system som dokumentet är skapat i.",
      "definition" : "HSAid för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentTitle",
      "short" : "Titel som beskriver den information som sänds i dokumentet.",
      "definition" : "Titel som beskriver den information som sänds i dokumentet.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentTime",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.documentTime",
      "short" : "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten.",
      "definition" : "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.patientId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.patientId",
      "short" : "Id för modern",
      "definition" : "Id för modern.\n\nid sätts till patientens identifierare, anges med 12 siffror utan avskiljare.\n\nType sätts till OID för typ av identifierare.\n\nFör personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1).\n\nFör samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3).\n\nFör reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional",
      "short" : "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare",
      "definition" : "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen.\nRIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten",
      "definition" : "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Författarens HSA-id.",
      "definition" : "Författarens HSA-id.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** Författarens HSA-id.\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Författarens namn.",
      "definition" : "Författarens namn.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Författarens namn.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Information om författarens befattning",
      "definition" : "Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).\n\n**Modellanteckning:** Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.\nRIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.\n- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.\n- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.\n- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.\n- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.\n- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Den organisation som författaren är uppdragstagare på.",
      "definition" : "Den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för den organisation som författaren är uppdragstagare på.",
      "definition" : "HSA-id för den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namnet på den organisation som författaren är uppdragstagare på.",
      "definition" : "Namnet på den organisation som författaren är uppdragstagare på.",
      "comment" : "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet.",
      "definition" : "Telefon till organisationsenhet.",
      "comment" : "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till enhet.",
      "definition" : "Epost till enhet.",
      "comment" : "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för den organisation som författaren är uppdragstagare på",
      "definition" : "Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "definition" : "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.",
      "comment" : "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för Vårdenhet",
      "definition" : "HSA-id för Vårdenhet. [Regel 1]",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 1..1).\n\n**Modellanteckning:** HSA-id för Vårdenhet. [Regel 1]\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. [Regel 1]",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator",
      "short" : "Information om vem som signerat informationen i dokumentet.",
      "definition" : "Information om vem som signerat informationen i dokumentet.\nRIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering.",
      "definition" : "Tidpunkt för signering.",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).\n\n**Modellanteckning:** Tidpunkt för signering.\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för person som signerat dokumentet.",
      "definition" : "HSA-id för person som signerat dokumentet.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIDType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namnen i klartext för signerande person.",
      "definition" : "Namnen i klartext för signerande person.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorRoleCode` (kardinalitet 0..0).\n\n**Modellanteckning:** Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.approvedForPatient",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.approvedForPatient",
      "short" : "Anger om information får delas till patient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.\nRIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.careContactId",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.careContactId",
      "short" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet",
      "definition" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.nullified",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.nullified",
      "short" : "Ska ej anges",
      "definition" : "Ska ej anges\nRIV-TA-typ: string. Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.nullifiedReason",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordHeader.nullifiedReason",
      "short" : "Ska ej anges",
      "definition" : "Ska ej anges\nRIV-TA-typ: string. Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody",
      "short" : "Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord.",
      "definition" : "Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord.",
      "comment" : "TKB-fält: `../maternityMedicalRecordBody` (`MaternityMedicalRecordBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord",
      "short" : "Information som registreras vid inskrivningsbesöket.",
      "definition" : "Information som registreras vid inskrivningsbesöket.",
      "comment" : "TKB-fält: `../../registrationRecord` (`RegistrationRecordType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.lastMenstrualPeriod",
      "short" : "Datum för senaste menstruation",
      "definition" : "Datum för senaste menstruation",
      "comment" : "TKB-fält: `../../../lastMenstrualPeriod` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.indicationPregnancy",
      "short" : "Datum för graviditetsindikation",
      "definition" : "Datum för graviditetsindikation",
      "comment" : "TKB-fält: `../../../indicationPregnancy` (`DateType`, kardinalitet 0..1).\n\n**Modellanteckning:** Datum för graviditetsindikation\nRIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.contraceptiveDiscontinued",
      "short" : "Datum för när moder upphört med preventivtablett",
      "definition" : "Datum för när moder upphört med preventivtablett",
      "comment" : "TKB-fält: `../../../contraceptiveDiscontinued` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromLastMenstrualPeriod",
      "short" : "Beräknad förlossning enligt sista menstruation",
      "definition" : "Beräknad förlossning enligt sista menstruation",
      "comment" : "TKB-fält: `../../../expectedDayOfDeliveryFromLastMenstrualPeriod` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromUltrasoundScan",
      "short" : "Beräknad förlossning enligt ultraljud",
      "definition" : "Beräknad förlossning enligt ultraljud",
      "comment" : "TKB-fält: `../../../expectedDayOfDeliveryFromUltrasoundScan` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.expectedDayOfDeliveryFromEmbryonicTransfer",
      "short" : "Beräknad förlossning enligt embryonik transfer",
      "definition" : "Beräknad förlossning enligt embryonik transfer",
      "comment" : "TKB-fält: `../../../expectedDayOfDeliveryFromEmbryonicTransfer` (`DateType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.length",
      "short" : "Längd vid inskrivning",
      "definition" : "Längd vid inskrivning",
      "comment" : "TKB-fält: `../../../length` (`PQType`, kardinalitet 0..1).\n\n**Modellanteckning:** Längd vid inskrivning\nRIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.weight",
      "short" : "Vikt vid inskrivning [massa]",
      "definition" : "Vikt vid inskrivning [massa]",
      "comment" : "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.bodyMassIndex",
      "short" : "BMI vid inskrivning [massa/yta]",
      "definition" : "BMI vid inskrivning [massa/yta]",
      "comment" : "TKB-fält: `../../../bodyMassIndex` (`PQType`, kardinalitet 0..1).\n\n**Modellanteckning:** BMI vid inskrivning [massa/yta]\nRIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.infertility",
      "short" : "Antal år med ofrivillig barnlöshet (decimaltal)",
      "definition" : "Antal år med ofrivillig barnlöshet (decimaltal)",
      "comment" : "TKB-fält: `../../../infertility` (`decimal`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity",
      "short" : "Tidigare graviditeter och förlossningar",
      "definition" : "Tidigare graviditeter och förlossningar",
      "comment" : "TKB-fält: `../../../previousGravidityAndParity` (`PreviousGravidityAndParityType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.year",
      "short" : "År för tidigare graviditet eller förlossning",
      "definition" : "År för tidigare graviditet eller förlossning",
      "comment" : "TKB-fält: `../../../../year` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.month",
      "short" : "Månad för tidigare graviditet eller förlossning",
      "definition" : "Månad för tidigare graviditet eller förlossning",
      "comment" : "TKB-fält: `../../../../month` (`int`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.delivery",
      "short" : "Graviditet förlossning enligt kodverk:",
      "definition" : "Graviditet förlossning enligt kodverk:",
      "comment" : "TKB-fält: `../../../../delivery` (`DeliveryCodeEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/deliverycode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.healthcareFacility",
      "short" : "Sjukhus",
      "definition" : "Sjukhus",
      "comment" : "TKB-fält: `../../../../healthcareFacility` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Sjukhus\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.progress",
      "short" : "Förlopp",
      "definition" : "Förlopp",
      "comment" : "TKB-fält: `../../../../progress` (`string`, kardinalitet 0..1).\n\n**Modellanteckning:** Förlopp\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.sex",
      "short" : "Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: / 0 = okänt, / 1 = man, / 2 = kvin",
      "definition" : "Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1:\n\n0 = okänt,\n\n1 = man,\n\n2 = kvinna,\n\n9 = ej tillämpligt",
      "comment" : "TKB-fält: `../../../../sex` (`SexCodeEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/sexcode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.weightOfChild",
      "short" : "Barnets vikt [massa]",
      "definition" : "Barnets vikt [massa]",
      "comment" : "TKB-fält: `../../../../weightOfChild` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.previousGravidityAndParity.gestation",
      "short" : "Graviditetsvecka.",
      "definition" : "Graviditetsvecka.",
      "comment" : "TKB-fält: `../../../../gestation` (`int`, kardinalitet 0..1).\n\n**Modellanteckning:** Graviditetsvecka.\nRIV-TA-typ: int. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesThrombosis",
      "short" : "Trombos (true/false)",
      "definition" : "Trombos (true/false)",
      "comment" : "TKB-fält: `../../../diseasesThrombosis` (`bool`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesEndocineDiseases",
      "short" : "Endokrina sjukdomar (true/false)",
      "definition" : "Endokrina sjukdomar (true/false)",
      "comment" : "TKB-fält: `../../../diseasesEndocineDiseases` (`bool`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesRecurrentUrinaryTractInfections",
      "short" : "Upprepade urinvägsinfektioner (true/false)",
      "definition" : "Upprepade urinvägsinfektioner (true/false)",
      "comment" : "TKB-fält: `../../../diseasesRecurrentUrinaryTractInfections` (`bool`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.diseasesDiabetesMellitus",
      "short" : "Diabetes mellitus (true/false)",
      "definition" : "Diabetes mellitus (true/false)",
      "comment" : "TKB-fält: `../../../diseasesDiabetesMellitus` (`bool`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy",
      "short" : "Före inskrivning under graviditet: medicinering",
      "definition" : "Före inskrivning under graviditet: medicinering",
      "comment" : "TKB-fält: `../../../medicationDuringPregnacy` (`MedicationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.medicament",
      "short" : "Preparat",
      "definition" : "Preparat",
      "comment" : "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Preparat\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.medicationDuringPregnacy.dosage",
      "short" : "Dosering i beskrivande text",
      "definition" : "Dosering i beskrivande text",
      "comment" : "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.registrationRecord.assessmentAtFirstContactStandardCare",
      "short" : "Bedömning vid 1:a besök: basprogram (true/false)",
      "definition" : "Bedömning vid 1:a besök: basprogram (true/false)",
      "comment" : "TKB-fält: `../../../assessmentAtFirstContactStandardCare` (`bool`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord",
      "short" : "Graviditetskontroll",
      "definition" : "Graviditetskontroll",
      "comment" : "TKB-fält: `../../pregnancyCheckupRecord` (`PregnancyCheckupRecordType`, kardinalitet 0..1).\n\n**Modellanteckning:** Graviditetskontroll\nRIV-TA-typ: PregnancyCheckupRecordType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.completeWeeksOfGestation",
      "short" : "Fullgångna graviditetsveckor",
      "definition" : "Fullgångna graviditetsveckor",
      "comment" : "TKB-fält: `../../../completeWeeksOfGestation` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.weight",
      "short" : "Moderns vikt [massa]",
      "definition" : "Moderns vikt [massa]",
      "comment" : "TKB-fält: `../../../weight` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.symphysisFundalHeight",
      "short" : "Symfys-fundus mått [längd]",
      "definition" : "Symfys-fundus mått [längd]",
      "comment" : "TKB-fält: `../../../symphysisFundalHeight` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.haemoglobin",
      "short" : "Hb (Hemoglobin) [massa / volym]",
      "definition" : "Hb (Hemoglobin) [massa\n\nvolym]",
      "comment" : "TKB-fält: `../../../haemoglobin` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureSystolic",
      "short" : "Systoliskt blodtryck [tryck]",
      "definition" : "Systoliskt blodtryck [tryck]",
      "comment" : "TKB-fält: `../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.bloodPressureDiastolic",
      "short" : "Diastoliskt blodtryck [tryck]",
      "definition" : "Diastoliskt blodtryck [tryck]",
      "comment" : "TKB-fält: `../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.proteinuria",
      "short" : "Proteinuri - Protein i urinet [massa / volym] / Mängden protein ska alltså anges i g/l eller motsvarande",
      "definition" : "Proteinuri - Protein i urinet [massa\n\nvolym]\n\nMängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…)",
      "comment" : "TKB-fält: `../../../proteinuria` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.glycosuria",
      "short" : "Glucosuri - Glucos i urinet [antal / volym] / Förväntad enhet är mmol/l",
      "definition" : "Glucosuri - Glucos i urinet [antal\n\nvolym]\n\nFörväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…)\n\nOBS! U på svenska men y på engelska (ICD10).",
      "comment" : "TKB-fält: `../../../glycosuria` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPosition",
      "short" : "Fosterläge enligt kodverk: / 0 = head (huvud ) / 1 = breech (säte) / 2 = oblique (snedläge) / 3 = transverse (",
      "definition" : "Fosterläge enligt kodverk:\n\n0 = head (huvud )\n\n1 = breech (säte)\n\n2 = oblique (snedläge)\n\n3 = transverse (tvärläge)",
      "comment" : "TKB-fält: `../../../fetalPosition` (`FetalPositionCodeEnum`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/fetalpositioncode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalPresentation",
      "short" : "Föregående fosterdel enligt kodverk: / 0= mobile (rörligt), / 1 = movable (ruckbart), / 2 = fixed (fix)",
      "definition" : "Föregående fosterdel enligt kodverk:\n\n0= mobile (rörligt),\n\n1 = movable (ruckbart),\n\n2 = fixed (fix)",
      "comment" : "TKB-fält: `../../../fetalPresentation` (`FetalPresentationCodeEnum`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/fetalpresentationcode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.fetalHeartRate",
      "short" : "Fosterljud, hjärtslag, ex",
      "definition" : "Fosterljud, hjärtslag, ex. bpm [frekvens]",
      "comment" : "TKB-fält: `../../../fetalHeartRate` (`PQType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.typeOfLeave",
      "short" : "Typ av ledighet enligt kodverk / 0 = Sjukskrivning, / 1 = Havandekapsledighet, / 2 = Föräldrarledighet",
      "definition" : "Typ av ledighet enligt kodverk\n\n0 = Sjukskrivning,\n\n1 = Havandekapsledighet,\n\n2 = Föräldrarledighet",
      "comment" : "TKB-fält: `../../../typeOfLeave` (`TypeOfLeaveCodeEnum`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/typeofleavecode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration",
      "short" : "Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”.",
      "definition" : "Läkemedel (även kostpreparat) som administrerats sedan registreringen\n\nföregående ”checkup”.",
      "comment" : "TKB-fält: `../../../medicationSinceRegistration` (`MedicationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.medicament",
      "short" : "Preparat",
      "definition" : "Preparat",
      "comment" : "TKB-fält: `../../../../medicament` (`string`, kardinalitet 1..1).\n\n**Modellanteckning:** Preparat\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.pregnancyCheckupRecord.medicationSinceRegistration.dosage",
      "short" : "Dosering i beskrivande text",
      "definition" : "Dosering i beskrivande text",
      "comment" : "TKB-fält: `../../../../dosage` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord",
      "short" : "Efterskötning",
      "definition" : "Efterskötning",
      "comment" : "TKB-fält: `../../postDeliveryRecord` (`PostDeliveryRecordType`, kardinalitet 0..1).\n\n**Modellanteckning:** Efterskötning\nRIV-TA-typ: PostDeliveryRecordType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord",
      "short" : "Efterskötningsjournal, moder",
      "definition" : "Efterskötningsjournal, moder",
      "comment" : "TKB-fält: `../../../motherPostDeliveryRecord` (`MotherPostDeliveryRecordType`, kardinalitet 1..1).\n\n**Modellanteckning:** Efterskötningsjournal, moder\nRIV-TA-typ: MotherPostDeliveryRecordType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.breastfeeding",
      "short" : "Ammar (true/false)",
      "definition" : "Ammar (true/false)",
      "comment" : "TKB-fält: `../../../../breastfeeding` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureSystolic",
      "short" : "Systoliskt blodtryck [tryck]",
      "definition" : "Systoliskt blodtryck [tryck]",
      "comment" : "TKB-fält: `../../../../bloodPressureSystolic` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bloodPressureDiastolic",
      "short" : "Diastoliskt blodtryck [tryck]",
      "definition" : "Diastoliskt blodtryck [tryck]",
      "comment" : "TKB-fält: `../../../../bloodPressureDiastolic` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.haemoglobin",
      "short" : "Haemoglobin, t.ex",
      "definition" : "Haemoglobin, t.ex. g/L [massa\n\nvolym]",
      "comment" : "TKB-fält: `../../../../haemoglobin` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.bodyTemperature",
      "short" : "Kroppstemperatur",
      "definition" : "Kroppstemperatur",
      "comment" : "TKB-fält: `../../../../bodyTemperature` (`decimal`, kardinalitet 0..1).\n\n**Modellanteckning:** Kroppstemperatur\nRIV-TA-typ: decimal. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.scarsOK",
      "short" : "Sår/bristningar/klipp utan anmärkning (true/false)",
      "definition" : "Sår/bristningar/klipp utan anmärkning (true/false)",
      "comment" : "TKB-fält: `../../../../scarsOK` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.sutureRemoved",
      "short" : "Suturer borttagna (true/false)",
      "definition" : "Suturer borttagna (true/false)",
      "comment" : "TKB-fält: `../../../../sutureRemoved` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.perineumComfortable",
      "short" : "Bäckenbotten utan anmärkning (true/false)",
      "definition" : "Bäckenbotten utan anmärkning (true/false)",
      "comment" : "TKB-fält: `../../../../perineumComfortable` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.vulvaVaginaPortioOK",
      "short" : "vulvaVaginaPortio utan anmärkning (true/false)",
      "definition" : "vulvaVaginaPortio utan anmärkning (true/false)",
      "comment" : "TKB-fält: `../../../../vulvaVaginaPortioOK` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusContracted",
      "short" : "Uterus utan anmärkning (true/false)",
      "definition" : "Uterus utan anmärkning (true/false)",
      "comment" : "TKB-fält: `../../../../uterusContracted` (`boolean`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.motherPostDeliveryRecord.uterusNote",
      "short" : "Kommentar till uterus med anmärkning",
      "definition" : "Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false",
      "comment" : "TKB-fält: `../../../../uterusNote` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord",
      "short" : "Efterskötningsjournal, för barn ur samma graviditet",
      "definition" : "Efterskötningsjournal, för barn ur samma graviditet",
      "comment" : "TKB-fält: `../../../childPostDeliveryRecord` (`ChildPostDeliveryRecordTypeType`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.ordinalNumber",
      "short" : "Ordningstal för barnet, med start på 1",
      "definition" : "Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra.",
      "comment" : "TKB-fält: `../../../../ordinalNumber` (`integer`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.weight",
      "short" : "Barnets vikt [massa]",
      "definition" : "Barnets vikt [massa]",
      "comment" : "TKB-fält: `../../../../weight` (`PQType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore1",
      "short" : "Apgar (0..10) efter 1 minut",
      "definition" : "Apgar (0..10) efter 1 minut",
      "comment" : "TKB-fält: `../../../../apgarScore1` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore5",
      "short" : "Apgar (0..10) efter 5 minuter",
      "definition" : "Apgar (0..10) efter 5 minuter",
      "comment" : "TKB-fält: `../../../../apgarScore5` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10",
      "path" : "getmaternitymedicalhistory.maternityMedicalRecord.maternityMedicalRecordBody.postDeliveryRecord.childPostDeliveryRecord.apgarScore10",
      "short" : "Apgar (0..10) efter 10 minuter",
      "definition" : "Apgar (0..10) efter 10 minuter",
      "comment" : "TKB-fält: `../../../../apgarScore10` (`int`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.result",
      "path" : "getmaternitymedicalhistory.result",
      "short" : "Innehåller information om begäran gick bra eller ej.",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.result.resultCode",
      "path" : "getmaternitymedicalhistory.result.resultCode",
      "short" : "Kan endast vara OK, INFO eller ERROR",
      "definition" : "Kan endast vara OK, INFO eller ERROR",
      "comment" : "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/resultcode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.result.errorCode",
      "path" : "getmaternitymedicalhistory.result.errorCode",
      "short" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/ValueSet/errorcode-vs"
      }
    },
    {
      "id" : "getmaternitymedicalhistory.result.subCode",
      "path" : "getmaternitymedicalhistory.result.subCode",
      "short" : "Inga subkoder är specificerade. (TKB: subcode)",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.result.logId",
      "path" : "getmaternitymedicalhistory.result.logId",
      "short" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getmaternitymedicalhistory.result.message",
      "path" : "getmaternitymedicalhistory.result.message",
      "short" : "En beskrivande text som kan visas för användaren.",
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
