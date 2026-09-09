# AssertCareEngagement — Request - ehr:accesscontrol v1.0.6

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AssertCareEngagement — Request**

## Logical Model: AssertCareEngagement — Request 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement-request | *Version*:1.0.6 |
| Draft as of 2026-09-09 | *Computable Name*:AssertCareEngagementRequest |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för requestparametrar i tjänstekontraktet AssertCareEngagement (RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1). 
Kontraktet används av tillämpningar som bereder professionen åtkomst till sammanhållen journalföring för att styrka att medarbetaren har ett behörighetsgrundande engagemang (TGP — Tillgänglig Patient). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-accesscontrol|current/StructureDefinition/StructureDefinition-assertcareengagement-request.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-assertcareengagement-request.csv), [Excel](StructureDefinition-assertcareengagement-request.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "assertcareengagement-request",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement-request",
  "version" : "1.0.6",
  "name" : "AssertCareEngagementRequest",
  "title" : "AssertCareEngagement — Request",
  "status" : "draft",
  "date" : "2026-09-09T16:51:03+00:00",
  "publisher" : "Inera AB",
  "contact" : [{
    "name" : "Inera AB",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  },
  {
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för requestparametrar i tjänstekontraktet AssertCareEngagement\n(RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).\n\nKontraktet används av tillämpningar som bereder professionen åtkomst till\nsammanhållen journalföring för att styrka att medarbetaren har ett\nbehörighetsgrundande engagemang (TGP — Tillgänglig Patient).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-accesscontrol/StructureDefinition/assertcareengagement-request",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "assertcareengagement-request",
      "path" : "assertcareengagement-request",
      "short" : "AssertCareEngagement — Request",
      "definition" : "Logisk modell för requestparametrar i tjänstekontraktet AssertCareEngagement\n(RIV-TA urn:riv:ehr:accesscontrol:AssertCareEngagement:1).\n\nKontraktet används av tillämpningar som bereder professionen åtkomst till\nsammanhållen journalföring för att styrka att medarbetaren har ett\nbehörighetsgrundande engagemang (TGP — Tillgänglig Patient)."
    },
    {
      "id" : "assertcareengagement-request.performer",
      "path" : "assertcareengagement-request.performer",
      "short" : "HSA-id för medarbetaren som begär åtkomst",
      "definition" : "HSA-id för medarbetare som begär åtkomst till sammanhållen journalföring.\nSka vara HSA-id för den medarbetare som är autentiserad i tjänstekonsumenten\noch som begär åtkomst till sammanhållen journalföring.\nKardinalitet: Obligatorisk.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "assertcareengagement-request.subjectOfCareId",
      "path" : "assertcareengagement-request.subjectOfCareId",
      "short" : "Person- eller samordningsnummer",
      "definition" : "Person- eller samordningsnummer för den patient vars sammanhållna journalföring\nsöks. 12 tecken enligt Skatteverkets format (ej bindestreck).\nKardinalitet: Obligatorisk.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "assertcareengagement-request.careUnitHsaIdentity",
      "path" : "assertcareengagement-request.careUnitHsaIdentity",
      "short" : "HSA-id för medarbetarens uppdragsvårdenhet",
      "definition" : "HSA-id för den vårdenhet på vars uppdrag medarbetaren agerar och begär åtkomst\ntill sammanhållen journalföring.\nKardinalitet: Obligatorisk.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "assertcareengagement-request.careGiverHsaIdentity",
      "path" : "assertcareengagement-request.careGiverHsaIdentity",
      "short" : "HSA-id för vårdgivaren",
      "definition" : "HSA-id för vårdgivaren där vårdenhet med HSA-id enligt careUnitHsaIdentity ingår.\nKardinalitet: Obligatorisk.\nSystem: urn:oid:1.2.752.129.2.1.4.1 (HSA)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    }]
  }
}

```
