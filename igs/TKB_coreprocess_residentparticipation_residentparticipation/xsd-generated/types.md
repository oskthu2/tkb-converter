### AccessControlHeaderType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accountableHealthcareProviderId | IIType |  | 1..1 |
| accountableCareUnitId | IIType |  | 0..1 |
| patientId | IIType |  | 1..1 |
| careProcessId | IIType |  | 0..1 |
| blockComparisonTime | TimeStampType |  | 1..1 |

### AddressType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | CVType |  | 0..1 |
| line | string |  | 0..* |
| city | string |  | 0..1 |
| postalCode | string |  | 0..1 |
| period | HoursOfServiceType |  | 0..* |

### CVType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 0..1 |
| codeSystem | string |  | 0..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### CareTeamType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| name | string |  | 1..1 |
| internalNotes | string |  | 0..1 |
| externalNotes | string |  | 0..1 |
| contact | ContactType |  | 0..* |

### ContactPointSystemType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| system | CVType |  | 0..1 |
| value | string |  | 1..1 |
| period | HoursOfServiceType |  | 0..* |

### ContactType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| telecom | ContactPointSystemType |  | 0..* |
| address | AddressType |  | 0..1 |

### DatePeriodType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType |  | 1..1 |
| end | DateType |  | 0..1 |

### HeaderType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| accessControlHeader | AccessControlHeaderType |  | 1..1 |
| sourceSystemId | IIType |  | 1..1 |

### HoursOfServiceType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| datePeriod | DatePeriodType |  | 0..1 |
| weekDay | WeekDaysEnum |  | 0..7 |
| month | MonthsEnum |  | 0..* |
| time | TimePeriodType | Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss | 0..1 |

### IIType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### OrganizationType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | IIType |  | 1..1 |
| name | string |  | 0..1 |
| contact | ContactType |  | 0..* |

### PractitionerRoleType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careManagerHeader | HeaderType |  | 1..1 |
| code | CVType |  | 1..1 |
| practitioner | PractitionerType |  | 1..1 |
| careTeam | CareTeamType |  | 0..1 |
| period | DatePeriodType |  | 1..1 |
| internalNotes | string |  | 0..1 |
| externalNotes | string |  | 0..1 |
| managingCareGiver | OrganizationType |  | 1..1 |
| managingCareUnit | OrganizationType |  | 0..1 |
| careProvidingCareUnit | OrganizationType |  | 0..1 |
| contact | ContactType |  | 0..* |

### PractitionerType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaId | IIType |  | 1..1 |
| name | string |  | 0..1 |
| qualification | CVType |  | 0..1 |

### TimePeriodType

Domänschema `coreprocess_residentparticipation_residentparticipation_1.0.xsd` (namnrymd `urn:riv:coreprocess:residentparticipation:residentparticipation:1`).

Används för att specificera ett tidsintervall med hjälp av start- och sluttid. start: Starttid på formatet HHmmss end: Sluttid på formatet HHmmss

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | TimeType |  | 0..1 |
| end | TimeType |  | 0..1 |
