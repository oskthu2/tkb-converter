# 4 Tjänstedomänens krav och regler

Källa: *Tjänstekontraktsbeskrivning Terminologitjänst*, version PA1 (2013-10-30), [Tjanstekontraktsbeskrivning_Terminologitjanst.docx](Tjanstekontraktsbeskrivning_Terminologitjanst.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik
Inga av tjänstekontrakten i domänen hanterar patient, person eller andra sekretesskyddade uppgifter.

### 4.2 Felhantering

#### 4.2.1 Krav på en tjänsteproducent

##### 4.2.1.1 Logiska fel
Vid ett logiskt fel i anropet levereras felinformation i svarsmeddelandet (se beskrivningen för respektive tjänst).

##### 4.2.1.2 Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

#### 4.2.2 Krav på en tjänstekonsument
I domänen finns endast lästjänster och det finns inte några krav på att en konsument ska hantera omsändningar. Konsumenter rekommenderas att lagra lokala kopior av uthämtad terminologi för att kunna uppfylla egna SLA-krav.

##### 4.2.2.1 Logiska fel
De felkoder till följd av logiska fel som en konsument kan behöva hantera beskrivs för respektive tjänst.

##### 4.2.2.2 Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på detta kan vara nätverksproblem eller följdeffekter av programmeringsfel (exempelvis att anropet inte validerar mot tjänstens xml-schema).

### 4.3 Icke funktionella krav

#### 4.3.1 SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | <2 sekunder för GetTerminologySubset / <0.5 sekunder för övriga tjänster i domänen | Exklusive nätverksfördröjningar på grund av datavolymer |
| Tillgänglighet | Tjänst driftas med kontorstidssupport. / Tjänsten är normalt tillgänglig 24h/dygn. |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | All information skall alltid vara uppdaterad |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |
