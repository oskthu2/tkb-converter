| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| orderId | OrderId |  | 1..1 |
| **Svar** | | | |
| multimedia | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../id | string |  | 0..1 |
| ../mediaType | CodedValue |  | 1..1 |
| ../value | base64Binary |  | 0..1 |
| ../reference | anyURI |  | 0..1 |
