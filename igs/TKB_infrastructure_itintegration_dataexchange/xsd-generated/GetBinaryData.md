| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| id | string |  | 1..1 |
| **Svar** | | | |
| binaryData | BinaryDataType |  | 0..1 |
| ../contentType | token |  | 1..1 |
| ../data | base64Binary |  | 1..1 |
| result | ResultType |  | 1..1 |
| ../resultCode | ResultCodeEnum |  | 1..1 |
| ../resultText | string |  | 0..1 |
