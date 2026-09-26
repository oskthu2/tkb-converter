### ActorType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| actorId | IIType |  | 1..1 |
| actorType | SnomedCtType |  | 1..1 |

### AppointmentPerHealthcareFacilityType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| appointmentId | uuidType |  | 1..1 |
| healthcareFacilityId | HSAIdType |  | 1..1 |

### AppointmentType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| appointmentId | uuidType |  | 1..1 |
| relatedAppointmentId | uuidType |  | 0..* |
| timeslot | TimeslotType |  | 1..1 |
| personId | PersonIdType |  | 1..1 |
| information | InformationType |  | 0..* |
| status | AppointmentStatusEnum |  | 1..1 |
| newAppointmentReasonText | string |  | 0..1 |
| newAppointmentReasonCode | CVType |  | 0..1 |
| updateAppointmentReasonText | string |  | 0..1 |
| updateAppointmentReasonCode | CVType |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
| reference | ReferenceType |  | 0..* |

### AvailableDateType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| date | DT |  | 1..1 |
| noOfTimeslots | int |  | 1..1 |
| timeType | TimeTypeType |  | 1..1 |
| practitioner | PractitionerType |  | 0..1 |
| resource | ResourceType |  | 0..1 |

### CVType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### HSAIdType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 1..1 |

### HealthcareServiceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | SnomedCtType |  | 1..1 |
| information | InformationType |  | 0..* |
| conditionsToConfirm | InformationType |  | 0..* |

### IIType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### InformationType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| header | string |  | 1..1 |
| description | string |  | 0..1 |
| link | anyURI |  | 0..1 |

### OrgUnitType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| HSAId | HSAIdType |  | 1..1 |
| name | string |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
| information | InformationType |  | 0..* |
| conditionToConfirm | InformationType |  | 0..* |

### PersonIdType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string | Tillåtna värden: 1.2.752.129.2.1.3.1, 1.2.752.129.2.1.3.3. | 1..1 |
| extension | string |  | 1..1 |

### PractitionerType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| HSAId | HSAIdType |  | 1..1 |
| firstName | string |  | 1..1 |
| lastName | string |  | 1..1 |
| title | string |  | 0..1 |

### ReferenceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | string |  | 1..1 |
| description | string |  | 0..1 |
| link | anyURI |  | 0..1 |

### ResourceType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfResource | CVType |  | 0..1 |
| resourceAttribute | CVType |  | 0..1 |
| description | string |  | 0..1 |

### SnomedCtType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string | Tillåtna värden: 1.2.752.116.2.1.1. | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### TimeTypeRulesType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | ProcessEnum |  | 1..1 |
| reasonTextRequired | ReasonRequiredEnum |  | 1..1 |
| reasonCodeRequired | ReasonRequiredEnum |  | 1..1 |
| reasonCodes | CVType |  | 0..* |
| information | InformationType |  | 0..* |
| conditionToConfirm | InformationType |  | 0..* |

### TimeTypeType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| hidden | boolean |  | 0..1 |
| careContactCode | CVType |  | 0..1 |
| healthcareService | HealthcareServiceType |  | 0..* |
| healthcareTeam | boolean |  | 0..1 |
| patientGroup | boolean |  | 0..1 |
| cancelAppointmentAllowed | boolean |  | 1..1 |
| updateAppointmentAllowed | boolean |  | 1..1 |
| appointmentRule | TimeTypeRulesType |  | 0..3 |

### TimeslotType

Domänschema `supportprocess_logistics_scheduling_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:scheduling:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| timeslotId | uuidType |  | 1..1 |
| timeType | TimeTypeType |  | 1..1 |
| startTime | TS |  | 1..1 |
| endTime | TS |  | 0..1 |
| timeLength | double |  | 0..1 |
| healthcareFacilityHSAId | HSAIdType |  | 1..1 |
| practitioner | PractitionerType |  | 0..* |
| resource | ResourceType |  | 0..* |
| withinCareGuarantee | boolean |  | 0..1 |
| alternativeLocation | string |  | 0..1 |
