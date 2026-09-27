# 6 Gemensamma informationskomponenter

Källa: *Tjänstekontraktsbeskrivning för infrastructure: itintegration: dataexchange*, version 1.0 (preliminär, gren develop 2025-09-11), [TKB_itinfrastructure_itintegration_dataexchange.docx](TKB_itinfrastructure_itintegration_dataexchange.docx).

TKB:n har inget kapitel om datatyper; meddelandemodellen beskrivs i avsnitt 5 och typerna i kontraktets fältregler i avsnitt 7. Domänen har inget domänschema, så typerna nedan är genererade ur tjänsteschemat [GetBinaryDataResponder_1.0.xsd](GetBinaryDataResponder_1.0.xsd).

### 6.1 Kodverk

Uppräkningen i tjänsteschemat är modellerad som kodverk:

| Kodverk | Koder | CodeSystem | ValueSet |
|---|---|---|---|
| ResultCode (`ResultCodeEnum`) | OK, ERROR, INFO | [dataexchange-resultcode-cs](CodeSystem-dataexchange-resultcode-cs.html) | [dataexchange-resultcode-vs](ValueSet-dataexchange-resultcode-vs.html) |

### 6.2 Typer i tjänsteschemat (XSD)

#### BinaryDataType

Domänschema `GetBinaryDataResponder_1.0.xsd` (namnrymd `urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| contentType | token |  | 1..1 |
| data | base64Binary |  | 1..1 |

#### ResultType

Domänschema `GetBinaryDataResponder_1.0.xsd` (namnrymd `urn:riv:infrastructure.itintegration:dataexchange:GetBinaryDataResponder:1`).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| resultCode | ResultCodeEnum |  | 1..1 |
| resultText | string |  | 0..1 |
