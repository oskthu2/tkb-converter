## Tjänstedomänens krav och regler
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Kraven för hantering av information som hanteras med tjänstekontraktet GetBinaryData måste linjera med regler för informationsbehandling i det tjänstekontrakt eller annat meddelande som bär en referens till tjänstekontraktet GetBinaryData. Uppgifter från det tjänstekontrakt eller annat meddelande som bär referensen används bl.a. för spärrkontroll vid medarbetarens direktåtkomst och kontroll om informationen godkänts att visas för patient vid patientens direktåtkomst.
En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva användningen av tjänstekontraktet GetBinaryData och dess innehåll utöver reglerna i denna TKB. Interoperabilitetsspecifikationen kan beskriva krav på informationssäkerhet och juridik som inte beskrivs vare sig i denna TKB, eller i dokumentationen om informationsbehandling för det tjänstekontrakt eller annat meddelande som bär referensen.

### Icke funktionella krav

#### SLA krav
En specifik interoperabel lösning behöver i en interoperabilitetsspecifikation beskriva den interoperabla lösningens SLA-krav.

#### Övriga krav

##### Gemensamma konsumentregler
R1: Hantering av en refererad bilaga måste linjera med regler för informationsbehandling i det tjänstekontrakt eller annat meddelande som bär referensen.

##### Gemensamma producentregler
R2: Filtrera enligt RIVTA-headern LogicalAddress. Svarsmeddelandet får endast innehålla information som skapats i det källsystem som anges av frågemeddelandets LogicalAddress.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Respektive kontrakt beskriver närmare hur logiska fel ska hanteras.

##### Tekniska fel
Vid ett tekniskt fel levereras ett generellt undantag (Soap Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter. I stället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID. Ett log-id får under inga omständigheter förmedla information som är spårbar till patienten.
Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.

#### Krav på en tjänstekonsument

##### Logiska fel
Inga generella krav på konsument. En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva hanteringen av eventuella logiska fel.

##### Tekniska fel
Inga generella krav på konsument. En specifik interoperabel lösning behöver tillhandahålla en interoperabilitetsspecifikation för att beskriva hanteringen av eventuella tekniska fel.

