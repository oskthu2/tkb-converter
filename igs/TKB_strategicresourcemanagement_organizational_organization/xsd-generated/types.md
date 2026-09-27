### AddressType

Domänschema `strategicresourcemanagement_organizational_organization_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| addressLine | string |  | 1..* |

### AgeSpanType

Domänschema `strategicresourcemanagement_organizational_organization_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromAge | string |  | 1..1 |
| toAge | string |  | 1..1 |
| comment | string |  | 0..1 |

### BusinessClassificationType

Domänschema `GetUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| businessClassificationName | string |  | 0..1 |
| businessClassificationCode | string |  | 0..1 |

### DateSpanType

Domänschema `strategicresourcemanagement_organizational_organization_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromDate | string |  | 1..1 |
| toDate | string |  | 1..1 |
| temporaryInformation | string |  | 1..1 |

### GeoCoordRt90Type

Domänschema `GetUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| xCoordinate | string |  | 1..1 |
| yCoordinate | string |  | 1..1 |

### GeoCoordSWEREF99Type

Domänschema `GetUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| nCoordinate | string |  | 1..1 |
| eCoordinate | string |  | 1..1 |

### HealthCareProviderType

Domänschema `GetHealthCareUnitMembersResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareProviderName | string |  | 1..1 |
| healthCareProviderHsaId | string |  | 1..1 |
| healthCareProviderOrgNo | string |  | 1..1 |
| healthCareProviderStartDate | dateTime |  | 0..1 |
| healthCareProviderEndDate | dateTime |  | 0..1 |
| healthCareProviderPrescriptionCode | string |  | 0..* |
| telephoneNumber | TelephoneNumberType |  | 0..* |
| postalAddress | AddressType |  | 0..1 |
| postalCode | string |  | 0..1 |
| feignedHealthCareProvider | boolean |  | 0..1 |
| archivedHealthCareProvider | boolean |  | 0..1 |

### HealthCareUnitIncludingManagerType

Domänschema `GetHealthCareUnitIncludingManagerResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitIncludingManagerResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareUnitMemberHsaId | string |  | 0..1 |
| healthCareUnitMemberName | string |  | 0..1 |
| healthCareUnitMemberStartDate | dateTime |  | 0..1 |
| healthCareUnitMemberEndDate | dateTime |  | 0..1 |
| healthCareUnitHsaId | string |  | 1..1 |
| unitIsHealthCareUnit | boolean |  | 0..1 |
| healthCareUnitName | string |  | 1..1 |
| healthCareUnitManagerHsaId | string |  | 0..1 |
| healthCareUnitStartDate | dateTime |  | 0..1 |
| healthCareUnitEndDate | dateTime |  | 0..1 |
| healthCareProviderHsaId | string |  | 1..1 |
| healthCareProviderName | string |  | 1..1 |
| healthCareProviderOrgNo | string |  | 1..1 |
| healthCareProviderStartDate | dateTime |  | 0..1 |
| healthCareProviderEndDate | dateTime |  | 0..1 |
| feignedHealthCareUnitMember | boolean |  | 0..1 |
| feignedHealthCareUnit | boolean |  | 0..1 |
| feignedHealthCareProvider | boolean |  | 0..1 |
| feignedHealthCareUnitManager | boolean |  | 0..1 |
| archivedHealthCareUnitMember | boolean |  | 0..1 |
| archivedHealthCareUnit | boolean |  | 0..1 |
| archivedHealthCareProvider | boolean |  | 0..1 |

### HealthCareUnitListType

Domänschema `GetHealthCareUnitListResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareProviderHsaId | string |  | 1..1 |
| healthCareProviderName | string |  | 1..1 |
| healthCareProviderOrgNo | string |  | 1..1 |
| healthCareProviderStartDate | dateTime |  | 0..1 |
| healthCareProviderEndDate | dateTime |  | 0..1 |
| healthCareUnit | HealthCareUnitType |  | 0..* |
| feignedHealthCareProvider | boolean |  | 0..1 |
| archivedHealthCareProvider | boolean |  | 0..1 |

### HealthCareUnitMemberType

Domänschema `GetHealthCareUnitMembersResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareUnitMemberName | string |  | 1..1 |
| healthCareUnitMemberHsaId | string |  | 1..1 |
| healthCareUnitMemberStartDate | dateTime |  | 0..1 |
| healthCareUnitMemberEndDate | dateTime |  | 0..1 |
| healthCareUnitMemberPrescriptionCode | string |  | 0..* |
| healthCareUnitMemberTelephoneNumber | TelephoneNumberType |  | 0..* |
| healthCareUnitMemberpostalAddress | AddressType |  | 0..1 |
| healthCareUnitMemberpostalCode | string |  | 0..1 |
| feignedHealthCareUnitMember | boolean |  | 0..1 |
| archivedHealthCareUnitMember | boolean |  | 0..1 |

### HealthCareUnitMembersType

Domänschema `GetHealthCareUnitMembersResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitMembersResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareUnitName | string |  | 1..1 |
| healthCareUnitHsaId | string |  | 1..1 |
| healthCareUnitStartDate | dateTime |  | 0..1 |
| healthCareUnitEndDate | dateTime |  | 0..1 |
| healthCareUnitPrescriptionCode | string |  | 0..* |
| telephoneNumber | TelephoneNumberType |  | 0..* |
| postalAddress | AddressType |  | 0..1 |
| postalCode | string |  | 0..1 |
| feignedHealthCareUnit | boolean |  | 0..1 |
| archivedHealthCareUnit | boolean |  | 0..1 |
| healthCareProvider | HealthCareProviderType |  | 1..1 |
| healthCareUnitMember | HealthCareUnitMemberType |  | 0..* |

### HealthCareUnitType (GetHealthCareUnitListResponder_2.0)

Domänschema `GetHealthCareUnitListResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitListResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| healthCareUnitHsaId | string |  | 1..1 |
| healthCareUnitName | string |  | 1..1 |
| healthCareUnitStartDate | dateTime |  | 0..1 |
| healthCareUnitEndDate | dateTime |  | 0..1 |
| feignedHealthCareUnit | boolean |  | 0..1 |
| archivedHealthCareUnit | boolean |  | 0..1 |

### HealthCareUnitType (GetHealthCareUnitResponder_2.0)

Domänschema `GetHealthCareUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetHealthCareUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| unitIsHealthCareUnit | boolean |  | 0..1 |
| healthCareUnitMemberHsaId | string |  | 0..1 |
| healthCareUnitMemberName | string |  | 0..1 |
| healthCareUnitMemberStartDate | dateTime |  | 0..1 |
| healthCareUnitMemberEndDate | dateTime |  | 0..1 |
| healthCareUnitHsaId | string |  | 1..1 |
| healthCareUnitName | string |  | 1..1 |
| healthCareUnitStartDate | dateTime |  | 0..1 |
| healthCareUnitEndDate | dateTime |  | 0..1 |
| healthCareProviderHsaId | string |  | 1..1 |
| healthCareProviderName | string |  | 1..1 |
| healthCareProviderOrgNo | string |  | 1..1 |
| healthCareProviderStartDate | dateTime |  | 0..1 |
| healthCareProviderEndDate | dateTime |  | 0..1 |
| feignedHealthCareUnitMember | boolean |  | 0..1 |
| feignedHealthCareUnit | boolean |  | 0..1 |
| feignedHealthCareProvider | boolean |  | 0..1 |
| archivedHealthCareUnitMember | boolean |  | 0..1 |
| archivedHealthCareUnit | boolean |  | 0..1 |
| archivedHealthCareProvider | boolean |  | 0..1 |

### TimeSpanType

Domänschema `strategicresourcemanagement_organizational_organization_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| fromDay | string |  | 1..1 |
| fromTime | time |  | 1..1 |
| toDay | string |  | 1..1 |
| toTime | time |  | 1..1 |
| comment | string |  | 0..1 |

### UnitFunctionType

Domänschema `GetUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| name | string |  | 1..1 |
| telephoneHour | TimeSpanType |  | 0..* |
| telephoneNumber | TelephoneNumberType |  | 0..* |

### unitType

Domänschema `GetUnitResponder_2.0.xsd` (namnrymd `urn:riv:strategicresourcemanagement:organizational:organization:GetUnitResponder:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| alternateName | string |  | 0..* |
| alternateText | string |  | 0..1 |
| businessClassification | BusinessClassificationType |  | 0..* |
| businessType | string |  | 0..* |
| careType | string |  | 0..* |
| countyName | string |  | 0..1 |
| countyCode | string |  | 0..1 |
| description | string |  | 0..1 |
| directoryContact | string |  | 0..1 |
| displayOption | string |  | 0..1 |
| dropInHour | TimeSpanType |  | 0..* |
| mail | string |  | 0..1 |
| facsimileTelephoneNumber | TelephoneNumberType |  | 0..* |
| geographicalCoordinatesRt90 | GeoCoordRt90Type |  | 0..1 |
| geographicalCoordinatesSWEREF99 | GeoCoordSWEREF99Type |  | 0..1 |
| healthCareArea | string |  | 0..1 |
| destinationIndicator | string |  | 0..* |
| unitHsaId | string |  | 1..1 |
| jpegPhoto | string |  | 0..1 |
| jpegLogotype | string |  | 0..1 |
| labeledUri | string |  | 0..1 |
| location | string |  | 0..1 |
| webPage1177 | string |  | 0..1 |
| management | string |  | 0..* |
| municipalityName | string |  | 0..1 |
| municipalityCode | string |  | 0..1 |
| unitName | string |  | 1..1 |
| patientInformation | string |  | 0..1 |
| postalAddress | AddressType |  | 0..1 |
| postalCode | string |  | 0..1 |
| priceInformation | string |  | 0..1 |
| publicName | string |  | 1..1 |
| relatedUnitHsaId | string |  | 0..* |
| route | string |  | 0..1 |
| smsTelephoneNumber | TelephoneNumberType |  | 0..1 |
| street | string |  | 0..1 |
| surgeryHour | TimeSpanType |  | 0..* |
| switchboardNumber | TelephoneNumberType |  | 0..1 |
| telephoneHour | TimeSpanType |  | 0..* |
| telephoneNumber | TelephoneNumberType |  | 0..* |
| textTelephoneNumber | TelephoneNumberType |  | 0..* |
| unitExtraInformation | string |  | 0..1 |
| unitFunction | UnitFunctionType |  | 0..* |
| unitTemporaryInformation | DateSpanType |  | 0..1 |
| visitingHour | TimeSpanType |  | 0..* |
| visitingRuleAge | AgeSpanType |  | 0..1 |
| referralRules | string |  | 0..1 |
| visitingRules | string |  | 0..1 |
| unitStartDate | dateTime |  | 0..1 |
| unitEndDate | dateTime |  | 0..1 |
| feignedUnit | boolean |  | 0..1 |
