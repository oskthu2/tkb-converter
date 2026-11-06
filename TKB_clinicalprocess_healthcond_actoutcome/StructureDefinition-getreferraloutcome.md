# GetReferralOutcome - clinicalprocess: healthcond: actoutcome v4.2.2

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetReferralOutcome**

## Logical Model: GetReferralOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome | *Version*:3.2 |
| Active as of 2026-11-06 | *Computable Name*:GetReferralOutcome |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för tjänstekontraktet GetReferralOutcome (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3). Representerar responsens informationsstruktur — svar på konsultationsremiss och begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt med HL7v3 CDA v.2. 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.clinicalprocess-healthcond-actoutcome|current/StructureDefinition/StructureDefinition-getreferraloutcome.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getreferraloutcome.csv), [Excel](StructureDefinition-getreferraloutcome.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getreferraloutcome",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome",
  "version" : "3.2",
  "name" : "GetReferralOutcome",
  "title" : "GetReferralOutcome",
  "status" : "active",
  "date" : "2026-11-06T21:02:02+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för tjänstekontraktet GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).\nRepresenterar responsens informationsstruktur — svar på konsultationsremiss\noch begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt\nmed HL7v3 CDA v.2.",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getreferraloutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getreferraloutcome",
      "path" : "getreferraloutcome",
      "short" : "GetReferralOutcome",
      "definition" : "Logisk modell för tjänstekontraktet GetReferralOutcome\n(RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcome:3).\nRepresenterar responsens informationsstruktur — svar på konsultationsremiss\noch begäran om övertagande av vårdansvar. Meddelandeformatet är kompatibelt\nmed HL7v3 CDA v.2."
    },
    {
      "id" : "getreferraloutcome.referralOutcome",
      "path" : "getreferraloutcome.referralOutcome",
      "short" : "Remissvar (ett per remiss)",
      "definition" : "Returnerar en patients konsultationsremissvar.",
      "comment" : "TKB-fält: `referralOutcome` (`ReferralOutcomeType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader",
      "short" : "PatientSummaryHeader",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../referralOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentId",
      "short" : "Dokumentets unika id",
      "definition" : "Dokumentets identitet som är unik inom källsystemet\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.sourceSystemHSAId",
      "short" : "Källsystemets HSA-id",
      "definition" : "HSAid för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTitle",
      "short" : "Dokumentets titel",
      "definition" : "Titel som beskriver den information som sänds i dokumentet.",
      "comment" : "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.documentTime",
      "short" : "Dokumentets tidpunkt",
      "definition" : "Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem.",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId",
      "short" : "Patientens id",
      "definition" : "Identifierare för patient.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId.value",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId.value",
      "short" : "Patientens personnummer/samordningsnummer",
      "definition" : "Patientens personnummer/samordningsnummer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId.system",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.patientId.system",
      "short" : "OID för typ av identifierare",
      "definition" : "OID för typ av identifierare",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "uri"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional",
      "short" : "Ansvarig hälso- och sjukvårdspersonal",
      "definition" : "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime",
      "short" : "Tidpunkt för dokumentation",
      "definition" : "Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem.",
      "comment" : "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId",
      "short" : "Personalens HSA-id",
      "definition" : "HSA-id hälso-och sjukvårdspersonal. Ska anges om tillgänglig.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName",
      "short" : "Personalens namn",
      "definition" : "Namn på författaren. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit",
      "short" : "Organisationsenhet",
      "definition" : "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId",
      "short" : "OrgUnit HSA-id",
      "definition" : "HSA-id för organisationsenhet. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName",
      "short" : "OrgUnit namn",
      "definition" : "Namn på organisationsenhet. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../../orgUnitname` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom",
      "short" : "Telefon",
      "definition" : "Telefon till organisationsenhet",
      "comment" : "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail",
      "short" : "E-post",
      "definition" : "Epost till organisationsenhet.",
      "comment" : "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress",
      "short" : "Adress",
      "definition" : "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:\n\n”Storgatan 12\n\n468 91 Lilleby”",
      "comment" : "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation",
      "short" : "Plats",
      "definition" : "Text som anger namnet på plats eller ort för organisationens fysiska placering",
      "comment" : "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId",
      "short" : "Vårdenhetens HSA-id",
      "definition" : "HSA-id för Vårdenhet som hälso-och sjukvårdspersonen är uppdragstagare för. Ska anges om tillgänglig.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).\n\n**Regel 1:** se Övriga regler för kontraktet.\n\n**Modellanteckning:** Regel 1: Krävs för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId",
      "short" : "Vårdgivarens HSA-id",
      "definition" : "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig.",
      "comment" : "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1).\n\n**Regel 1:** se Övriga regler för kontraktet.\n\n**Modellanteckning:** Regel 1: Krävs för spärrhantering och åtkomstkontroll.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator",
      "short" : "Juridiskt ansvarig",
      "definition" : "Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime",
      "short" : "Signeringstidpunkt",
      "definition" : "Tidpunkt för signering",
      "comment" : "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAid",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAid",
      "short" : "HSA-id",
      "definition" : "HSA-id för person som signerat dokumentet.",
      "comment" : "TKB-fält: `../../../legalAuthenticatorHSAid` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName",
      "short" : "Namn",
      "definition" : "Namnen i klartext för signerande person",
      "comment" : "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.approvedForPatient",
      "short" : "Godkänd för patientvisning",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeHeader.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Identitetet för hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody",
      "short" : "Remissvarsinformation",
      "definition" : "Remissvarsinformation",
      "comment" : "TKB-fält: `../referralOutcomeBody` (`ReferralOutcomeBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTypeCode",
      "short" : "Typ av remissvar",
      "definition" : "Anger typ av svar.\n\nGiltiga koder:\n\nSR, svar på remissfråga\n\nSS, slutsvar på remissfråga",
      "comment" : "TKB-fält: `../../referralOutcomeTypeCode` (`referralOutcomeTypeCodeEnum`, kardinalitet 1..1).\n\n**Modellanteckning:** Kodas enligt referralOutcomeTypeCodeEnum. Se QUESTIONS.md ASSUME-002 angående canonicalURL.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeTitle",
      "short" : "Remissvarets titel",
      "definition" : "Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text.\n\nExempel:\n\nPatologi\n\nKlinisk fysik\n\nLogopedi",
      "comment" : "TKB-fält: `../../referralOutcomeTitle` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referralOutcomeText",
      "short" : "Remissvarets text",
      "definition" : "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet.",
      "comment" : "TKB-fält: `../../referralOutcomeText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation",
      "short" : "Klinisk information",
      "definition" : "Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret.",
      "comment" : "TKB-fält: `../../clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode",
      "short" : "Klinisk informationskod",
      "definition" : "Kod för åtgärd.\n\nKoden anges i code.\n\nKodverkets OID i codeSystem.",
      "comment" : "TKB-fält: `../../../clinicalInformationCode` (`ClinicalInformationCodeType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText",
      "short" : "Klinisk informationstext",
      "definition" : "Beskrivning av klinisk information",
      "comment" : "TKB-fält: `../../../clinicalInformationText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act",
      "short" : "Åtgärd",
      "definition" : "Utförd åtgärd",
      "comment" : "TKB-fält: `../../act` (`ActType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actId",
      "short" : "Åtgärdens id",
      "definition" : "Åtgärdens identitet som är unik inom det lokala avsändande systemet",
      "comment" : "TKB-fält: `../../../actId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actCode",
      "short" : "Åtgärdskod",
      "definition" : "Kod för åtgärd.\n\nKoden anges i code.\n\nKodverkets OID anges i codeSystem.",
      "comment" : "TKB-fält: `../../../actCode` (`ActCodeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actText",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actText",
      "short" : "Åtgärdstext",
      "definition" : "Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod.",
      "comment" : "TKB-fält: `../../../actText` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actTime",
      "short" : "Tidpunkt för åtgärd",
      "definition" : "Tidpunkt då åtgärd genomfördes",
      "comment" : "TKB-fält: `../../../actTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult",
      "short" : "Resultat (multimedia)",
      "definition" : "Resultat av åtgärd. Data i form av bifogade bilder eller liknande.",
      "comment" : "TKB-fält: `../../../actResult` (`MultimediaType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.mediaType",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.mediaType",
      "short" : "Medietyp",
      "definition" : "Typ av multimedia",
      "comment" : "TKB-fält: `../../../../mediaType` (`MediaTypeEnum`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.value",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.value",
      "short" : "Binärt innehåll",
      "definition" : "Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges.",
      "comment" : "TKB-fält: `../../../../value` (`base64Binary`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "base64Binary"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.reference",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.act.actResult.reference",
      "short" : "Referens-URL",
      "definition" : "Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges.",
      "comment" : "TKB-fält: `../../../../reference` (`anyURI`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "url"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested",
      "short" : "Attestering",
      "definition" : "Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar.",
      "comment" : "TKB-fält: `../../attested` (`AttestedType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attestedTime",
      "short" : "Attest-tidpunkt",
      "definition" : "Tidpunkten för vidimering",
      "comment" : "TKB-fält: `../../../attestedTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterHSAId",
      "short" : "Attesterarens HSA-id",
      "definition" : "HSA-id för person som vidimerat",
      "comment" : "TKB-fält: `../../../attesterHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.attested.attesterName",
      "short" : "Attesterarens namn",
      "definition" : "Namn på person som vidimerat",
      "comment" : "TKB-fält: `../../../attesterName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral",
      "short" : "Remissens uppgifter",
      "definition" : "Information om den remissen som ligger till grund för svaret",
      "comment" : "TKB-fält: `../../referral` (`ReferralType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralId",
      "short" : "Remissens id",
      "definition" : "Remissens identitet som är unik inom det lokala avsändade systemet",
      "comment" : "TKB-fält: `../../../referralId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralReason",
      "short" : "Remissorsak",
      "definition" : "Text som anger aktuell frågeställning.",
      "comment" : "TKB-fält: `../../../referralReason` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralTime",
      "short" : "Remisstidpunkt",
      "definition" : "Tid då remissen framställdes.",
      "comment" : "TKB-fält: `../../../referralTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor",
      "short" : "Remittent",
      "definition" : "Information om den hälso- och sjukvårdsperson som framställt remissen som ligger till grund för svaret, nedan kallas författare.",
      "comment" : "TKB-fält: `../../../referralAuthor` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime",
      "short" : "Tidpunkt",
      "definition" : "Tidpunkt då remissen registrerades i systemet.",
      "comment" : "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "instant"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId",
      "short" : "HSA-id",
      "definition" : "HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.",
      "comment" : "TKB-fält: `../../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName",
      "short" : "Namn",
      "definition" : "Namn på författaren. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode",
      "short" : "Yrkesroll",
      "definition" : "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText.",
      "comment" : "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit",
      "short" : "Org-enhet",
      "definition" : "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.",
      "comment" : "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "path" : "getreferraloutcome.referralOutcome.referralOutcomeBody.referral.careContactId",
      "short" : "Vårdkontaktid",
      "definition" : "Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation.",
      "comment" : "TKB-fält: `../../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
