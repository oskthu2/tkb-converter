# GetEhrExtract — Response - ehr: patientsummary v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GetEhrExtract — Response**

## Logical Model: GetEhrExtract — Response 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract | *Version*:1.0 |
| Draft as of 2026-11-09 | *Computable Name*:GetEhrExtract |
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
  "version" : "1.0",
  "name" : "GetEhrExtract",
  "title" : "GetEhrExtract — Response",
  "status" : "draft",
  "date" : "2026-11-09T03:31:00+00:00",
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
      "short" : "EHR_EXTRACT",
      "definition" : "Detaljerad patientinformation på formatet EN13606.",
      "comment" : "TKB-fält: `ehr_extract` (`EHR_EXTRACT`, kardinalitet 0..1).\n\nObs: modellen anger 0..* där TKB:n anger 0..1.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.authorising-party",
      "path" : "getehrextract.ehr_extract.authorising_party",
      "short" : "authorising_party",
      "definition" : "authorising_party",
      "comment" : "TKB-fält: `../authorising_party` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.ehr-id",
      "path" : "getehrextract.ehr_extract.ehr_id",
      "short" : "ehr_id",
      "definition" : "ehr_id",
      "comment" : "TKB-fält: `../ehr_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.ehr-system",
      "path" : "getehrextract.ehr_extract.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "comment" : "TKB-fält: `../ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.rm-id",
      "path" : "getehrextract.ehr_extract.rm_id",
      "short" : "rm_id",
      "definition" : "rm_id",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.subject-of-care",
      "path" : "getehrextract.ehr_extract.subject_of_care",
      "short" : "subject_of_care",
      "definition" : "subject_of_care",
      "comment" : "TKB-fält: `../subject_of_care` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.time-created",
      "path" : "getehrextract.ehr_extract.time_created",
      "short" : "time_created",
      "definition" : "time_created",
      "comment" : "TKB-fält: `../time_created` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions",
      "path" : "getehrextract.ehr_extract.all_compositions",
      "short" : "COMPOSITION",
      "definition" : "Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.",
      "comment" : "TKB-fält: `../all_compositions` (`COMPOSITION`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.archetype-id",
      "path" : "getehrextract.ehr_extract.all_compositions.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "comment" : "TKB-fält: `../../archetype_id` (`ST`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../meaning` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.name",
      "path" : "getehrextract.ehr_extract.all_compositions.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`ST`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../orig_parent_ref` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.policy-ids",
      "path" : "getehrextract.ehr_extract.all_compositions.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "comment" : "TKB-fält: `../../policy_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "comment" : "TKB-fält: `../../rc_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.sensitivity",
      "path" : "getehrextract.ehr_extract.all_compositions.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "comment" : "TKB-fält: `../../sensitivity` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.synthesised",
      "path" : "getehrextract.ehr_extract.all_compositions.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "comment" : "TKB-fält: `../../synthesised` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links",
      "path" : "getehrextract.ehr_extract.all_compositions.links",
      "short" : "LINK",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "comment" : "TKB-fält: `../../links` (`LINK`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.follow-link",
      "path" : "getehrextract.ehr_extract.all_compositions.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "comment" : "TKB-fält: `../../../follow_link` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.nature",
      "path" : "getehrextract.ehr_extract.all_compositions.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "comment" : "TKB-fält: `../../../nature` (`CS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.role",
      "path" : "getehrextract.ehr_extract.all_compositions.links.role",
      "short" : "role",
      "definition" : "role",
      "comment" : "TKB-fält: `../../../role` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.target-type",
      "path" : "getehrextract.ehr_extract.all_compositions.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "comment" : "TKB-fält: `../../../target_type` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.links.target-id",
      "path" : "getehrextract.ehr_extract.all_compositions.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "comment" : "TKB-fält: `../../../target_id` (`II`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit",
      "short" : "AUDIT_INFO",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "comment" : "TKB-fält: `../../feeder_audit` (`AUDIT_INFO`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "comment" : "TKB-fält: `../../../committer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "comment" : "TKB-fält: `../../../ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "comment" : "TKB-fält: `../../../previous_version` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "comment" : "TKB-fält: `../../../reason_for_revision` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "comment" : "TKB-fält: `../../../time_committed` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "comment" : "TKB-fält: `../../../version_set_id` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "comment" : "TKB-fält: `../../../version_status` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.contribution-id",
      "path" : "getehrextract.ehr_extract.all_compositions.contribution_id",
      "short" : "contribution_id",
      "definition" : "contribution_id",
      "comment" : "TKB-fält: `../../contribution_id` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.session-time",
      "path" : "getehrextract.ehr_extract.all_compositions.session_time",
      "short" : "session_time",
      "definition" : "session_time",
      "comment" : "TKB-fält: `../../session_time` (`IVL_TS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.territory",
      "path" : "getehrextract.ehr_extract.all_compositions.territory",
      "short" : "territory",
      "definition" : "territory",
      "comment" : "TKB-fält: `../../territory` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations",
      "short" : "ATTESTATION_INFO",
      "definition" : "Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only.",
      "comment" : "TKB-fält: `../../attestations` (`ATTESTATION_INFO`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attested-view",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attested_view",
      "short" : "attested_view",
      "definition" : "attested_view",
      "comment" : "TKB-fält: `../../../attested_view` (`ED`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.proof",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.proof",
      "short" : "proof",
      "definition" : "proof",
      "comment" : "TKB-fält: `../../../proof` (`ED`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.reason-for-attestation",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.reason_for_attestation",
      "short" : "reason_for_attestation",
      "definition" : "reason_for_attestation",
      "comment" : "TKB-fält: `../../../reason_for_attestation` (`CD`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.time",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.time",
      "short" : "time",
      "definition" : "time",
      "comment" : "TKB-fält: `../../../time` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.target-rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.target_rc_id",
      "short" : "target_rc_id",
      "definition" : "target_rc_id",
      "comment" : "TKB-fält: `../../../target_rc_id` (`II`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester",
      "short" : "FUNCTIONAL_ROLE",
      "definition" : "The participation of an entity in the EHR.",
      "comment" : "TKB-fält: `../../../attester` (`FUNCTIONAL_ROLE`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.function",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.function",
      "short" : "function",
      "definition" : "function",
      "comment" : "TKB-fält: `../../../../function` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "comment" : "TKB-fält: `../../../../healthcare_facility` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.mode",
      "short" : "mode",
      "definition" : "mode",
      "comment" : "TKB-fält: `../../../../mode` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.performer",
      "short" : "performer",
      "definition" : "performer",
      "comment" : "TKB-fält: `../../../../performer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.attestations.attester.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.attestations.attester.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "comment" : "TKB-fält: `../../../../service_setting` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations",
      "short" : "FUNCTIONAL_ROLE",
      "definition" : "The participation of an entity in the EHR.",
      "comment" : "TKB-fält: `../../other_participations` (`FUNCTIONAL_ROLE`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.function",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.function",
      "short" : "function",
      "definition" : "function",
      "comment" : "TKB-fält: `../../../function` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "comment" : "TKB-fält: `../../../healthcare_facility` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.mode",
      "short" : "mode",
      "definition" : "mode",
      "comment" : "TKB-fält: `../../../mode` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.performer",
      "short" : "performer",
      "definition" : "performer",
      "comment" : "TKB-fält: `../../../performer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.other-participations.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.other_participations.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "comment" : "TKB-fält: `../../../service_setting` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal",
      "path" : "getehrextract.ehr_extract.all_compositions.committal",
      "short" : "AUDIT_INFO",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "comment" : "TKB-fält: `../../committal` (`AUDIT_INFO`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.committer",
      "short" : "committer",
      "definition" : "committer",
      "comment" : "TKB-fält: `../../../committer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "comment" : "TKB-fält: `../../../ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "comment" : "TKB-fält: `../../../previous_version` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "comment" : "TKB-fält: `../../../reason_for_revision` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "comment" : "TKB-fält: `../../../time_committed` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "comment" : "TKB-fält: `../../../version_set_id` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.committal.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.committal.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "comment" : "TKB-fält: `../../../version_status` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer",
      "path" : "getehrextract.ehr_extract.all_compositions.composer",
      "short" : "FUNCTIONAL_ROLE",
      "definition" : "The participation of an entity in the EHR.",
      "comment" : "TKB-fält: `../../composer` (`FUNCTIONAL_ROLE`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.function",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.function",
      "short" : "function",
      "definition" : "function",
      "comment" : "TKB-fält: `../../../function` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.healthcare-facility",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "comment" : "TKB-fält: `../../../healthcare_facility` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.mode",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.mode",
      "short" : "mode",
      "definition" : "mode",
      "comment" : "TKB-fält: `../../../mode` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.performer",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.performer",
      "short" : "performer",
      "definition" : "performer",
      "comment" : "TKB-fält: `../../../performer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.composer.service-setting",
      "path" : "getehrextract.ehr_extract.all_compositions.composer.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "comment" : "TKB-fält: `../../../service_setting` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content",
      "path" : "getehrextract.ehr_extract.all_compositions.content",
      "short" : "CONTENT",
      "definition" : "Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY.",
      "comment" : "TKB-fält: `../../content` (`CONTENT`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.archetype-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "comment" : "TKB-fält: `../../../archetype_id` (`ST`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../../meaning` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.name",
      "path" : "getehrextract.ehr_extract.all_compositions.content.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../../name` (`ST`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../../orig_parent_ref` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.policy-ids",
      "path" : "getehrextract.ehr_extract.all_compositions.content.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "comment" : "TKB-fält: `../../../policy_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.rc-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "comment" : "TKB-fält: `../../../rc_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.sensitivity",
      "path" : "getehrextract.ehr_extract.all_compositions.content.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "comment" : "TKB-fält: `../../../sensitivity` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.synthesised",
      "path" : "getehrextract.ehr_extract.all_compositions.content.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "comment" : "TKB-fält: `../../../synthesised` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links",
      "short" : "LINK",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "comment" : "TKB-fält: `../../../links` (`LINK`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.follow-link",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "comment" : "TKB-fält: `../../../../follow_link` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.nature",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "comment" : "TKB-fält: `../../../../nature` (`CS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.role",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.role",
      "short" : "role",
      "definition" : "role",
      "comment" : "TKB-fält: `../../../../role` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.target-type",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "comment" : "TKB-fält: `../../../../target_type` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.links.target-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "comment" : "TKB-fält: `../../../../target_id` (`II`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit",
      "short" : "AUDIT_INFO",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "comment" : "TKB-fält: `../../../feeder_audit` (`AUDIT_INFO`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "comment" : "TKB-fält: `../../../../committer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "comment" : "TKB-fält: `../../../../ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "comment" : "TKB-fält: `../../../../previous_version` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "comment" : "TKB-fält: `../../../../reason_for_revision` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "comment" : "TKB-fält: `../../../../time_committed` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "comment" : "TKB-fält: `../../../../version_set_id` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.all-compositions.content.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.all_compositions.content.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "comment" : "TKB-fält: `../../../../version_status` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria",
      "path" : "getehrextract.ehr_extract.criteria",
      "short" : "EXTRACT_CRITERIA",
      "definition" : "Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.",
      "comment" : "TKB-fält: `../criteria` (`EXTRACT_CRITERIA`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.all-versions",
      "path" : "getehrextract.ehr_extract.criteria.all_versions",
      "short" : "all_versions",
      "definition" : "all_versions",
      "comment" : "TKB-fält: `../../all_versions` (`BL`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.archetype-ids",
      "path" : "getehrextract.ehr_extract.criteria.archetype_ids",
      "short" : "archetype_ids",
      "definition" : "archetype_ids",
      "comment" : "TKB-fält: `../../archetype_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.max-sensitivity",
      "path" : "getehrextract.ehr_extract.criteria.max_sensitivity",
      "short" : "max_sensitivity",
      "definition" : "max_sensitivity",
      "comment" : "TKB-fält: `../../max_sensitivity` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.multimedia-included",
      "path" : "getehrextract.ehr_extract.criteria.multimedia_included",
      "short" : "multimedia_included",
      "definition" : "multimedia_included",
      "comment" : "TKB-fält: `../../multimedia_included` (`BL`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.criteria.other-constraints",
      "path" : "getehrextract.ehr_extract.criteria.other_constraints",
      "short" : "other_constraints",
      "definition" : "other_constraints",
      "comment" : "TKB-fält: `../../other_constraints` (`ST`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../time_period` (`IVL_TS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders",
      "path" : "getehrextract.ehr_extract.folders",
      "short" : "FOLDER",
      "definition" : "Organises and groups Compositions within an EHR Extract.",
      "comment" : "TKB-fält: `../folders` (`FOLDER`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.archetype-id",
      "path" : "getehrextract.ehr_extract.folders.archetype_id",
      "short" : "archetype_id",
      "definition" : "archetype_id",
      "comment" : "TKB-fält: `../../archetype_id` (`ST`, kardinalitet 0..1).",
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
      "comment" : "TKB-fält: `../../meaning` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.name",
      "path" : "getehrextract.ehr_extract.folders.name",
      "short" : "name",
      "definition" : "name",
      "comment" : "TKB-fält: `../../name` (`ST`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../../orig_parent_ref` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.policy-ids",
      "path" : "getehrextract.ehr_extract.folders.policy_ids",
      "short" : "policy_ids",
      "definition" : "policy_ids",
      "comment" : "TKB-fält: `../../policy_ids` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.rc-id",
      "path" : "getehrextract.ehr_extract.folders.rc_id",
      "short" : "rc_id",
      "definition" : "rc_id",
      "comment" : "TKB-fält: `../../rc_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.sensitivity",
      "path" : "getehrextract.ehr_extract.folders.sensitivity",
      "short" : "sensitivity",
      "definition" : "sensitivity",
      "comment" : "TKB-fält: `../../sensitivity` (`INT`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.synthesised",
      "path" : "getehrextract.ehr_extract.folders.synthesised",
      "short" : "synthesised",
      "definition" : "synthesised",
      "comment" : "TKB-fält: `../../synthesised` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links",
      "path" : "getehrextract.ehr_extract.folders.links",
      "short" : "LINK",
      "definition" : "Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.",
      "comment" : "TKB-fält: `../../links` (`LINK`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.follow-link",
      "path" : "getehrextract.ehr_extract.folders.links.follow_link",
      "short" : "follow_link",
      "definition" : "follow_link",
      "comment" : "TKB-fält: `../../../follow_link` (`BL`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.nature",
      "path" : "getehrextract.ehr_extract.folders.links.nature",
      "short" : "nature",
      "definition" : "nature",
      "comment" : "TKB-fält: `../../../nature` (`CS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.role",
      "path" : "getehrextract.ehr_extract.folders.links.role",
      "short" : "role",
      "definition" : "role",
      "comment" : "TKB-fält: `../../../role` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.target-type",
      "path" : "getehrextract.ehr_extract.folders.links.target_type",
      "short" : "target_type",
      "definition" : "target_type",
      "comment" : "TKB-fält: `../../../target_type` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.links.target-id",
      "path" : "getehrextract.ehr_extract.folders.links.target_id",
      "short" : "target_id",
      "definition" : "target_id",
      "comment" : "TKB-fält: `../../../target_id` (`II`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit",
      "short" : "AUDIT_INFO",
      "definition" : "The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining \"attribute_version_status.coding_scheme_name\" in the printed standard.",
      "comment" : "TKB-fält: `../../feeder_audit` (`AUDIT_INFO`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.committer",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.committer",
      "short" : "committer",
      "definition" : "committer",
      "comment" : "TKB-fält: `../../../committer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.ehr-system",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.ehr_system",
      "short" : "ehr_system",
      "definition" : "ehr_system",
      "comment" : "TKB-fält: `../../../ehr_system` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.previous-version",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.previous_version",
      "short" : "previous_version",
      "definition" : "previous_version",
      "comment" : "TKB-fält: `../../../previous_version` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.reason-for-revision",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.reason_for_revision",
      "short" : "reason_for_revision",
      "definition" : "reason_for_revision",
      "comment" : "TKB-fält: `../../../reason_for_revision` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.time-committed",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.time_committed",
      "short" : "time_committed",
      "definition" : "time_committed",
      "comment" : "TKB-fält: `../../../time_committed` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.version-set-id",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.version_set_id",
      "short" : "version_set_id",
      "definition" : "version_set_id",
      "comment" : "TKB-fält: `../../../version_set_id` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.feeder-audit.version-status",
      "path" : "getehrextract.ehr_extract.folders.feeder_audit.version_status",
      "short" : "version_status",
      "definition" : "version_status",
      "comment" : "TKB-fält: `../../../version_status` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.sub-folders",
      "path" : "getehrextract.ehr_extract.folders.sub_folders",
      "short" : "FOLDER",
      "definition" : "(Rekursiv typ, ej utvecklad.)",
      "comment" : "TKB-fält: `../../sub_folders` (`FOLDER`, kardinalitet 0..*).\n\n**Modellanteckning:** sub_folders Rekursiv: samma struktur som getehrextract.ehr_extract.folders.",
      "min" : 0,
      "max" : "*",
      "contentReference" : "https://fhir.inera.se/ig/ehr-patientsummary/StructureDefinition/getehrextract#getehrextract.ehr_extract.folders"
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations",
      "path" : "getehrextract.ehr_extract.folders.attestations",
      "short" : "ATTESTATION_INFO",
      "definition" : "Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only.",
      "comment" : "TKB-fält: `../../attestations` (`ATTESTATION_INFO`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attested-view",
      "path" : "getehrextract.ehr_extract.folders.attestations.attested_view",
      "short" : "attested_view",
      "definition" : "attested_view",
      "comment" : "TKB-fält: `../../../attested_view` (`ED`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.proof",
      "path" : "getehrextract.ehr_extract.folders.attestations.proof",
      "short" : "proof",
      "definition" : "proof",
      "comment" : "TKB-fält: `../../../proof` (`ED`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.reason-for-attestation",
      "path" : "getehrextract.ehr_extract.folders.attestations.reason_for_attestation",
      "short" : "reason_for_attestation",
      "definition" : "reason_for_attestation",
      "comment" : "TKB-fält: `../../../reason_for_attestation` (`CD`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.time",
      "path" : "getehrextract.ehr_extract.folders.attestations.time",
      "short" : "time",
      "definition" : "time",
      "comment" : "TKB-fält: `../../../time` (`TS`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.target-rc-id",
      "path" : "getehrextract.ehr_extract.folders.attestations.target_rc_id",
      "short" : "target_rc_id",
      "definition" : "target_rc_id",
      "comment" : "TKB-fält: `../../../target_rc_id` (`II`, kardinalitet 1..*).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester",
      "short" : "FUNCTIONAL_ROLE",
      "definition" : "The participation of an entity in the EHR.",
      "comment" : "TKB-fält: `../../../attester` (`FUNCTIONAL_ROLE`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.function",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.function",
      "short" : "function",
      "definition" : "function",
      "comment" : "TKB-fält: `../../../../function` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.healthcare-facility",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.healthcare_facility",
      "short" : "healthcare_facility",
      "definition" : "healthcare_facility",
      "comment" : "TKB-fält: `../../../../healthcare_facility` (`II`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.mode",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.mode",
      "short" : "mode",
      "definition" : "mode",
      "comment" : "TKB-fält: `../../../../mode` (`CS`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.performer",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.performer",
      "short" : "performer",
      "definition" : "performer",
      "comment" : "TKB-fält: `../../../../performer` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.attestations.attester.service-setting",
      "path" : "getehrextract.ehr_extract.folders.attestations.attester.service_setting",
      "short" : "service_setting",
      "definition" : "service_setting",
      "comment" : "TKB-fält: `../../../../service_setting` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.folders.composition-rc-ids",
      "path" : "getehrextract.ehr_extract.folders.composition_rc_ids",
      "short" : "composition_rc_ids",
      "definition" : "composition_rc_ids",
      "comment" : "TKB-fält: `../../composition_rc_ids` (`ST`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract",
      "path" : "getehrextract.ehr_extract.demographic_extract",
      "short" : "IDENTIFIED_ENTITY",
      "definition" : "Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard. Abstrakt typ; instansen anges med xsi:type som en av SOFTWARE_OR_DEVICE, ORGANISATION, PERSON.",
      "comment" : "TKB-fält: `../demographic_extract` (`IDENTIFIED_ENTITY`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.extract-id",
      "path" : "getehrextract.ehr_extract.demographic_extract.extract_id",
      "short" : "extract_id",
      "definition" : "extract_id",
      "comment" : "TKB-fält: `../../extract_id` (`II`, kardinalitet 1..1).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.id",
      "path" : "getehrextract.ehr_extract.demographic_extract.id",
      "short" : "id",
      "definition" : "id",
      "comment" : "TKB-fält: `../../id` (`II`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.ehr-extract.demographic-extract.telecom",
      "path" : "getehrextract.ehr_extract.demographic_extract.telecom",
      "short" : "telecom",
      "definition" : "telecom",
      "comment" : "TKB-fält: `../../telecom` (`TEL`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.continuation-token",
      "path" : "getehrextract.continuation_token",
      "short" : "continuation_token",
      "definition" : "continuation_token",
      "comment" : "TKB-fält: `continuation_token` (`ST`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.response-detail",
      "path" : "getehrextract.response_detail",
      "short" : "ResponseDetailType",
      "definition" : "Fel-, varnings- och/eller informationsmeddelanden.",
      "comment" : "TKB-fält: `response_detail` (`ResponseDetailType`, kardinalitet 0..*).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Base"
      }]
    },
    {
      "id" : "getehrextract.response-detail.code",
      "path" : "getehrextract.response_detail.code",
      "short" : "code",
      "definition" : "code",
      "comment" : "TKB-fält: `../code` (`CD`, kardinalitet 0..1).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "getehrextract.response-detail.text",
      "path" : "getehrextract.response_detail.text",
      "short" : "text",
      "definition" : "text",
      "comment" : "TKB-fält: `../text` (`ST`, kardinalitet 1..1).",
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
      "comment" : "TKB-fält: `../type_code` (`ResponseDetailTypeCodes`, kardinalitet 0..1).\n\n**Modellanteckning:** type_code (XML-attribut) Tillåtna värden: E, W, I.",
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
