### ConceptType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Metadata | MetadataType | 0..* Metadata | 0..* |
| CodeSystem | ConceptCodeSystemType | Identifierare av kodsystem (XML-attribut.) | 1..1 |
| Code | ConceptCodeType | Kod för val i listan (XML-attribut.) | 1..1 |
| Term | ConceptTermType | Term som visas upp i vallistan (XML-attribut.) | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |

### MetadataType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Name | MetadataNameType | Identifierar typ av metadata (XML-attribut.) | 1..1 |
| Value | MetadataValueType | Metadatavärde (XML-attribut.) | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |

### SubsetInformationType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |

### SubsetType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| SubsetInformation | SubsetInformationType | Information om urval | 1..1 |
| Concept | ConceptType | Lista med concepts | 0..* |
