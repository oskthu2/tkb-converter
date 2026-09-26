# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning Vård- och omsorgsutbud*, version 3.0 (2023-04-25), [TKB_supportprocess_serviceprovisioning_healthcareoffering.docx](TKB_supportprocess_serviceprovisioning_healthcareoffering.docx).

*SAKNAS I KÄLLDOKUMENT*: TKB:n har inget kapitel om gemensamma informationskomponenter. Klasserna beskrivs i [avsnitt 5](5-tjanstedomanens-meddelandemodeller.html). Kodverken och typerna nedan är hämtade ur domänschemana.

### 6.1 Kodverk

Uppräkningarna i domänschemat är modellerade som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| Status för vård- och omsorgstjänst (CareServiceStatus) (`CareServiceStatusEnum`) | INACTIVE, ACTIVE, DEPRECATED | [healthcareoffering-careservicestatus-cs](CodeSystem-healthcareoffering-careservicestatus-cs.html) | [healthcareoffering-careservicestatus-vs](ValueSet-healthcareoffering-careservicestatus-vs.html) |
| RIV-TA-version (RIVTAVersion) (`RIVTAVersionEnum`) | 2.1 | [healthcareoffering-rivtaversion-cs](CodeSystem-healthcareoffering-rivtaversion-cs.html) | [healthcareoffering-rivtaversion-vs](ValueSet-healthcareoffering-rivtaversion-vs.html) |
| Typ av plats (TypeOfPlace) (`TypeOfPlaceEnum`) | ALL, PHYSICAL, VIRTUAL | [healthcareoffering-typeofplace-cs](CodeSystem-healthcareoffering-typeofplace-cs.html) | [healthcareoffering-typeofplace-vs](ValueSet-healthcareoffering-typeofplace-vs.html) |

### 6.2 Typer i domänschemat (XSD)

Genererat ur [supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd) och [supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd](supportprocess_serviceprovisioning_healthcareoffering_3.0_enums.xsd).

#### CVType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

#### CareServiceType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careServiceId | IIType |  | 0..1 |
| typeOfCareService | CVType |  | 1..1 |
| typeOfCareServiceDescription | DescriptionType |  | 0..* |
| validity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 1..1 |
| careServiceStatus | CareServiceStatusEnum |  | 1..1 |
| careOption | boolean |  | 1..1 |
| referralRequired | boolean |  | 1..1 |
| description | DescriptionType |  | 0..* |
| indicator | IndicatorType |  | 0..* |
| requestTemplate | RequestTemplateType |  | 0..1 |
| providingOrganization | ProvidingOrganizationType |  | 1..1 |
| performingOrganization | PerformingOrganizationType |  | 1..1 |
| patientFee | MOType |  | 0..1 |
| targetGroup | TargetGroupType |  | 0..* |
| location | LocationType |  | 1..* |
| contactInformation | ContactInformationType |  | 0..* |
| cooperation | CooperationType |  | 0..* |
| resource | ResourceType |  | 0..* |
| interferenceInformation | InterferenceInformationType |  | 0..* |

#### ContactInformationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| ranking | int |  | 0..1 |
| forRole | CVType |  | 0..* |
| purpose | string |  | 0..1 |
| address | string |  | 0..1 |
| availableTime | CalendarType |  | 0..* |
| telecom | TelecomType |  | 0..1 |
| description | DescriptionType |  | 0..* |

#### CooperationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfCooperation | string |  | 1..1 |
| validity | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 0..1 |
| referenceToCareServiceId | IIType |  | 1..1 |
| description | DescriptionType |  | 0..* |

#### DatePeriodType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | DateType |  | 0..1 |
| end | DateType |  | 0..1 |

#### DescriptionType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| text | string |  | 1..1 |
| language | CVType |  | 0..1 |
| role | CVType |  | 0..* |

#### GeoLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| north | long |  | 1..1 |
| east | long |  | 1..1 |

#### GeographicalLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| county | CVType |  | 0..1 |
| municipality | CVType |  | 0..1 |
| otherLocation | OtherLocationType |  | 0..1 |

#### IIType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

#### IndicatorType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| indicatorId | IIType |  | 1..1 |
| logicalAddress | string |  | 1..1 |

#### InteractionType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| logicalAddress | string |  | 1..1 |
| name | anyURI |  | 1..1 |
| majorVersion | int |  | 1..1 |
| minorVersion | int |  | 0..1 |
| rivtaVersion | RIVTAVersionEnum |  | 1..1 |

#### InterferenceInformationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| datePeriod | DatePeriodType | Används för att specificera ett datumintervall med hjälp av start- och slutdatum. start: Startdatum på formatet ÅÅÅÅMMDD end: Slutdatum på formatet ÅÅÅÅMMDD | 1..1 |
| typeOfInterference | CVType |  | 0..1 |
| description | DescriptionType |  | 1..* |

#### LocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| geographicalLocation | GeographicalLocationType |  | 0..1 |
| physicalLocation | PhysicalLocationType |  | 0..1 |
| virtualLocation | VirtualLocationType |  | 0..1 |
| description | DescriptionType |  | 0..* |

#### MOType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| value | decimal |  | 1..1 |
| currency | string |  | 1..1 |

#### OfferingCatalogueType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| providingOrganization | ProvidingOrganizationType |  | 1..* |
| interaction | InteractionType |  | 1..1 |

#### OtherLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| polygon | GeoLocationType |  | 3..* |
| name | string |  | 0..1 |

#### PerformingOrganizationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..* |
| name | string |  | 0..* |
| responsibleOrganization | ResponsibleOrganizationType |  | 1..1 |
| availableTime | CalendarType |  | 0..* |
| typeOfBusiness | CVType |  | 0..* |
| description | DescriptionType |  | 0..* |

#### PhysicalLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| locationAddress | string |  | 0..1 |
| geographicalCoordinates | GeoLocationType |  | 0..1 |

#### PositiveIntPeriodType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| start | int |  | 0..1 |
| end | int |  | 0..1 |

#### ProvidingOrganizationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| name | string |  | 1..1 |
| management | CVType |  | 1..1 |
| publicProvider | boolean |  | 1..1 |
| description | DescriptionType |  | 0..* |

#### RequestTemplateType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| address | anyURI |  | 1..1 |
| mandatory | boolean |  | 1..1 |

#### ResourceType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfResource | CVType |  | 1..1 |
| resourceAttribute | string |  | 0..1 |
| availableTime | CalendarType |  | 0..* |
| description | DescriptionType |  | 0..* |

#### ResponsibleOrganizationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | IIType |  | 1..1 |
| name | string |  | 1..1 |
| description | DescriptionType |  | 0..* |

#### SearchGeographicalLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| geographicalCoordinates | GeoLocationType |  | 1..1 |
| radius | int |  | 1..1 |

#### SearchLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| geographicalLocation | SearchGeographicalLocationType |  | 0..1 |
| county | CVType |  | 0..* |
| municipality | CVType |  | 0..* |

#### SearchProvidingOrganizationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| providingOrganizationId | IIType |  | 0..* |
| management | CVType |  | 0..* |
| publicProvider | boolean |  | 0..1 |

#### TargetGroupAttributeType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfPersonalAttribute | CVType |  | 1..1 |
| attributeValue | string |  | 1..1 |

#### TargetGroupType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| age | PositiveIntPeriodType |  | 0..1 |
| gender | CVType |  | 0..1 |
| targetGroupAttribute | TargetGroupAttributeType |  | 0..* |

#### TelecomType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfTelecom | CVType |  | 1..1 |
| contactPoint | string |  | 1..1 |

#### TypeOfPlaceType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| typeOfPlaceEnum | TypeOfPlaceEnum |  | 1..1 |

#### VirtualLocationType

Domänschema `supportprocess_serviceprovisioning_healthcareoffering_3.0.xsd` (namnrymd `urn:riv:supportprocess:serviceprovisioning:healthcareoffering:3`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | anyURI |  | 1..1 |
