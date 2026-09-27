| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| blockId | Id |  | 1..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |
