# GetLaboratoryOrderOutcome - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLaboratoryOrderOutcome**

## Logical Model: GetLaboratoryOrderOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome | *Version*:3.1 |
| Active as of 2026-10-08 | *Computable Name*:GetLaboratoryOrderOutcome |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1 (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3). Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getlaboratoryorderoutcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getlaboratoryorderoutcome.csv), [Excel](StructureDefinition-getlaboratoryorderoutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getlaboratoryorderoutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome",
  "version" : "3.1",
  "name" : "GetLaboratoryOrderOutcome",
  "title" : "GetLaboratoryOrderOutcome",
  "status" : "active",
  "date" : "2026-10-08T18:06:18+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getlaboratoryorderoutcome",
      "path" : "getlaboratoryorderoutcome",
      "short" : "GetLaboratoryOrderOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3).\nRepresenterar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3."
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome",
      "short" : "Returnerar en patients laboratoriesvar.",
      "definition" : "Returnerar en patients laboratoriesvar.\nRIV-TA-typ: LaboratoryOrderOutcomeType. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader",
      "short" : "Innehåller basinformation om dokumentet",
      "definition" : "Innehåller basinformation om dokumentet\nRIV-TA-typ: PatientSummaryHeaderType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId",
      "short" : "Unik identifierare för undersökningsresultatet",
      "definition" : "Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId",
      "short" : "HSAid för det system som dokumentet är skapat i.",
      "definition" : "HSAid för det system som dokumentet är skapat i.\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime",
      "short" : "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem",
      "definition" : "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId",
      "short" : "Id för patienten.",
      "definition" : "Id för patienten.\nRIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.\nDelelement enligt TKB:\n- id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.\n- type (string, 1..1): Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional",
      "short" : "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, ned",
      "definition" : "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare.\nRIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet.",
      "definition" : "Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet.\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Författarens HSA-id",
      "definition" : "Författarens HSA-id\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på författaren",
      "definition" : "Namn på författaren. Om tillgängligt ska detta anges.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Information om personens befattning",
      "definition" : "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.\nRIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.\n- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.\n- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.\n- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.\n- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.\n- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Den organisation som författaren är uppdragstagare på",
      "definition" : "Den organisation som författaren är uppdragstagare på\nRIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet.",
      "definition" : "HSA-id för organisationsenhet.\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namnet på den organisation som författaren är uppdragstagare på (TKB: orgUnitname)",
      "definition" : "Namnet på den organisation som författaren är uppdragstagare på\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till enhet",
      "definition" : "Epost till enhet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för den organisation som författaren är uppdragstagare på",
      "definition" : "Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Text som anger namnet påplats eller ort för organisationens fysiska placering",
      "definition" : "Text som anger namnet påplats eller ort för organisationens fysiska placering\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "HSA-id för Vårdenhet",
      "definition" : "HSA-id för Vårdenhet. Ska anges om tillgänglig. [Regel 1]\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 1]\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator",
      "short" : "Information om vem som signerat informationen i dokumentet",
      "definition" : "Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar. / Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn.\nRIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.signatureTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.signatureTime",
      "short" : "Tidpunkt för signering av svaret.",
      "definition" : "Tidpunkt för signering av svaret.\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId",
      "short" : "HSA-id för person som signerat dokumentet",
      "definition" : "HSA-id för person som signerat dokumentet\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namnen i klartext för signerande person.",
      "definition" : "Namnen i klartext för signerande person.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient",
      "short" : "Anger om information får delas till patient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.\nRIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId",
      "short" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet",
      "definition" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody",
      "short" : "laboratoryOrderOutcomeBody",
      "definition" : "RIV-TA-typ: LaboratoryOrderOutcomeBodyType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType",
      "short" : "Text som anger vilken typ av svar som avses",
      "definition" : "Text som anger vilken typ av svar som avses. / DEF = Definitivsvar / TILL = Tilläggssvar / Den senaste statusen är den som ska skickas med.\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime",
      "short" : "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då",
      "definition" : "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline",
      "short" : "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från",
      "definition" : "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. / Tillåtet värde är \"Klinisk kemi\"\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport",
      "short" : "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet",
      "definition" : "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment",
      "short" : "Text som innehåller en kommentar avseende hela det lämnade svaret",
      "definition" : "Text som innehåller en kommentar avseende hela det lämnade svaret\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional",
      "short" : "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresult",
      "definition" : "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret).\nRIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.authorTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt då svaret skickas från laboratoriesystemet.",
      "definition" : "Tidpunkt då svaret skickas från laboratoriesystemet.\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "hälso-och sjukvårdspersonens HSA-id",
      "definition" : "hälso-och sjukvårdspersonens HSA-id\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Namn på ansvarig hälso-och sjukvårdsperson",
      "definition" : "Namn på ansvarig hälso-och sjukvårdsperson. Om tillgängligt ska detta anges.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Information om personens befattning",
      "definition" : "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.\nRIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.\n- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.\n- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.\n- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.\n- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. Om displayName anges ska även code samt codeSystem anges.\n- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på",
      "definition" : "Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på\nRIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "HSA-id för organisationsenhet.",
      "definition" : "HSA-id för organisationsenhet.\nRIV-TA-typ: HDAIdType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "Namnet på den organisation som författaren är uppdragstagare på",
      "definition" : "Namnet på den organisation som författaren är uppdragstagare på\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon till organisationsenhet",
      "definition" : "Telefon till organisationsenhet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "Epost till enhet",
      "definition" : "Epost till enhet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Postadress för den organisation som författaren är uppdragstagare på",
      "definition" : "Postadress för den organisation som författaren är uppdragstagare på\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "Ska ej anges.",
      "definition" : "Ska ej anges.\nRIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.",
      "min" : 0,
      "max" : "0",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis",
      "short" : "Information om analystjänster som ligger till grund för ett undersökningsresultat",
      "definition" : "Information om analystjänster som ligger till grund för ett undersökningsresultat\nRIV-TA-typ: AnalysisType. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId",
      "short" : "Unik identifierare för analystjänsten",
      "definition" : "Unik identifierare för analystjänsten\nRIV-TA-typ: IIType. Kardinalitet i TKB: 1..1.\nDelelement enligt TKB:\n- root (string, 1..1): En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren.\n- extension (string, 0..1): En textsträng som tillsammans med root bildar en unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime",
      "short" : "Tidsangivelse för åtgärdens utförande",
      "definition" : "Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen. / Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt.\nRIV-TA-typ: TimePeriodType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- start (TimeStampType, 0..1): Periodens starttid. Minst ett av start och end ska anges.\n- end (TimeStampType, 0..1): Periodens sluttid. Minst ett av start och end ska anges.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode",
      "short" : "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU",
      "definition" : "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges.\nRIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.\nDelelement enligt TKB:\n- code (string, 1..1): Kod från kodsystemet NPU.\n- codeSystem (string, 1..1): OID för NPU-kodsystemet (1.2.752.108.1).\n- displayName (string, 1..1): Kodens klartext.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText",
      "short" : "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU",
      "definition" : "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus",
      "short" : "Text som anger åtgärdens status",
      "definition" : "Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus: / Planerad, Pågående, Avklarad\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment",
      "short" : "Text som innehåller en kommentar som avser den utförda analysen.",
      "definition" : "Text som innehåller en kommentar som avser den utförda analysen.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen",
      "short" : "Text som beskriver vilket typ av material som användes vid analysen",
      "definition" : "Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma / Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot\".\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method",
      "short" : "Text som beskriver den metod som använts i analystjänsten.",
      "definition" : "Text som beskriver den metod som använts i analystjänsten.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis",
      "short" : "Anger samband med annan utförd analystjänst.",
      "definition" : "Anger samband med annan utförd analystjänst.\nRIV-TA-typ: RelationToAnalysisType. Kardinalitet i TKB: 0..*.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId",
      "short" : "Unik identifierare för analystjänsten.",
      "definition" : "Unik identifierare för analystjänsten.\nRIV-TA-typ: IIType. Kardinalitet i TKB: 1..1.\nDelelement enligt TKB:\n- root (string, 1..1): En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren.\n- extension (string, 0..1): En textsträng som tillsammans med root bildar en unik identifierare.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome",
      "short" : "Information om ett resultatet/utfallet av en analystjänst.",
      "definition" : "Information om ett resultatet/utfallet av en analystjänst.\nRIV-TA-typ: AnalysisOutcomeType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue",
      "short" : "Det specifika värdet för resultatet/utfallet.",
      "definition" : "Det specifika värdet för resultatet/utfallet.\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit",
      "short" : "Text som anger i förekommande fall enheten för det angivna värdet",
      "definition" : "Text som anger i förekommande fall enheten för det angivna värdet\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime",
      "short" : "Tidpunkt då iakttagelsen av resultatet gjordes",
      "definition" : "Tidpunkt då iakttagelsen av resultatet gjordes\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag",
      "short" : "Kod som anger om resultatet ligger utanför referensintervall",
      "definition" : "Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall / Falskt = Nej, resultatet ligger inte utanför referens-intervall.\nRIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription",
      "short" : "Text som innehåller en kommentar avseende resultatet/utfallet.",
      "definition" : "Text som innehåller en kommentar avseende resultatet/utfallet.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval",
      "short" : "Text som innehåller det referensintervall som använts i analysen.",
      "definition" : "Text som innehåller det referensintervall som använts i analysen.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation",
      "short" : "Text som beskriver den population som referensintervallet gäller för.",
      "definition" : "Text som beskriver den population som referensintervallet gäller för.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested",
      "short" : "Information om vidimering av enskild analys med tillhörande resultat",
      "definition" : "Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar.\nRIV-TA-typ: AttestedType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime",
      "short" : "Tidpunkten för vidimering",
      "definition" : "Tidpunkten för vidimering\nRIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId",
      "short" : "HSA-id för person som vidimerat",
      "definition" : "HSA-id för person som vidimerat\nRIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName",
      "short" : "Namn på person som vidimerat",
      "definition" : "Namn på person som vidimerat\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order",
      "short" : "Information om en vårdbegäran som ligger till grund för svaret",
      "definition" : "Information om en vårdbegäran som ligger till grund för svaret\nRIV-TA-typ: OrderType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId",
      "short" : "Unik identifierare för laboratorieremiss",
      "definition" : "Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng.\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason",
      "short" : "Text som anger aktuell frågeställning.",
      "definition" : "Text som anger aktuell frågeställning.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result",
      "path" : "getlaboratoryorderoutcome.result",
      "short" : "Innehåller information om begäran gick bra eller ej.",
      "definition" : "Innehåller information om begäran gick bra eller ej.\nRIV-TA-typ: ResultType. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.resultCode",
      "path" : "getlaboratoryorderoutcome.result.resultCode",
      "short" : "Kan endast vara OK, INFO eller ERROR.",
      "definition" : "Kan endast vara OK, INFO eller ERROR.\nRIV-TA-typ: ResultCodeEnum. Kardinalitet i TKB: 1..1.",
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
      "id" : "getlaboratoryorderoutcome.result.errorCode",
      "path" : "getlaboratoryorderoutcome.result.errorCode",
      "short" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.\nRIV-TA-typ: ErrorCodeEnum. Kardinalitet i TKB: 0..1.",
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
      "id" : "getlaboratoryorderoutcome.result.subCode",
      "path" : "getlaboratoryorderoutcome.result.subCode",
      "short" : "Inga subkoder är specificerade. (TKB: subcode)",
      "definition" : "Inga subkoder är specificerade.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.logId",
      "path" : "getlaboratoryorderoutcome.result.logId",
      "short" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.\nRIV-TA-typ: string. Kardinalitet i TKB: 1..1.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.message",
      "path" : "getlaboratoryorderoutcome.result.message",
      "short" : "En beskrivande text som kan visas för användaren.",
      "definition" : "En beskrivande text som kan visas för användaren.\nRIV-TA-typ: string. Kardinalitet i TKB: 0..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
