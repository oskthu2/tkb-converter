## Tjänstekontrakt SaveFormTemplate
Tjänsten används av ett system (t.ex. Verksamhetssystem) för att spara en

### Frivillighet
Frivillig

### Version
2.0

### Tjänstens signatur
Request
formTemplate [1..1]
Response
FormTemplates [0..*]
FormTemplateType

#### Begäran (Request) och Svar (Response)

| Attribut | Typ | Kommentar | Kardi-nalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| formTemplate |  | Objektet innehåller formulärmallen. | 1..1 |
|  |  |  |  |
| Svar |  |  |  |
| ResultCode |  | Svarskod | 1..1 |
| Comment |  | Kommentar. | 0..1 |

### Regler

#### Begäran
Tjänsteproducenten validerar begäran enligt regler som specificerats i per attribut ovan.

#### Svar
Sökresultatet framställs genom att svaret begränsas av de värden som angivits i begäran.

### Tjänsteinteraktion
SaveFormTemplateInteraction
