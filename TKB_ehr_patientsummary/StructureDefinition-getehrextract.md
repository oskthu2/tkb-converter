# GetEhrExtract — Response - ehr: patientsummary v1.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEhrExtract — Response**

## Logical Model: GetEhrExtract — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract | *Version*:1.0.0 |
| Draft as of 2026-09-26 | *Computable Name*:GetEhrExtract |
| **Copyright/Legal**: Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0. | |

 
Logisk modell för svaret i GetEhrExtract (urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractResponseType). 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/inera.ehr-patientsummary|current/StructureDefinition/StructureDefinition-getehrextract.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-getehrextract.csv), [Excel](StructureDefinition-getehrextract.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "getehrextract",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-be-target"
  }],
  "url" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract",
  "version" : "1.0.0",
  "name" : "GetEhrExtract",
  "title" : "GetEhrExtract — Response",
  "status" : "draft",
  "date" : "2026-09-26T19:25:56+00:00",
  "contact" : [{
    "name" : "Inera Arkitektur",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.inera.se"
    }]
  }],
  "description" : "Logisk modell för svaret i GetEhrExtract\n(urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractResponseType).",
  "copyright" : "Copyright 2024 Inera AB. Licensieras under Creative Commons Attribution 4.0.",
  "fhirVersion" : "4.0.1",
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Base",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "getehrextract",
      "path" : "getehrextract",
      "short" : "GetEhrExtract — Response",
      "definition" : "Logisk modell för svaret i GetEhrExtract\n(urn:riv:ehr:patientsummary:GetEhrExtractResponder:1, GetEhrExtractResponseType)."
    },
    {
      "id" : "getehrextract.ehr-extract",
      "path" : "getehrextract.ehr_extract",
      "short" : "ehr_extract",
      "definition" : "The root node of an EHR Extract.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.authorising-party",
      "path" : "getehrextract.ehr_extract.authorising_party",
      "short" : "authorising_party",
      "definition" : "authorising_party",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.ehr-id",
      "path" : "getehrextract.ehr_extract.ehr_id",
      "short" : "ehr_id",
      "definition" : "ehr_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.ehr-system",
      "path" : "getehrextract.ehr_extract.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.subject-of-care",
      "path" : "getehrextract.ehr_extract.subject_of_care",
      "short" : "subject_of_care",
      "definition" : "subject_of_care",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.time-created",
      "path" : "getehrextract.ehr_extract.time_created",
      "short" : "time_created",
      "definition" : "time_created",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions",
      "path" : "getehrextract.ehr_extract.all_compositions",
      "short" : "all_compositions",
      "definition" : "Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.archetype-id",
      "path" : "getehrextract.ehr_extract.all_compositions.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.meaning",
      "path" : "getehrextract.ehr_extract.all_compositions.meaning",
      "short" : "meaning",
      "definition" : "meaning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.compositionName",
      "path" : "getehrextract.ehr_extract.all_compositions.compositionName",
      "short" : "compositionName",
      "definition" : "compositionName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.orig-parent-ref",
      "path" : "getehrextract.ehr_extract.all_compositions.orig_parent_ref",
      "short" : "orig_parent_ref",
      "definition" : "orig_parent_ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.policy-ids",
      "path" : "getehrextract.ehr_extract.all_compositions.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.sensitivity",
      "path" : "getehrextract.ehr_extract.all_compositions.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.synthesised",
      "path" : "getehrextract.ehr_extract.all_compositions.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links",
      "path" : "getehrextract.ehr_extract.all_compositions.links",
      "short" : "links",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.follow-link",
      "path" : "getehrextract.ehr_extract.all_compositions.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.nature",
      "path" : "getehrextract.ehr_extract.all_compositions.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.role",
      "path" : "getehrextract.ehr_extract.all_compositions.links.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.target-type",
      "path" : "getehrextract.ehr_extract.all_compositions.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.target-id",
      "path" : "getehrextract.ehr_extract.all_compositions.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit",
      "short" : "feeder_audit",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.contribution-id",
      "path" : "getehrextract.ehr_extract.all_compositions.contribution_id",
      "short" : "contribution_id",
      "definition" : "contribution_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.session-time",
      "path" : "getehrextract.ehr_extract.all_compositions.session_time",
      "short" : "session_time",
      "definition" : "session_time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.territory",
      "path" : "getehrextract.ehr_extract.all_compositions.territory",
      "short" : "territory",
      "definition" : "territory",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations",
      "short" : "attestations",
      "definition" : "Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attested-view",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attested_view",
      "short" : "attested_view",
      "definition" : "attested_view",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.proof",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.proof",
      "short" : "proof",
      "definition" : "proof",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.reason-for-attestation",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.reason_for_attestation",
      "short" : "reason_for_attestation",
      "definition" : "reason_for_attestation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.time",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.time",
      "short" : "time",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.target-rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.target_rc_id",
      "short" : "target_rc_id",
      "definition" : "target_rc_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester",
      "short" : "attester",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.function",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations",
      "short" : "other_participations",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.function",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal",
      "path" : "getehrextract.ehr_extract.all_compositions.committal",
      "short" : "committal",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.committer",
      "short" : "committer",
      "definition" : "committer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer",
      "path" : "getehrextract.ehr_extract.all_compositions.composer",
      "short" : "composer",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.function",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content",
      "path" : "getehrextract.ehr_extract.all_compositions.content",
      "short" : "content",
      "definition" : "Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.archetype-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.meaning",
      "path" : "getehrextract.ehr_extract.all_compositions.content.meaning",
      "short" : "meaning",
      "definition" : "meaning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.contentName",
      "path" : "getehrextract.ehr_extract.all_compositions.content.contentName",
      "short" : "contentName",
      "definition" : "contentName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.orig-parent-ref",
      "path" : "getehrextract.ehr_extract.all_compositions.content.orig_parent_ref",
      "short" : "orig_parent_ref",
      "definition" : "orig_parent_ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.policy-ids",
      "path" : "getehrextract.ehr_extract.all_compositions.content.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.sensitivity",
      "path" : "getehrextract.ehr_extract.all_compositions.content.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.synthesised",
      "path" : "getehrextract.ehr_extract.all_compositions.content.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links",
      "short" : "links",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.follow-link",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.nature",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.role",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.target-type",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.target-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit",
      "short" : "feeder_audit",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.section",
      "path" : "getehrextract.ehr_extract.all_compositions.content.section",
      "short" : "section",
      "definition" : "Element som bara finns när instansen är av subtypen SECTION (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.section.members",
      "path" : "getehrextract.ehr_extract.all_compositions.content.section.members",
      "short" : "members",
      "definition" : " (Rekursiv typ, ej utvecklad.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry",
      "short" : "entry",
      "definition" : "Element som bara finns när instansen är av subtypen ENTRY (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.act-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.act_id",
      "short" : "act_id",
      "definition" : "act_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.act-status",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.act_status",
      "short" : "act_status",
      "definition" : "act_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.subject-of-information-category",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.subject_of_information_category",
      "short" : "subject_of_information_category",
      "definition" : "subject_of_information_category",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.uncertainty-expressed",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.uncertainty_expressed",
      "short" : "uncertainty_expressed",
      "definition" : "uncertainty_expressed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items",
      "short" : "items",
      "definition" : "Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. Abstrakt typ; instansen anges med xsi:type som en av CLUSTER, ELEMENT.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.archetype-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.meaning",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.meaning",
      "short" : "meaning",
      "definition" : "meaning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.itemName",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.itemName",
      "short" : "itemName",
      "definition" : "itemName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.orig-parent-ref",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.orig_parent_ref",
      "short" : "orig_parent_ref",
      "definition" : "orig_parent_ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.policy-ids",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.sensitivity",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.synthesised",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links",
      "short" : "links",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links.follow-link",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links.nature",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links.role",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links.target-type",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.links.target-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit",
      "short" : "feeder_audit",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.emphasis",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.emphasis",
      "short" : "emphasis",
      "definition" : "emphasis",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.item-category",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.item_category",
      "short" : "item_category",
      "definition" : "item_category",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.obs-time",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.obs_time",
      "short" : "obs_time",
      "definition" : "obs_time",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.cluster",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.cluster",
      "short" : "cluster",
      "definition" : "Element som bara finns när instansen är av subtypen CLUSTER (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.cluster.structure-type",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.cluster.structure_type",
      "short" : "structure_type",
      "definition" : "structure_type",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.cluster.parts",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.cluster.parts",
      "short" : "parts",
      "definition" : " (Rekursiv typ, ej utvecklad.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.element",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.element",
      "short" : "element",
      "definition" : "Element som bara finns när instansen är av subtypen ELEMENT (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.items.element.elementValue",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.items.element.elementValue",
      "short" : "elementValue",
      "definition" : " (ISO 21090 ANY, polymorft värde, modellerat som string.) Heter value i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider",
      "short" : "info_provider",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider.function",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.info-provider.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.info_provider.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations",
      "short" : "other_participations",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations.function",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.other-participations.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.other_participations.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.subject-of-information",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.subject_of_information",
      "short" : "subject_of_information",
      "definition" : "Identifies the relationship of a person to the subject of care. Specifically used in Entry.subject_of_information.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.subject-of-information.party",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.subject_of_information.party",
      "short" : "party",
      "definition" : "party",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.entry.subject-of-information.relationship",
      "path" : "getehrextract.ehr_extract.all_compositions.content.entry.subject_of_information.relationship",
      "short" : "relationship",
      "definition" : "relationship",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria",
      "path" : "getehrextract.ehr_extract.criteria",
      "short" : "criteria",
      "definition" : "Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.all-versions",
      "path" : "getehrextract.ehr_extract.criteria.all_versions",
      "short" : "all_versions",
      "definition" : "all_versions",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.archetype-ids",
      "path" : "getehrextract.ehr_extract.criteria.archetype_ids",
      "short" : "archetype_ids",
      "definition" : "archetype_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.max-sensitivity",
      "path" : "getehrextract.ehr_extract.criteria.max_sensitivity",
      "short" : "max_sensitivity",
      "definition" : "max_sensitivity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.multimedia-included",
      "path" : "getehrextract.ehr_extract.criteria.multimedia_included",
      "short" : "multimedia_included",
      "definition" : "multimedia_included",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.other-constraints",
      "path" : "getehrextract.ehr_extract.criteria.other_constraints",
      "short" : "other_constraints",
      "definition" : "other_constraints",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.time-period",
      "path" : "getehrextract.ehr_extract.criteria.time_period",
      "short" : "time_period",
      "definition" : "time_period",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Period"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders",
      "path" : "getehrextract.ehr_extract.folders",
      "short" : "folders",
      "definition" : "Organises and groups Compositions within an EHR Extract.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.archetype-id",
      "path" : "getehrextract.ehr_extract.folders.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.meaning",
      "path" : "getehrextract.ehr_extract.folders.meaning",
      "short" : "meaning",
      "definition" : "meaning",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.folderName",
      "path" : "getehrextract.ehr_extract.folders.folderName",
      "short" : "folderName",
      "definition" : "folderName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.orig-parent-ref",
      "path" : "getehrextract.ehr_extract.folders.orig_parent_ref",
      "short" : "orig_parent_ref",
      "definition" : "orig_parent_ref",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.policy-ids",
      "path" : "getehrextract.ehr_extract.folders.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.rc-id",
      "path" : "getehrextract.ehr_extract.folders.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.sensitivity",
      "path" : "getehrextract.ehr_extract.folders.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.synthesised",
      "path" : "getehrextract.ehr_extract.folders.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links",
      "path" : "getehrextract.ehr_extract.folders.links",
      "short" : "links",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.follow-link",
      "path" : "getehrextract.ehr_extract.folders.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.nature",
      "path" : "getehrextract.ehr_extract.folders.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.role",
      "path" : "getehrextract.ehr_extract.folders.links.role",
      "short" : "role",
      "definition" : "role",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.target-type",
      "path" : "getehrextract.ehr_extract.folders.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.target-id",
      "path" : "getehrextract.ehr_extract.folders.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit",
      "short" : "feeder_audit",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.sub-folders",
      "path" : "getehrextract.ehr_extract.folders.sub_folders",
      "short" : "sub_folders",
      "definition" : " (Rekursiv typ, ej utvecklad.)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations",
      "path" : "getehrextract.ehr_extract.folders.attestations",
      "short" : "attestations",
      "definition" : "Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attested-view",
      "path" : "getehrextract.ehr_extract.folders.attestations.attested_view",
      "short" : "attested_view",
      "definition" : "attested_view",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.proof",
      "path" : "getehrextract.ehr_extract.folders.attestations.proof",
      "short" : "proof",
      "definition" : "proof",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Attachment"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.reason-for-attestation",
      "path" : "getehrextract.ehr_extract.folders.attestations.reason_for_attestation",
      "short" : "reason_for_attestation",
      "definition" : "reason_for_attestation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.time",
      "path" : "getehrextract.ehr_extract.folders.attestations.time",
      "short" : "time",
      "definition" : "time",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.target-rc-id",
      "path" : "getehrextract.ehr_extract.folders.attestations.target_rc_id",
      "short" : "target_rc_id",
      "definition" : "target_rc_id",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester",
      "short" : "attester",
      "definition" : "The participation of an entity in the EHR.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.function",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.function",
      "short" : "function",
      "definition" : "function",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.healthcare-facility",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.mode",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.mode",
      "short" : "mode",
      "definition" : "mode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.performer",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.performer",
      "short" : "performer",
      "definition" : "performer",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.service-setting",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.composition-rc-ids",
      "path" : "getehrextract.ehr_extract.folders.composition_rc_ids",
      "short" : "composition_rc_ids",
      "definition" : "composition_rc_ids",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract",
      "path" : "getehrextract.ehr_extract.demographic_extract",
      "short" : "demographic_extract",
      "definition" : "Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard. Abstrakt typ; instansen anges med xsi:type som en av SOFTWARE_OR_DEVICE, ORGANISATION, PERSON.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.extract-id",
      "path" : "getehrextract.ehr_extract.demographic_extract.extract_id",
      "short" : "extract_id",
      "definition" : "extract_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.identifiedEntityId",
      "path" : "getehrextract.ehr_extract.demographic_extract.identifiedEntityId",
      "short" : "identifiedEntityId",
      "definition" : "identifiedEntityId Heter id i schemat.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.telecom",
      "path" : "getehrextract.ehr_extract.demographic_extract.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "ContactPoint"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice",
      "short" : "softwareOrDevice",
      "definition" : "Element som bara finns när instansen är av subtypen SOFTWARE_OR_DEVICE (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice.softwareOrDeviceCode",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice.softwareOrDeviceCode",
      "short" : "softwareOrDeviceCode",
      "definition" : "softwareOrDeviceCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice.desc",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice.desc",
      "short" : "desc",
      "definition" : "desc",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice.manufacturerModelName",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice.manufacturerModelName",
      "short" : "manufacturerModelName",
      "definition" : "manufacturerModelName",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice.softwareOrDeviceVersion",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice.softwareOrDeviceVersion",
      "short" : "softwareOrDeviceVersion",
      "definition" : "softwareOrDeviceVersion Heter version i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.softwareOrDevice.owningOrganisation-id",
      "path" : "getehrextract.ehr_extract.demographic_extract.softwareOrDevice.owningOrganisation_id",
      "short" : "owningOrganisation_id",
      "definition" : "owningOrganisation_id",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.organisation",
      "path" : "getehrextract.ehr_extract.demographic_extract.organisation",
      "short" : "organisation",
      "definition" : "Element som bara finns när instansen är av subtypen ORGANISATION (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.organisation.organisationCode",
      "path" : "getehrextract.ehr_extract.demographic_extract.organisation.organisationCode",
      "short" : "organisationCode",
      "definition" : "organisationCode Heter code i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.organisation.desc",
      "path" : "getehrextract.ehr_extract.demographic_extract.organisation.desc",
      "short" : "desc",
      "definition" : "desc",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.organisation.organisationName",
      "path" : "getehrextract.ehr_extract.demographic_extract.organisation.organisationName",
      "short" : "organisationName",
      "definition" : "organisationName Heter name i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.organisation.addr",
      "path" : "getehrextract.ehr_extract.demographic_extract.organisation.addr",
      "short" : "addr",
      "definition" : "addr",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.person",
      "path" : "getehrextract.ehr_extract.demographic_extract.person",
      "short" : "person",
      "definition" : "Element som bara finns när instansen är av subtypen PERSON (xsi:type).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.person.personName",
      "path" : "getehrextract.ehr_extract.demographic_extract.person.personName",
      "short" : "personName",
      "definition" : "personName Heter name i schemat.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "HumanName"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.person.addr",
      "path" : "getehrextract.ehr_extract.demographic_extract.person.addr",
      "short" : "addr",
      "definition" : "addr",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Address"
      }]
    },
    {
      "id" : "getehrextract.continuation-token",
      "path" : "getehrextract.continuation_token",
      "short" : "continuation_token",
      "definition" : "continuation_token",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.response-detail",
      "path" : "getehrextract.response_detail",
      "short" : "response_detail",
      "definition" : "response_detail",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "getehrextract.response-detail.responseDetailCode",
      "path" : "getehrextract.response_detail.responseDetailCode",
      "short" : "responseDetailCode",
      "definition" : "responseDetailCode Heter code i schemat.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "getehrextract.response-detail.responseDetailText",
      "path" : "getehrextract.response_detail.responseDetailText",
      "short" : "responseDetailText",
      "definition" : "responseDetailText Heter text i schemat.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.response-detail.type-code",
      "path" : "getehrextract.response_detail.type_code",
      "short" : "type_code",
      "definition" : "(XML-attribut.)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.inera.se/ig/ehr-patientsummary/ValueSet/patientsummary-responsedetailtypecodes-vs"
      }
    }]
  }
}

```
