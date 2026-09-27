### CVType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### CervixScreeningInformationType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| subjectOfCare | PersonType |  | 1..1 |
| sendingRegion | RegionType |  | 1..1 |
| exclusion | ExclusionType |  | 0..1 |
| followUpGroups | FollowUpGroupType |  | 0..* |
| plannedInvitation | PlannedInvitationType |  | 0..1 |
| specimen | SpecimenType |  | 0..1 |

### ExclusionType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| reason | CVType |  | 1..1 |
| registeredAt | DateType |  | 1..1 |
| originalRegion | RegionType |  | 1..1 |

### FollowUpGroupType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | CVType |  | 1..1 |
| inclusionDate | DateType |  | 1..1 |
| originalRegion | RegionType |  | 1..1 |

### HPVstatusType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| value | CVType |  | 1..1 |

### IIType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### OrganisationType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| name | string |  | 1..1 |

### PersonType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personId | IIType |  | 1..1 |

### PlannedInvitationType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| date | DateType |  | 1..1 |
| reason | string |  | 0..1 |

### RegionType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| region | OrganisationType |  | 1..1 |
| careGiver | OrganisationType |  | 0..1 |
| careUnit | OrganisationType |  | 0..1 |

### SpecimenType

Domänschema `clinicalprocess_logistics_cervixscreening_1.0.xsd` (namnrymd `urn:riv:clinicalprocess:logistics:cervixscreening:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| specimenDate | DateType |  | 1..1 |
| originalRegion | RegionType |  | 1..1 |
| HPVstatusList | HPVstatusType |  | 0..* |
