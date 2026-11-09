# GetLaboratoryOrderOutcome - clinicalprocess: healthcond: actoutcome 3.1.10 v3.1.10

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetLaboratoryOrderOutcome**

## Logical Model: GetLaboratoryOrderOutcome 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome | *Version*:3.1 |
| Active as of 2026-11-09 | *Computable Name*:GetLaboratoryOrderOutcome |
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
  "date" : "2026-11-09T03:20:25+00:00",
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
      "short" : "LaboratoryOrderOutcomeType",
      "definition" : "Returnerar en patients laboratoriesvar.",
      "comment" : "TKB-fält: `laboratoryOrderOutcome` (`LaboratoryOrderOutcomeType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader",
      "short" : "PatientSummaryHeaderType",
      "definition" : "Innehåller basinformation om dokumentet",
      "comment" : "TKB-fält: `../laboratoryOrderOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentId",
      "short" : "documentId",
      "definition" : "Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet\n\nIdentifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.\n\nIdentifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.",
      "comment" : "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.sourceSystemHSAId",
      "short" : "sourceSystemHSAId",
      "definition" : "HSAid för det system som dokumentet är skapat i.",
      "comment" : "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTitle",
      "short" : "documentTitle",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../documentTitle` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.documentTime",
      "short" : "documentTime",
      "definition" : "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem",
      "comment" : "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).\n\nObs: modellen anger 0..1 där TKB:n anger 1..1.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.patientId",
      "short" : "patientId",
      "definition" : "Id för patienten.",
      "comment" : "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/PersonIdType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare.",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.legalAuthenticator",
      "short" : "legalAuthenticator",
      "definition" : "Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar.\n\nSignering = signering av remissvar. Vidimering anges i attributet attested i bodyn.",
      "comment" : "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/LegalAuthenticatorType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.approvedForPatient",
      "short" : "approvedForPatient",
      "definition" : "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.",
      "comment" : "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.careContactId",
      "short" : "careContactId",
      "definition" : "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.",
      "comment" : "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullified",
      "short" : "nullified",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullified` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeHeader.nullifiedReason",
      "short" : "nullifiedReason",
      "definition" : "Ska ej anges.",
      "comment" : "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody",
      "short" : "LaboratoryOrderOutcomeBodyType",
      "definition" : "laboratoryOrderOutcomeBody",
      "comment" : "TKB-fält: `../laboratoryOrderOutcomeBody` (`LaboratoryOrderOutcomeBodyType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultType",
      "short" : "resultType",
      "definition" : "Text som anger vilken typ av svar som avses.\n\nDEF = Definitivsvar\n\nTILL = Tilläggssvar\n\nDen senaste statusen är den som ska skickas med.",
      "comment" : "TKB-fält: `../../resultType` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.registrationTime",
      "short" : "registrationTime",
      "definition" : "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.",
      "comment" : "TKB-fält: `../../registrationTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.discipline",
      "short" : "discipline",
      "definition" : "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från.\n\nTillåtet värde är \"Klinisk kemi\"",
      "comment" : "TKB-fält: `../../discipline` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultReport",
      "short" : "resultReport",
      "definition" : "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet",
      "comment" : "TKB-fält: `../../resultReport` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.resultComment",
      "short" : "resultComment",
      "definition" : "Text som innehåller en kommentar avseende hela det lämnade svaret",
      "comment" : "TKB-fält: `../../resultComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.accountableHealthcareProfessional",
      "short" : "accountableHealthcareProfessional",
      "definition" : "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret).",
      "comment" : "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/HealthcareProfessionalType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis",
      "short" : "AnalysisType",
      "definition" : "Information om analystjänster som ligger till grund för ett undersökningsresultat",
      "comment" : "TKB-fält: `../../analysis` (`AnalysisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisId",
      "short" : "analysisId",
      "definition" : "Unik identifierare för analystjänsten",
      "comment" : "TKB-fält: `../../../analysisId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisTime",
      "short" : "analysisTime",
      "definition" : "Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen.\n\nOm start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt.",
      "comment" : "TKB-fält: `../../../analysisTime` (`TimePeriodType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimePeriodType"
      }],
      "constraint" : [{
        "key" : "getlaboratoryorderoutcome-analysistime-start-or-end",
        "severity" : "error",
        "human" : "Minst ett av start och end ska anges i analysisTime (TimePeriodType).",
        "expression" : "start.exists() or end.exists()",
        "source" : "https://fhir.inera.se/ig/clinicalprocess-healthcond-actoutcome/StructureDefinition/getlaboratoryorderoutcome"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisCode",
      "short" : "analysisCode",
      "definition" : "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges.",
      "comment" : "TKB-fält: `../../../analysisCode` (`CVType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/CVType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisText",
      "short" : "analysisText",
      "definition" : "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges.",
      "comment" : "TKB-fält: `../../../analysisText` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisStatus",
      "short" : "analysisStatus",
      "definition" : "Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus:\n\nPlanerad, Pågående, Avklarad",
      "comment" : "TKB-fält: `../../../analysisStatus` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisComment",
      "short" : "analysisComment",
      "definition" : "Text som innehåller en kommentar som avser den utförda analysen.",
      "comment" : "TKB-fält: `../../../analysisComment` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.specimen",
      "short" : "specimen",
      "definition" : "Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma\n\nBåde provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot\".",
      "comment" : "TKB-fält: `../../../specimen` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.method",
      "short" : "method",
      "definition" : "Text som beskriver den metod som använts i analystjänsten.",
      "comment" : "TKB-fält: `../../../method` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis",
      "short" : "RelationToAnalysisType",
      "definition" : "Anger samband med annan utförd analystjänst.",
      "comment" : "TKB-fält: `../../../relationToAnalysis` (`RelationToAnalysisType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.relationToAnalysis.analysisId",
      "short" : "analysisId",
      "definition" : "Unik identifierare för analystjänsten.",
      "comment" : "TKB-fält: `../../../../analysisId` (`IIType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/IIType"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome",
      "short" : "AnalysisOutcomeType",
      "definition" : "Information om ett resultatet/utfallet av en analystjänst.",
      "comment" : "TKB-fält: `../../../analysisOutcome` (`AnalysisOutcomeType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeValue",
      "short" : "outcomeValue",
      "definition" : "Det specifika värdet för resultatet/utfallet.",
      "comment" : "TKB-fält: `../../../../outcomeValue` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeUnit",
      "short" : "outcomeUnit",
      "definition" : "Text som anger i förekommande fall enheten för det angivna värdet",
      "comment" : "TKB-fält: `../../../../outcomeUnit` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.observationTime",
      "short" : "observationTime",
      "definition" : "Tidpunkt då iakttagelsen av resultatet gjordes",
      "comment" : "TKB-fält: `../../../../observationTime` (`TimeStampType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.pathologicalFlag",
      "short" : "pathologicalFlag",
      "definition" : "Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall\n\nFalskt = Nej, resultatet ligger inte utanför referens-intervall.",
      "comment" : "TKB-fält: `../../../../pathologicalFlag` (`boolean`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.outcomeDescription",
      "short" : "outcomeDescription",
      "definition" : "Text som innehåller en kommentar avseende resultatet/utfallet.",
      "comment" : "TKB-fält: `../../../../outcomeDescription` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referenceInterval",
      "short" : "referenceInterval",
      "definition" : "Text som innehåller det referensintervall som använts i analysen.",
      "comment" : "TKB-fält: `../../../../referenceInterval` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.analysisOutcome.referencePopulation",
      "short" : "referencePopulation",
      "definition" : "Text som beskriver den population som referensintervallet gäller för.",
      "comment" : "TKB-fält: `../../../../referencePopulation` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested",
      "short" : "(anonym typ)",
      "definition" : "Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar.",
      "comment" : "TKB-fält: `../../../attested` (`AttestedType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attestedTime",
      "short" : "attestedTime",
      "definition" : "Tidpunkten för vidimering",
      "comment" : "TKB-fält: `../../../../attestedTime` (`TimeStampType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/TimeStampType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterHSAId",
      "short" : "attesterHSAId",
      "definition" : "HSA-id för person som vidimerat",
      "comment" : "TKB-fält: `../../../../attesterHSAId` (`HSAIdType`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string",
        "profile" : ["https://fhir.inera.se/ig/rivta-datatypes/StructureDefinition/HSAIdType"]
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.analysis.attested.attesterName",
      "short" : "attesterName",
      "definition" : "Namn på person som vidimerat",
      "comment" : "TKB-fält: `../../../../attesterName` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order",
      "short" : "OrderType",
      "definition" : "Information om en vårdbegäran som ligger till grund för svaret",
      "comment" : "TKB-fält: `../../order` (`OrderType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderId",
      "short" : "orderId",
      "definition" : "Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng.",
      "comment" : "TKB-fält: `../../../orderId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason",
      "path" : "getlaboratoryorderoutcome.laboratoryOrderOutcome.laboratoryOrderOutcomeBody.order.orderReason",
      "short" : "orderReason",
      "definition" : "Text som anger aktuell frågeställning.",
      "comment" : "TKB-fält: `../../../orderReason` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result",
      "path" : "getlaboratoryorderoutcome.result",
      "short" : "ResultType",
      "definition" : "Innehåller information om begäran gick bra eller ej.",
      "comment" : "TKB-fält: `result` (`ResultType`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.resultCode",
      "path" : "getlaboratoryorderoutcome.result.resultCode",
      "short" : "resultCode",
      "definition" : "Kan endast vara OK, INFO eller ERROR.",
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
      "id" : "getlaboratoryorderoutcome.result.errorCode",
      "path" : "getlaboratoryorderoutcome.result.errorCode",
      "short" : "errorCode",
      "definition" : "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.",
      "comment" : "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).\n\n**Modellanteckning:** errorCode Tillåtna värden: INVALID_REQUEST.",
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
      "id" : "getlaboratoryorderoutcome.result.logId",
      "path" : "getlaboratoryorderoutcome.result.logId",
      "short" : "logId",
      "definition" : "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.",
      "comment" : "TKB-fält: `../logId` (`string`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.subCode",
      "path" : "getlaboratoryorderoutcome.result.subCode",
      "short" : "subCode",
      "definition" : "Inga subkoder är specificerade.",
      "comment" : "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getlaboratoryorderoutcome.result.message",
      "path" : "getlaboratoryorderoutcome.result.message",
      "short" : "message",
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
