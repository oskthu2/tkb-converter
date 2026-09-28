| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| SubsetIdentity | string | Identifierare som representerar urvalet | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation | 0..1 |
| TermType | string | Type of term | 1..1 |
| **Svar** | | | |
| Subset | SubsetType |  | 0..1 |
| ../SubsetInformation | SubsetInformationType | Information om urval | 1..1 |
| ../../SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| ../../Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| ../../Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |
| ../Concept | ConceptType | Lista med concepts | 0..* |
| ../../Metadata | MetadataType | 0..* Metadata | 0..* |
| ../../../Name | MetadataNameType | Identifierar typ av metadata (XML-attribut.) | 1..1 |
| ../../../Value | MetadataValueType | Metadatavärde (XML-attribut.) | 1..1 |
| ../../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ../../CodeSystem | ConceptCodeSystemType | Identifierare av kodsystem (XML-attribut.) | 1..1 |
| ../../Code | ConceptCodeType | Kod för val i listan (XML-attribut.) | 1..1 |
| ../../Term | ConceptTermType | Term som visas upp i vallistan (XML-attribut.) | 1..1 |
| ../../LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |
| ResultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |
