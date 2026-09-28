| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| response_detail | ResponseDetailType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../text | ST |  | 1..1 |
| ../type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |
