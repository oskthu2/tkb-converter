# Gemensamma datatyper - RIV-TA gemensamma datatyper v1.0.0

* [**Table of Contents**](toc.md)
* **Gemensamma datatyper**

## Gemensamma datatyper

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/rivta-datatypes/ImplementationGuide/inera.rivta.datatypes | *Version*:1.0.0 |
| Active as of 2026-11-09 | *Computable Name*:RivtaDatatypes |
| **Copyright/Legal**: Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

# RIV-TA gemensamma datatyper

Den här IG:n definierar de grunddatatyper som återkommer i RIV-TA-tjänstekontrakten, en gång, så att de logiska modellerna i varje TKB-IG kan referera till samma definition. Typerna följer [RIV-TA Best Practice: De facto-konventioner för datatyper](https://bitbucket.org/rivta-domains/best-practice/src/master/schema/) och har samma namn, element och kardinaliteter som i schemat. HSAIdType och UUIDType finns inte i de facto-konventionerna men definieras likadant i nästan alla domänscheman och är därför också med.

## Hur TKB-IG:erna använder typerna

De logiska modellerna i TKB-IG:erna följer tjänstekontraktets XML-schema: varje fält har samma namn, kardinalitet och typ som i schemat. När domänens schema definierar en typ med samma namn som här gäller:

* **Identisk definition:** fältet refererar direkt till typen här.
* **Samma element men snävare kardinalitet** (t.ex. `IIType.extension` 1..1 i stället för 0..1): domänens IG har en egen typ med samma namn som ärver typen här och skärper kardinaliteten.
* **Annan definition:** domänens IG definierar typen själv, eftersom den inte är samma typ.

Enkla typer (xs:simpleType, t.ex. TimeStampType) är profiler på FHIR-typen `string` med schemats mönster som invariant.

## Typer

| | | | |
| :--- | :--- | :--- | :--- |
| [ActorType](StructureDefinition-ActorType.md) | sammansatt | Medarbetare i vård och omsorg | hsaId : HSAIdType [0..1]personName : string [0..1]personTelecom : string [0..1]personEmail : string [0..1]personAddress : string [0..1] |
| [CVType](StructureDefinition-CVType.md) | sammansatt | Referens till ett begrepp i ett externt kodverk. | code : string [0..1]codeSystem : string [0..1]codeSystemName : string [0..1]codeSystemVersion : string [0..1]displayName : string [0..1]originalText : string [0..1] |
| [DatePeriodType](StructureDefinition-DatePeriodType.md) | sammansatt | Datumintervall med minst ett start- eller slutdatum. | start : DateType [0..1]end : DateType [0..1] |
| [DateType](StructureDefinition-DateType.md) | enkel | Datum på formatet YYYYMMDD utan tidszon. | xs:string, mönster`(19\|20)\d\d(0[1-9]\|1[012])(0[1-9]\|[12][0-9]\|3[01])` |
| [DecimalPrimitiveType](StructureDefinition-DecimalPrimitiveType.md) | enkel | Decimaltal som bevarar signifikanta avslutande nollor. | xs:string, mönster`-?(0\|[1-9][0-9]*)((\.\|,)[0-9]+)?([eE][+-]?[0-9]+)?` |
| [HSAIdType](StructureDefinition-HSAIdType.md) | enkel | HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. | xs:string |
| [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.md) | sammansatt | Vård- och omsorgspersonal samt organisatorisk tillhörighet. | authorTime : TimeStampType [1..1]healthcareProfessionalHSAId : HSAIdType [0..1]healthcareProfessionalName : string [0..1]healthcareProfessionalRoleCode : CVType [0..1]healthcareProfessionalOrgUnit : OrgUnitType [0..1]healthcareProfessionalCareUnitHSAId : HSAIdType [0..1]healthcareProfessionalCareGiverHSAId : HSAIdType [0..1] |
| [IIType](StructureDefinition-IIType.md) | sammansatt | Unik identifierare för ett objekt eller en entitet. | root : string [1..1]extension : string [0..1] |
| [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.md) | sammansatt | Signatur och uppgifter om signerande person. | signatureTime : TimeStampType [1..1]legalAuthenticatorHSAId : HSAIdType [0..1]legalAuthenticatorName : string [0..1]legalAuthenticatorRoleCode : CVType [0..1] |
| [MultimediaType](StructureDefinition-MultimediaType.md) | sammansatt | Multimediaobjekt som binärdata eller extern referens. | id : string [0..1]mediaType : MediaTypeEnum [1..1]value : base64Binary [0..1]reference : anyURI [0..1] |
| [OrgUnitType](StructureDefinition-OrgUnitType.md) | sammansatt | Identitets-, kontakt- och adressuppgifter för en organisationsenhet. | orgUnitHSAId : HSAIdType [0..1]orgUnitName : string [0..1]orgUnitTelecom : string [0..1]orgUnitEmail : string [0..1]orgUnitAddress : string [0..1]orgUnitLocation : string [0..1] |
| [PQIntervalType](StructureDefinition-PQIntervalType.md) | sammansatt | Intervall av mätbara värden med enhet. | low : DecimalPrimitiveType [0..1]lowClosed : boolean [0..1]high : DecimalPrimitiveType [0..1]highClosed : boolean [0..1]unit : string [1..1] |
| [PQType](StructureDefinition-PQType.md) | sammansatt | Mätbart värde med enhet. | value : DecimalPrimitiveType [1..1]unit : string [1..1] |
| [PartialDateType](StructureDefinition-PartialDateType.md) | sammansatt | Datum med variabel noggrannhet. | format : DateTypeFormatEnum [1..1]value : PartialDateValueType [1..1] |
| [PartialDateValueType](StructureDefinition-PartialDateValueType.md) | enkel | Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. | xs:string, mönster`-?([1-9][0-9]{3}\|0[0-9]{3})((0[1-9]\|1[0-2])((0[1-9]\|[12][0-9]\|3[01]))?)?` |
| [PersonIdType](StructureDefinition-PersonIdType.md) | sammansatt | Identifierare för en person och typ av identifierare. | id : string [1..1]type : string [1..1] |
| [ResultType](StructureDefinition-ResultType.md) | sammansatt | Resultatkod och valfri text för logiska fel. | resultCode : ResultCodeEnum [1..1]resultText : string [0..1] |
| [TimePeriodType](StructureDefinition-TimePeriodType.md) | sammansatt | Tidsintervall med minst en start- eller sluttidpunkt. | start : TimeStampType [0..1]end : TimeStampType [0..1] |
| [TimeStampType](StructureDefinition-TimeStampType.md) | enkel | Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. | xs:string, mönster`(19\|20)\d\d(0[1-9]\|1[012])(0[1-9]\|[12][0-9]\|3[01])(0[0-9]\|1[0-9]\|2[0123])([0-5])([0-9])([0-5])([0-9])` |
| [UUIDType](StructureDefinition-UUIDType.md) | enkel | Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. | xs:string, mönster`[A-Fa-f0-9]{32}\|(\{\|\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\}\|\))?` |



## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "inera.rivta.datatypes",
  "url" : "https://fhir.inera.se/ig/rivta-datatypes/ImplementationGuide/inera.rivta.datatypes",
  "version" : "1.0.0",
  "name" : "RivtaDatatypes",
  "title" : "RIV-TA gemensamma datatyper",
  "status" : "active",
  "date" : "2026-11-09T03:12:38+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "copyright" : "Copyright 2026 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "packageId" : "inera.rivta.datatypes",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.5.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.4.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/ig/rivta-datatypes/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "release"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "false"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.inera.se/ig/rivta-datatypes/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ActorType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ActorType"
      },
      "name" : "ActorType",
      "description" : "Medarbetare i vård och omsorg (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-CVType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/CVType"
      },
      "name" : "CVType",
      "description" : "Referens till ett begrepp i ett externt kodverk. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DatePeriodType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DatePeriodType"
      },
      "name" : "DatePeriodType",
      "description" : "Datumintervall med minst ett start- eller slutdatum. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DateType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DateType"
      },
      "name" : "DateType",
      "description" : "Datum på formatet YYYYMMDD utan tidszon. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-DecimalPrimitiveType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/DecimalPrimitiveType"
      },
      "name" : "DecimalPrimitiveType",
      "description" : "Decimaltal som bevarar signifikanta avslutande nollor. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HealthcareProfessionalType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HealthcareProfessionalType"
      },
      "name" : "HealthcareProfessionalType",
      "description" : "Vård- och omsorgspersonal samt organisatorisk tillhörighet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-HSAIdType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/HSAIdType"
      },
      "name" : "HSAIdType",
      "description" : "HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-IIType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/IIType"
      },
      "name" : "IIType",
      "description" : "Unik identifierare för ett objekt eller en entitet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-LegalAuthenticatorType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/LegalAuthenticatorType"
      },
      "name" : "LegalAuthenticatorType",
      "description" : "Signatur och uppgifter om signerande person. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-MultimediaType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/MultimediaType"
      },
      "name" : "MultimediaType",
      "description" : "Multimediaobjekt som binärdata eller extern referens. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-OrgUnitType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/OrgUnitType"
      },
      "name" : "OrgUnitType",
      "description" : "Identitets-, kontakt- och adressuppgifter för en organisationsenhet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PartialDateType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PartialDateType"
      },
      "name" : "PartialDateType",
      "description" : "Datum med variabel noggrannhet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PartialDateValueType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PartialDateValueType"
      },
      "name" : "PartialDateValueType",
      "description" : "Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PersonIdType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PersonIdType"
      },
      "name" : "PersonIdType",
      "description" : "Identifierare för en person och typ av identifierare. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PQIntervalType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PQIntervalType"
      },
      "name" : "PQIntervalType",
      "description" : "Intervall av mätbara värden med enhet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-PQType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/PQType"
      },
      "name" : "PQType",
      "description" : "Mätbart värde med enhet. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-ResultType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/ResultType"
      },
      "name" : "ResultType",
      "description" : "Resultatkod och valfri text för logiska fel. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:logical"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-TimePeriodType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/TimePeriodType"
      },
      "name" : "TimePeriodType",
      "description" : "Tidsintervall med minst en start- eller sluttidpunkt. (xs:complexType.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-TimeStampType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/TimeStampType"
      },
      "name" : "TimeStampType",
      "description" : "Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:primitive-type"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/implementationguide-page",
        "valueUri" : "StructureDefinition-UUIDType.html"
      }],
      "reference" : {
        "reference" : "StructureDefinition/UUIDType"
      },
      "name" : "UUIDType",
      "description" : "Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. (xs:simpleType, restriktion av xs:string.)",
      "exampleBoolean" : false
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Gemensamma datatyper",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
