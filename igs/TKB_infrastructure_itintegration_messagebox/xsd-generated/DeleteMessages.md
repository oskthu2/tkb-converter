| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| messageIds | long |  | 1..* |
| **Svar** | | | |
| result | ResultType | Gemensam resultatkod. Om code är OK är övriga fält tomma. Om code är "INFO" eller ERROR kan information skickas i errorId och/eller errorMessage. | 1..1 |
| ../code | ResultCodeEnum |  | 1..1 |
| ../errorId | int |  | 0..1 |
| ../errorMessage | string |  | 0..1 |
| deletedIds | long |  | 0..* |
