# 6 Tjänstedomänens gemensamma komponenter - infrastructure: informationstructureservice: terminology v1.0.0

* [**Table of Contents**](toc.md)
* **6 Tjänstedomänens gemensamma komponenter**

## 6 Tjänstedomänens gemensamma komponenter

# 6 Tjänstedomänens gemensamma komponenter

Källa: **Tjänstekontraktsbeskrivning Terminologitjänst**, version PA1 (2013-10-30), [Tjanstekontraktsbeskrivning_Terminologitjanst.docx](Tjanstekontraktsbeskrivning_Terminologitjanst.docx).

Här beskrivs de komplexa typer som är gemensamma för tjänstekontrakten i domänen.

#### 6.1.1 Soapenv:Header

| | | | |
| :--- | :--- | :--- | :--- |
| LogicalAddress | itr:LogicalAddress | HSA-id för system eller organisation som är ansvarig för eftersökt terminologi. | 1..1 |

#### 6.1.2 SubsetType

| | | | |
| :--- | :--- | :--- | :--- |
| SubsetInformation | SubsetInformationType | Information om urvalet | 1..1 |
| Concept | ConceptType | Lista med begrepp | 0..* |

#### 6.1.3 SubsetInformationType

| | | | |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | String(128) | Identifierare för urval | 1..1 |
| Name | String(100) | Namn som representerar urval | 1..1 |
| Version | String(32) | Versionsidentifierare för urval. Formatet är valfritt för tjänsteproducent med det enda kravet att det med en lexikografisk jämförelse ska gå att avgöra vilken av två versionsidentifierare som är den senaste. | 1..1 |

#### 6.1.4 ConceptType

| | | | |
| :--- | :--- | :--- | :--- |
| CodeSystem | String(64) | Identifierare av kodsystem | 1..1 |
| Code | String(1000) | Begreppskod | 1..1 |
| Term | String(1000) | Term som beskriver begreppet | 1..1 |
| LocalOrganizationExtensionId | String(128) | Id för system eller organisation | 0..1 |
| Metadata | MetadataType | Lista med metadata | 0..* |

#### 6.1.5 MetadataType

| | | | |
| :--- | :--- | :--- | :--- |
| Name | String(64) | Identifierar typ av metadata | 1..1 |
| Value | String(1000) | Metadatavärde | 1..1 |
| LocalOrganizationExtensionId | String(128) | Id för system eller organisation | 0..1 |

#### 6.1.6 Kontrakt

Följande tabell specificerar i vilka kontrakt som respektive typ används i.

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| GetTerminologySubset | X | X | X | X | X |
| GetTerminologySubsetInformation | X |   | X |   |   |
| GetConcepts | X | X | X | X | X |

### Kodverk

Uppräkningen ResultCodeEnum i tjänsteschemana är modellerad som kodverk:

| | | | |
| :--- | :--- | :--- | :--- |
| Resultatkod (`ResultCodeEnum`) | OK, ERROR, INFO | [terminology-resultcode-cs](CodeSystem-terminology-resultcode-cs.md) | [terminology-resultcode-vs](ValueSet-terminology-resultcode-vs.md) |

### Typer i domänschemat (XSD)

Genererat ur [infrastructure_informationstructureservice_terminology_1.0.xsd](infrastructure_informationstructureservice_terminology_1.0.xsd).

#### ConceptType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| Metadata | MetadataType | 0..* Metadata | 0..* |
| CodeSystem | ConceptCodeSystemType | Identifierare av kodsystem (XML-attribut.) | 1..1 |
| Code | ConceptCodeType | Kod för val i listan (XML-attribut.) | 1..1 |
| Term | ConceptTermType | Term som visas upp i vallistan (XML-attribut.) | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |

#### MetadataType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| Name | MetadataNameType | Identifierar typ av metadata (XML-attribut.) | 1..1 |
| Value | MetadataValueType | Metadatavärde (XML-attribut.) | 1..1 |
| LocalOrganizationExtensionId | LocalOrganizationExtensionIdType | Id för system eller organisation (XML-attribut.) | 0..1 |

#### SubsetInformationType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| SubsetIdentity | SubsetIdentityType | Identifierare av urval (XML-attribut.) | 1..1 |
| Name | SubsetNameType | Namn som representerar urval (XML-attribut.) | 1..1 |
| Version | SubsetVersionType | Version för urval (XML-attribut.) | 1..1 |

#### SubsetType

Domänschema `infrastructure_informationstructureservice_terminology_1.0.xsd` (namnrymd `urn:riv:infrastructure:informationstructureservice:terminology:1`).

| | | | |
| :--- | :--- | :--- | :--- |
| SubsetInformation | SubsetInformationType | Information om urval | 1..1 |
| Concept | ConceptType | Lista med concepts | 0..* |

