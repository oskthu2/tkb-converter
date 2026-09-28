| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| orderId | OrderId |  | 1..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En anropande klient skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |
| multimedia | MultimediaType | Datatyp som beskriver en multimediatyp. Data kan förekomma som inbäddat element eller hänvisas via en referens URL. | 0..* |
| ../id | string |  | 0..1 |
| ../mediaType | CodedValue |  | 1..1 |
| ../value | base64Binary |  | 0..1 |
| ../reference | anyURI |  | 0..1 |
