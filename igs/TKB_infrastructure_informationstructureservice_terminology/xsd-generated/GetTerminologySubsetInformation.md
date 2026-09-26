| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| SubsetIdentity | string | Identifierare som representerar urvalet | 1..* |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation | 0..1 |
| TermType | string | Type of term | 1..1 |
| **Svar** | | | |
| SubsetInformation | SubsetInformationType |  | 0..* |
| ../SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| ../Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| ../Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |
| ResultCode | ResultCodeEnum |  | 1..1 |
| comment | string |  | 0..1 |
