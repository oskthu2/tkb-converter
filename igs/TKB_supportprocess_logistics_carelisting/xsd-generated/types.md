### ActorType (supportprocess_logistics_carelisting_2.0)

Domänschema `supportprocess_logistics_carelisting_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| actorId | IIType |  | 1..1 |
| actorType | ActorTypeEnum |  | 1..1 |

### ActorType (supportprocess_logistics_carelisting_2.1)

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| actorId | IIType |  | 1..1 |
| actorType | ActorTypeEnum |  | 1..1 |

### CVType (supportprocess_logistics_carelisting_2.0)

Domänschema `supportprocess_logistics_carelisting_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### CVType (supportprocess_logistics_carelisting_2.1)

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| code | string |  | 1..1 |
| codeSystem | string |  | 1..1 |
| codeSystemName | string |  | 0..1 |
| codeSystemVersion | string |  | 0..1 |
| displayName | string |  | 0..1 |
| originalText | string |  | 0..1 |

### HealthcareFacilityType

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen.

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | HSAIdType |  | 1..1 |
| name | string | Namn på vårdenheten. | 1..1 |
| hasQueue | boolean |  | 1..1 |
| supportedListingTypes | CVType | Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i. | 0..* |
| supportsHealthcarePersonnel | boolean |  | 1..1 |
| queueLength | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |

### HealthcarePersonnelType (supportprocess_logistics_carelisting_2.0)

Domänschema `supportprocess_logistics_carelisting_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | HSAIdType |  | 1..1 |
| name | string |  | 1..1 |
| title | string |  | 0..1 |

### HealthcarePersonnelType (supportprocess_logistics_carelisting_2.1)

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| id | HSAIdType |  | 1..1 |
| name | string |  | 1..1 |
| title | string |  | 0..1 |

### IIType (supportprocess_logistics_carelisting_2.0)

Domänschema `supportprocess_logistics_carelisting_2.0.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### IIType (supportprocess_logistics_carelisting_2.1)

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| root | string |  | 1..1 |
| extension | string |  | 0..1 |

### ListingHealthcareFacilityType

Domänschema `supportprocess_logistics_carelisting_2.1.xsd` (namnrymd `urn:riv:supportprocess:logistics:carelisting:2`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| validFromDate | dateTime |  | 0..1 |
| validToDate | dateTime |  | 0..1 |
| listingType | CVType |  | 1..1 |
| healthcareFacility | HealthcareFacilityType | Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen. | 1..1 |
| healthcarePersonnel | HealthcarePersonnelType |  | 0..1 |
| isInQueue | boolean |  | 1..1 |
| queuePosition | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| remainingChanges | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
