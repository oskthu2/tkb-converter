## Tjänstedomänens krav och regler

### Konsument-krav

| Id | Beskrivning |
| :--- | :--- |
| k1 | Konsumenten ska följa gällande tillämpningsregelverk för sammanhållen journalföring, m.a.p. uppdragsval, spärr, samtycke och loggning. |
| k2 | Resultatet av anrop gäller i 60 sekunder. Därefter måste ett nytt anrop göras. |

### Producentkrav

| Id | Beskrivning |
| :--- | :--- |
| p1 | En tjänsteproducent ska följa verksamhetsreglerna som specificeras i avsnitt 4.3.1 |
Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
I Integritetsskyddsmyndighetens (dåvarande Datainspektionen) tillsyn mot NPÖ i Örebro läns landsting och kommun Drn 1390-2009 framkom bland annat att Örebro läns landsting och kommun inte levde upp till kraven på behörighetsstyrning 6 kap 7 §, 4 kap 2 § patientdatalagen och 2 kap 6 § SOSFS 2008:14. Integritetsskyddsmyndigheten ålade Örebros läns landsting och kommun att ta fram rutiner och en teknisk funktionalitet som möjliggör att behörigheterna kan begränsas till vad som behövs för att användaren ska kunna fullgöra sina arbetsuppgifter inom hälso- och sjukvården.
Enligt Integritetsskyddsmyndighetens tillsyn ska vårdgivaren inte endast bedöma om användaren i sin yrkesutövning kan träffa patienter från andra vårdgivare, utan även vilka patienter eller kategorier av patienter från andra vårdgivare det kan vara fråga om.
Integritetsskyddsmyndighetens granskning av NPÖ-implementationen i Örebro Läns Landsting föranledde kravarbete inom NPÖ-programmet rörande en kompletterande behörighetsfunktion: Tillgänglig Patient (TGP).

#### Verksamhetsregler
Följande verksamhetsregler är en rekommendation till den part som realiserar en tjänsteproducent. Varje vårdgivare ansvarar inför Integritetsskyddsmyndigheten för vilka regler som införs, men följande regler är en rekommendation.

##### Kommunal omsorg
Om någon av följande händelser kan identifieras, ges positivt TGP-beslut:
Beteckning på händelse: Inskrivning
Tidsperspektiv: För TGP ska inskrivningshändelsen referera en gällande inskrivning eller att utskrivningen skett färre än 14 dagar före åtkomstbegäran i sammanhållen journalföring.

##### Vård (t.ex. regionsfinansierad)
Om någon av följande händelser kan identifieras, ges positivt TGP-beslut:
Beteckning på händelse: Tidbokning
Tidsperspektiv: För TGP ska minst en tidbokning finnas som är gällande eller som löpt ut för färre än 14 dagar innan åtkomstbegäran i sammanhållen journalföring. Även kallelser räknas som bokningar i detta sammanhang.
Beteckning på händelse: Remiss
Tidsperspektiv: För TGP ska minst en remiss finnas som är oavslutad eller avslutat färre än 14 dagar före åtkomstbegäran i sammanhållen journalföring.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Behörighetsbeslut ska grundas på information från källsystem (PAS/remiss) som är högst 60 minuter gammal. |  |

#### Övriga krav
Inga.

### Felhantering

#### Krav på en tjänsteproducent

##### Logiska fel
Tjänstekontrakten stödjer inte rapportering av logiska fel (ej funktionskrav).

#### Krav på en tjänstekonsument
Inga.

