# 8 Datatyper - orgmaster: hsa v1.0.0-snapshot

* [**Table of Contents**](toc.md)
* **8 Datatyper**

## 8 Datatyper

# 8 Datatyper

Källa: **Tjänstekontrakt Organisationsinformation (orgmaster:hsa)**, RevB (2012-11-27), [Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx](Tjanstekontrakt_hsa_orgmaster_Beskrivning.docx).

Denna sida finns inte i TKB:n. Den är genererad ur domänschemat [orgmaster_hsa_1.0.xsd](orgmaster_hsa_1.0.xsd) och beskriver de typer som tjänsteschemana använder.

### AddressType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| addressLine | string |   | 1..* |

### AgeSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| from | integer |   | 1..1 |
| to | integer |   | 1..1 |

### CoordinatesType

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| type | string |   | 1..1 |
| x | string |   | 1..1 |
| y | string |   | 1..1 |

### DateSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| fromDate | string |   | 1..1 |
| toDate | string |   | 1..1 |
| comment | string |   | 1..1 |

### GetHsaPersonHsaUserType

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| personalPrescriptionCode | string |   | 0..1 |
| description | string |   | 0..1 |
| paTitleCodes | PaTitleCodesType |   | 1..1 |
| paTitleNames | PaTitleNamesType |   | 1..1 |
| mail | string |   | 0..1 |
| givenName | string |   | 1..1 |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| hsaSwitchboardNumber | TelephoneNumberType |   | 0..1 |
| hsaTelephoneNumbers | hsaTelephoneNumbers |   | 1..1 |
| labeledUri | string |   | 0..1 |
| languageKnowledgeCodes | languageKnowledgeCodes |   | 0..1 |
| mobileNumbers | mobileNumbers |   | 1..1 |
| facsimileTelephoneNumbers | facsimileTelephoneNumbers |   | 1..1 |
| nickName | string |   | 0..1 |
| smsTelephoneNumber | TelephoneNumberType |   | 0..1 |
| specialityCodes | specialityCodes |   | 1..1 |
| specialityNames | specialityNames |   | 1..1 |
| sn | string |   | 1..1 |
| telephoneHours | TelephoneHoursType |   | 1..1 |
| telephoneNumbers | telephoneNumbers |   | 1..1 |
| title | string |   | 0..1 |
| DN | string |   | 1..1 |
| middleName | string |   | 1..1 |
| postalAddress | AddressType |   | 0..1 |
| hsaTitles | HsaTitlesType |   | 1..1 |

### HsaSystemRolesType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaSystemRole | string |   | 0..* |

### HsaTitlesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaTitle | string |   | 0..* |

### HsaUnitFunctionType

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| name | string |   | 1..1 |
| telephoneHours | TelephoneHoursType |   | 1..1 |
| telephoneNumbers | telephoneNumbers |   | 1..1 |

### MiuInformationType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| miuName | string |   | 1..1 |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| miuPurpose | string |   | 1..1 |
| careUnitHsaIdentity | HsaIdentityType |   | 1..1 |
| careUnitName | string |   | 0..1 |
| careGiver | string |   | 1..1 |
| careGiverName | string |   | 1..1 |
| careGiverOrgNo | orgNo |   | 1..1 |
| personalPrescriptionCode | string |   | 0..1 |
| hsaTitles | HsaTitlesType |   | 1..1 |
| miuRights | MiuRightsType |   | 1..1 |
| hsaSystemRoles | HsaSystemRolesType |   | 1..1 |
| hsaIdentityPerson | HsaIdentityType |   | 1..1 |
| paTitleCodes | PaTitleCodesType |   | 1..1 |
| givenName | string |   | 1..1 |
| middleAndSurName | string |   | 1..1 |

### MiuRightsType

Domänschema `GetMiuForPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetMiuForPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| miuRight | string |   | 0..* |

### PaTitleCodesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| paTitleCode | string |   | 0..* |

### PaTitleNamesType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| paTitleName | string |   | 0..* |

### PersonList

Domänschema `GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| personListPerson | PersonListPerson |   | 0..* |

### PersonListPerson

Domänschema `GetPersonsWithCommissionAtHealthCareUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetPersonsWithCommissionAtHealthCareUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| givenName | string |   | 1..1 |
| sn | string |   | 1..1 |
| personalPrescriptionCode | string |   | 0..1 |
| paTitleCodes | PaTitleCodesType |   | 1..1 |
| paTitleNames | PaTitleNamesType |   | 1..1 |
| hsaTitles | HsaTitlesType |   | 1..1 |

### TelephoneHoursType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| telephoneHour | TimeSpanType |   | 0..* |

### TimeSpanType

Domänschema `orgmaster_hsa_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| fromDay | integer |   | 1..1 |
| fromTime | time |   | 1..1 |
| fromTime2 | string |   | 1..1 |
| toDay | integer |   | 1..1 |
| toTime | time |   | 1..1 |
| toTime2 | string |   | 1..1 |
| comment | string |   | 1..1 |

### UnitList

Domänschema `GetHsaUnitListResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| unitListUnit | UnitListUnit |   | 0..* |

### UnitListUnit

Domänschema `GetHsaUnitListResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitListResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaIdentity | HsaIdentityType |   | 1..1 |
| name | string |   | 1..1 |
| parentHsaIdentity | HsaIdentityType |   | 0..1 |

### alternateNames

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| alternateName | string |   | 0..* |

### businessClassificationCodes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| businessClassificationCode | string |   | 0..* |

### businessClassifications

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| businessClassification | string |   | 0..* |

### businessTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| businessType | string |   | 0..* |

### careTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| careType | string |   | 0..* |

### dropInHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| dropInHour | TimeSpanType |   | 0..* |

### facsimileTelephoneNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| facsimileTelephoneNumber | TelephoneNumberType |   | 0..* |

### faxNumbers

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| faxNumber | string |   | 0..* |

### hsaDestinationIndicators

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaDestinationIndicator | string |   | 0..* |

### hsaTelephoneNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| hsaTelephoneNumber | TelephoneNumberType |   | 0..* |

### languageKnowledgeCodes

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| languageKnowledgeCode | string |   | 0..* |

### managements

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| management | string |   | 0..* |

### mobileNumbers

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| mobileNumber | TelephoneNumberType |   | 0..* |

### referralTypes

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| referralType | string |   | 0..* |

### relatedUnits

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| relatedUnit | string |   | 0..* |

### specialityCodes

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| specialityCode | string |   | 0..* |

### specialityNames

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| specialityName | string |   | 0..* |

### surgeryHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| surgeryHour | TimeSpanType |   | 0..* |

### telephoneNumbers (GetHsaPersonResponder_1.0)

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| telephoneNumber | TelephoneNumberType |   | 0..* |

### telephoneNumbers (GetHsaUnitResponder_1.0)

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| telephoneNumber | TelephoneNumberType |   | 0..* |

### textTelephoneNumbers

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| textTelephoneNumber | string |   | 0..* |

### unitFunctions

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| unitFunction | HsaUnitFunctionType |   | 0..* |

### userInformations

Domänschema `GetHsaPersonResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaPersonResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| userInformation | GetHsaPersonHsaUserType |   | 0..* |

### visitingHours

Domänschema `GetHsaUnitResponder_1.0.xsd` (namnrymd `urn:riv:orgmaster:hsa:GetHsaUnitResponder:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| visitingHour | TimeSpanType |   | 0..* |

