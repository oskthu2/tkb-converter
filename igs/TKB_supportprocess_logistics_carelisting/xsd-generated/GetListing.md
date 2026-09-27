| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| actor | ActorType |  | 1..1 |
| ../actorId | IIType |  | 1..1 |
| ../../root | string |  | 1..1 |
| ../../extension | string |  | 0..1 |
| ../actorType | ActorTypeEnum |  | 1..1 |
| personId | IIType |  | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| listings | ListingHealthcareFacilityType |  | 0..* |
| ../validFromDate | dateTime |  | 0..1 |
| ../validToDate | dateTime |  | 0..1 |
| ../listingType | CVType |  | 1..1 |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../healthcareFacility | HealthcareFacilityType | Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen. | 1..1 |
| ../../id | HSAIdType |  | 1..1 |
| ../../name | string | Namn på vårdenheten. | 1..1 |
| ../../hasQueue | boolean |  | 1..1 |
| ../../supportedListingTypes | CVType | Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i. | 0..* |
| ../../../code | string |  | 1..1 |
| ../../../codeSystem | string |  | 1..1 |
| ../../../codeSystemName | string |  | 0..1 |
| ../../../codeSystemVersion | string |  | 0..1 |
| ../../../displayName | string |  | 0..1 |
| ../../../originalText | string |  | 0..1 |
| ../../supportsHealthcarePersonnel | boolean |  | 1..1 |
| ../../queueLength | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../healthcarePersonnel | HealthcarePersonnelType |  | 0..1 |
| ../../id | HSAIdType |  | 1..1 |
| ../../name | string |  | 1..1 |
| ../../title | string |  | 0..1 |
| ../isInQueue | boolean |  | 1..1 |
| ../queuePosition | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../remainingChanges | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
