| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| ehr_system | II |  | 1..1 |
| subject_of_care | II |  | 1..1 |
| deletion | DeletionType |  | 1..* |
| ../rc_id | II |  | 1..1 |
| ../meaning | CD |  | 1..1 |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |
