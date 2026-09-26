### ATTESTATION_INFO

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| attested_view | ED |  | 0..1 |
| proof | ED |  | 0..1 |
| reason_for_attestation | CD |  | 1..1 |
| time | TS |  | 1..1 |
| target_rc_id | II |  | 1..* |
| attester | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 1..1 |

### AUDIT_INFO

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| committer | II |  | 1..1 |
| ehr_system | II |  | 1..1 |
| previous_version | II |  | 0..1 |
| reason_for_revision | CD |  | 0..1 |
| time_committed | TS |  | 1..1 |
| version_set_id | II |  | 0..1 |
| version_status | CS |  | 0..1 |

### CLUSTER

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Represents hierarchical organisation of data values.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| emphasis | CD |  | 0..1 |
| item_category | CS |  | 0..1 |
| obs_time | IVL_TS |  | 0..1 |
| structure_type | CS |  | 1..1 |
| parts | ITEM | Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. Abstrakt typ; instansen anges med xsi:type som en av CLUSTER, ELEMENT. | 0..* |

### COMPOSITION

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| contribution_id | II |  | 0..1 |
| session_time | IVL_TS |  | 0..1 |
| territory | CS |  | 0..1 |
| attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| committal | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 1..1 |
| composer | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| content | CONTENT | Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY. | 0..* |

### CONTENT

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Superclass of Section and Entry that enables the former to include instances of itself.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |

### DeletionType

Domänschema `DeleteEhrExtractResponder_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| rc_id | II |  | 1..1 |
| meaning | CD |  | 1..1 |

### EHR_EXTRACT

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

The root node of an EHR Extract.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| authorising_party | II |  | 0..1 |
| ehr_id | II |  | 1..1 |
| ehr_system | II |  | 1..1 |
| subject_of_care | II |  | 1..1 |
| time_created | TS |  | 1..1 |
| all_compositions | COMPOSITION | Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| criteria | EXTRACT_CRITERIA | Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| folders | FOLDER | Organises and groups Compositions within an EHR Extract. | 0..* |
| demographic_extract | IDENTIFIED_ENTITY | Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard. Abstrakt typ; instansen anges med xsi:type som en av SOFTWARE_OR_DEVICE, ORGANISATION, PERSON. | 0..* |

### ELEMENT

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

The Data Value holder in the aggregation structure.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| emphasis | CD |  | 0..1 |
| item_category | CS |  | 0..1 |
| obs_time | IVL_TS |  | 0..1 |
| value | ANY |  (ISO 21090 ANY, polymorft värde, modellerat som string.) | 0..1 |

### ENTRY

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Represents the information acquired for a single clinical activity or recording. The Entry may be nilled if it corrects a previous erroneous version.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| act_id | ST |  | 0..1 |
| act_status | CS |  | 0..1 |
| subject_of_information_category | CS |  | 0..1 |
| uncertainty_expressed | BL |  | 1..1 |
| items | ITEM | Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. Abstrakt typ; instansen anges med xsi:type som en av CLUSTER, ELEMENT. | 0..* |
| info_provider | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| subject_of_information | RELATED_PARTY | Identifies the relationship of a person to the subject of care. Specifically used in Entry.subject_of_information. | 0..1 |

### EXTRACT_CRITERIA

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| all_versions | BL |  | 0..1 |
| archetype_ids | II |  | 0..* |
| max_sensitivity | INT |  | 0..1 |
| multimedia_included | BL |  | 0..1 |
| other_constraints | ST |  | 0..1 |
| time_period | IVL_TS |  | 0..1 |

### FOLDER

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Organises and groups Compositions within an EHR Extract.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| sub_folders | FOLDER |  (Rekursiv typ, ej utvecklad.) | 0..* |
| attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| composition_rc_ids | ST |  | 0..* |

### FUNCTIONAL_ROLE

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

The participation of an entity in the EHR.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| function | CD |  | 0..1 |
| healthcare_facility | II |  | 0..1 |
| mode | CS |  | 0..1 |
| performer | II |  | 1..1 |
| service_setting | CD |  | 0..1 |

### IDENTIFIED_ENTITY

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extract_id | II |  | 1..1 |
| id | II |  | 0..* |
| telecom | TEL |  | 0..* |

### ITEM

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| emphasis | CD |  | 0..1 |
| item_category | CS |  | 0..1 |
| obs_time | IVL_TS |  | 0..1 |

### LINK

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| follow_link | BL |  | 1..1 |
| nature | CS |  | 1..1 |
| role | CD |  | 0..1 |
| target_type | CD |  | 0..1 |
| target_id | II |  | 1..* |

### ORGANISATION

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

An organisation corresponding to GPIC 2.008 (2008 in the printed standard).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extract_id | II |  | 1..1 |
| id | II |  | 0..* |
| telecom | TEL |  | 0..* |
| code | CD |  | 1..1 |
| desc | ST |  | 1..1 |
| name | ST |  | 1..1 |
| addr | AD |  | 0..* |

### PERSON

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

General demographic information about a person corresponding to GPIC 2.006.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extract_id | II |  | 1..1 |
| id | II |  | 0..* |
| telecom | TEL |  | 0..* |
| name | EN |  | 0..* |
| addr | AD |  | 0..* |

### ParameterType (DeleteEhrExtractInitiator_1.0)

Domänschema `DeleteEhrExtractInitiator_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| name | ST |  | 1..1 |
| value | ST |  | 1..1 |

### ParameterType (DeleteEhrExtractResponder_1.0)

Domänschema `DeleteEhrExtractResponder_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| name | ST |  | 1..1 |
| value | ST |  | 1..1 |

### ParameterType (GetEhrExtractResponder_1.0)

Domänschema `GetEhrExtractResponder_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:GetEhrExtractResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| name | ST |  | 1..1 |
| value | ST |  | 1..1 |

### ParameterType (ReceiveEhrExtractInitiator_1.0)

Domänschema `ReceiveEhrExtractInitiator_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| name | ST |  | 1..1 |
| value | ST |  | 1..1 |

### ParameterType (ReceiveEhrExtractResponder_1.0)

Domänschema `ReceiveEhrExtractResponder_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:ReceiveEhrExtractResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| name | ST |  | 1..1 |
| value | ST |  | 1..1 |

### RELATED_PARTY

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Identifies the relationship of a person to the subject of care. Specifically used in Entry.subject_of_information.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| party | II |  | 0..1 |
| relationship | ED |  | 1..1 |

### ResponseDetailType (DeleteEhrExtractInitiator_1.0)

Domänschema `DeleteEhrExtractInitiator_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:DeleteEhrExtractInitiator:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| text | ST |  | 1..1 |
| type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |

### ResponseDetailType (GetEhrExtractResponder_1.0)

Domänschema `GetEhrExtractResponder_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:GetEhrExtractResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| text | ST |  | 1..1 |
| type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |

### ResponseDetailType (ReceiveEhrExtractInitiator_1.0)

Domänschema `ReceiveEhrExtractInitiator_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:ReceiveEhrExtractInitiator:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | CD |  | 0..1 |
| text | ST |  | 1..1 |
| type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |

### SECTION

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

Represents a heading in the record under which further Entry instances might be found.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| archetype_id | ST |  | 0..1 |
| meaning | CD |  | 0..1 |
| name | ST |  | 1..1 |
| orig_parent_ref | II |  | 0..1 |
| policy_ids | II |  | 0..* |
| rc_id | II |  | 1..1 |
| sensitivity | INT |  | 0..1 |
| synthesised | BL |  | 1..1 |
| links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| members | CONTENT | Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY. | 0..* |

### SOFTWARE_OR_DEVICE

Domänschema `ehr_patientsummary_1.0.xsd` (namnrymd `urn:riv:ehr:patientsummary:1`).

A piece of equipment or a device.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| extract_id | II |  | 1..1 |
| id | II |  | 0..* |
| telecom | TEL |  | 0..* |
| code | CD |  | 1..1 |
| desc | ST |  | 1..1 |
| manufacturerModelName | ST |  | 1..1 |
| version | ST |  | 0..1 |
| owningOrganisation_id | ST |  | 0..1 |
