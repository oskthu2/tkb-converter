## Tjänstedomänens meddelandemodeller
Här beskrivs de modeller som beskriver informationsinnehållet i tjänstekontrakten inom tjänstedomänen. Varje tjänstekontrakt ska ha en (1..1) egen meddelandemodell som uttömmande beskriver informationen som tjänstekontraktet bär. För varje meddelandemodell beskrivs hur mappning ser ut mot tjänstekontraktets schema (XSD).

![Meddelandemodell - GetBinaryData](images/img_006.png)
Meddelandemodell - GetBinaryData
*Figur 6: UML-representation av XSD-schemat.*
Nedan beskrivs mappning mellan meddelandemodell/ XSD och informationsmodellen i informationsspecifikationen [R8].

| Meddelandemodell/ XSD | Mappning mot Nationell Informationsstruktur 2016:1 |
| :--- | :--- |
| GetBinaryDataRequest | Saknas |
| logicalAddress | Saknas |
| parameters | Saknas |
| GetBinaryDataType | Saknas |
| id | Dokument.id |
| GetBinaryDataResponse | Saknas |
| parameters | Saknas |
| GetBinaryDataResponseType | Saknas |
| binaryData | Binär data |
| result | Saknas |
| BinaryType | Binär data |
| contentType | Binär data.mediatyp |
| data | Binär data.data |
| ResultType | Saknas |
| resultCode | Saknas |
| resultText | Saknas |

