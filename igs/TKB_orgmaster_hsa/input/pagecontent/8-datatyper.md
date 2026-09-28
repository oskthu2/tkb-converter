# 8 Datatyper

Källa: *Tjänstekontrakt Organisationsinformation (orgmaster:hsa)*, RevB (2012-11-27), [Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx](Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx).

Denna sida finns inte i TKB:n. Den är genererad ur domänschemat [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) och beskriver de typer som tjänsteschemana använder.

### AddressType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| addressLine | string |  | 1..* |

### AgeSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| from | integer |  | 1..1 |
| to | integer |  | 1..1 |

### CoordinatesType

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| type | string |  | 1..1 |
| x | string |  | 1..1 |
| y | string |  | 1..1 |

### DateSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromDate | string |  | 1..1 |
| toDate | string |  | 1..1 |
| comment | string |  | 1..1 |

### GetHsaPersonHsaUserType

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personalPrescriptionCode | string |  | 0..1 |
| description | string |  | 0..1 |
| paTitleCodes | PaTitleCodesType |  | 1..1 |
| paTitleNames | PaTitleNamesType |  | 1..1 |
| mail | string |  | 0..1 |
| givenName | string |  | 1..1 |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| hsaSwitchboardNumber | TelephoneNumberType |  | 0..1 |
| hsaTelephoneNumbers | hsaTelephoneNumbers |  | 1..1 |
| labeledUri | string |  | 0..1 |
| languageKnowledgeCodes | languageKnowledgeCodes |  | 0..1 |
| mobileNumbers | mobileNumbers |  | 1..1 |
| facsimileTelephoneNumbers | facsimileTelephoneNumbers |  | 1..1 |
| nickName | string |  | 0..1 |
| smsTelephoneNumber | TelephoneNumberType |  | 0..1 |
| specialityCodes | specialityCodes |  | 1..1 |
| specialityNames | specialityNames |  | 1..1 |
| sn | string |  | 1..1 |
| telephoneHours | TelephoneHoursType |  | 1..1 |
| telephoneNumbers | telephoneNumbers |  | 1..1 |
| title | string |  | 0..1 |
| DN | string |  | 1..1 |
| middleName | string |  | 1..1 |
| postalAddress | AddressType |  | 0..1 |
| hsaTitles | HsaTitlesType |  | 1..1 |

### HsaSystemRolesType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaSystemRole | string |  | 0..* |

### HsaTitlesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaTitle | string |  | 0..* |

### HsaUnitFunctionType

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | string |  | 1..1 |
| telephoneHours | TelephoneHoursType |  | 1..1 |
| telephoneNumbers | telephoneNumbers |  | 1..1 |

### MiuInformationType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| miuName | string |  | 1..1 |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| miuPurpose | string |  | 1..1 |
| careUnitHsaIdentity | HsaIdentityType |  | 1..1 |
| careUnitName | string |  | 0..1 |
| careGiver | string |  | 1..1 |
| careGiverName | string |  | 1..1 |
| careGiverOrgNo | orgNo |  | 1..1 |
| personalPrescriptionCode | string |  | 0..1 |
| hsaTitles | HsaTitlesType |  | 1..1 |
| miuRights | MiuRightsType |  | 1..1 |
| hsaSystemRoles | HsaSystemRolesType |  | 1..1 |
| hsaIdentityPerson | HsaIdentityType |  | 1..1 |
| paTitleCodes | PaTitleCodesType |  | 1..1 |
| givenName | string |  | 1..1 |
| middleAndSurName | string |  | 1..1 |

### MiuRightsType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| miuRight | string |  | 0..* |

### PaTitleCodesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| paTitleCode | string |  | 0..* |

### PaTitleNamesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| paTitleName | string |  | 0..* |

### PersonList

Domänschema `GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| personListPerson | PersonListPerson |  | 0..* |

### PersonListPerson

Domänschema `GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| givenName | string |  | 1..1 |
| sn | string |  | 1..1 |
| personalPrescriptionCode | string |  | 0..1 |
| paTitleCodes | PaTitleCodesType |  | 1..1 |
| paTitleNames | PaTitleNamesType |  | 1..1 |
| hsaTitles | HsaTitlesType |  | 1..1 |

### TelephoneHoursType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| telephoneHour | TimeSpanType |  | 0..* |

### TimeSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromDay | integer |  | 1..1 |
| fromTime | time |  | 1..1 |
| fromTime2 | string |  | 1..1 |
| toDay | integer |  | 1..1 |
| toTime | time |  | 1..1 |
| toTime2 | string |  | 1..1 |
| comment | string |  | 1..1 |

### UnitList

Domänschema `GetHsaUnitListResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| unitListUnit | UnitListUnit |  | 0..* |

### UnitListUnit

Domänschema `GetHsaUnitListResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaIdentity | HsaIdentityType |  | 1..1 |
| name | string |  | 1..1 |
| parentHsaIdentity | HsaIdentityType |  | 0..1 |

### alternateNames

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| alternateName | string |  | 0..* |

### businessClassificationCodes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| businessClassificationCode | string |  | 0..* |

### businessClassifications

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| businessClassification | string |  | 0..* |

### businessTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| businessType | string |  | 0..* |

### careTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| careType | string |  | 0..* |

### dropInHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| dropInHour | TimeSpanType |  | 0..* |

### facsimileTelephoneNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| facsimileTelephoneNumber | TelephoneNumberType |  | 0..* |

### faxNumbers

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| faxNumber | string |  | 0..* |

### hsaDestinationIndicators

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaDestinationIndicator | string |  | 0..* |

### hsaTelephoneNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| hsaTelephoneNumber | TelephoneNumberType |  | 0..* |

### languageKnowledgeCodes

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| languageKnowledgeCode | string |  | 0..* |

### managements

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| management | string |  | 0..* |

### mobileNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| mobileNumber | TelephoneNumberType |  | 0..* |

### referralTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| referralType | string |  | 0..* |

### relatedUnits

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| relatedUnit | string |  | 0..* |

### specialityCodes

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| specialityCode | string |  | 0..* |

### specialityNames

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| specialityName | string |  | 0..* |

### surgeryHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| surgeryHour | TimeSpanType |  | 0..* |

### telephoneNumbers (GetHsaPersonResponder_1.0)

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| telephoneNumber | TelephoneNumberType |  | 0..* |

### telephoneNumbers (GetHsaUnitResponder_1.0)

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| telephoneNumber | TelephoneNumberType |  | 0..* |

### textTelephoneNumbers

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| textTelephoneNumber | string |  | 0..* |

### unitFunctions

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| unitFunction | HsaUnitFunctionType |  | 0..* |

### userInformations

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| userInformation | GetHsaPersonHsaUserType |  | 0..* |

### visitingHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| visitingHour | TimeSpanType |  | 0..* |
