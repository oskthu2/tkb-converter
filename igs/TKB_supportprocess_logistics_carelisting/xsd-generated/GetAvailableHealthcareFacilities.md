| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| healthcareFacilities | HSAIdType |  | 0..* |
| listingTypes | CVType |  | 0..* |
| ../code | string |  | 1..1 |
| ../codeSystem | string |  | 1..1 |
| ../codeSystemName | string |  | 0..1 |
| ../codeSystemVersion | string |  | 0..1 |
| ../displayName | string |  | 0..1 |
| ../originalText | string |  | 0..1 |
| **Svar** | | | |
| healthcareFacilities | HealthcareFacilityType | Vårdinrättning/vårdenhet som ansvarar för en person som listat sig hos dem. Det är denna inrättning som får ekonomisk ersättning för personen. | 0..* |
| ../id | HSAIdType |  | 1..1 |
| ../name | string | Namn på vårdenheten. | 1..1 |
| ../hasQueue | boolean |  | 1..1 |
| ../supportedListingTypes | CVType | Lista med listningstyper som vårdeneheten stödjer. Kan utelämnas om information saknas eller om informationen inte behövs i kontexten där entiteten är tänkt att användas i. | 0..* |
| ../../code | string |  | 1..1 |
| ../../codeSystem | string |  | 1..1 |
| ../../codeSystemName | string |  | 0..1 |
| ../../codeSystemVersion | string |  | 0..1 |
| ../../displayName | string |  | 0..1 |
| ../../originalText | string |  | 0..1 |
| ../supportsHealthcarePersonnel | boolean |  | 1..1 |
| ../queueLength | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| ../estimatedWaitInQueue | int |  (Refererat element ur supportprocess_logistics_carelisting_2.1_ext.xsd, namnrymd urn:riv:supportprocess:logistics:carelisting:2.1.) | 0..1 |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
