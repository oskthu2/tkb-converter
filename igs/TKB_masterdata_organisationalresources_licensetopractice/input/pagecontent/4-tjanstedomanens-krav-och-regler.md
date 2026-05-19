## Tjänstedomänens krav och regler
Dessa gäller tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik
Enligt förordningen (2006:196) om register över legitimerad hälso- och sjukvårdspersonal är det offentliga vårdgivare samt IVO som får ha direktåtkomst till de beskrivna variablerna.
En offentlig vårdgivare får ha direktåtkomst till uppgifter som avses i 6 § 1, 3 och 5–8.
1. namn, personnummer, samordningsnummer eller andra liknande identitetsbeteckningar och kön,
3. yrke,
5. specialitet,
6. datum för utfärdande av legitimation respektive bevis om specialistkompetens,
7. beslut om prövotid och återkallelse av legitimation,
8. förskrivarkod och omfattning av förskrivningsrätt
Offentliga vårdgivare behöver avtal med Socialstyrelsen för att ansluta sig till direktåtkomsten.
Direktåtkomst får enligt 7b § förordningen om register över legitimerad hälso- och sjukvårdspersonal inte medges innan Socialstyrelsen har försäkrat sig om att behörighets- och säkerhetsfrågorna är lösta på ett sätt som är tillfredställande ur integritetssynpunkt.
IVO får ha direktåtkomst till uppgifter som avses i 6 §.
1. namn, personnummer, samordningsnummer eller andra liknande
identitetsbeteckningar och kön,
2. folkbokföringsort,
3. yrke,
4. grundyrke, läroanstalt, utbildningsland och datum för
utfärdande av examen,
5. specialitet,
6. datum för utfärdande av legitimation respektive bevis om
specialistkompetens,
7. beslut om prövotid och återkallelse av legitimation,
8. förskrivarkod och omfattning av förskrivningsrätt, samt
9. sådana tekniska och administrativa uppgifter som är
nödvändiga för att registerändamålen ska kunna tillgodoses.

### Icke funktionella krav

#### SLA krav
Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 99,5% under vardagar 9-17. Detta motsvarar en tillgänglighet på 24% av den totalt tillgängliga upptiden på årsbasis |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | I princip omedelbar, i praktiken =< 1 sekund | Från det att datat persisterats. Gäller ej personuppgifter hämtade från folkbokföringen, vilka kan vara upp till en vecka gamla. |
| Återställningstid | 1 timme =< Återställningstid < 24 timmar | Vid katastrof, bortfall av hel hall |
| Säkerhet/Autentisering | Default för NTJP-producenter. |  |
| Säkerhet/Auktorisering | Default för NTJP-producenter. |  |
| Säkerhet/Kryptering | Default för NTJP-producenter. |  |
| Säkerhet/Spårbarhet | Regleras i separat avtal mellan konsument och Socialstyrelsen. |  |

#### Övriga krav
Säkerhetsaspekterna autentisering, auktorisering, kryptering och spårbarhet är viktiga för domänen, då känsliga uppgifter hanteras och tillhandahålls via tjänsteplattformen.

### Felhantering

#### Krav på en tjänsteproducent

##### Tekniska fel
Tekniska fel kommuniceras via SOAP Faults.

#### Krav på en tjänstekonsument
En omsändningsstrategi skall endast tillämpas vid tekniska fel. Denna skall innehålla ett begränsat antal försök under ett ökande tidsintervall samt med ett begränsat antal omsändningsförsök.

##### Felhantering
Då alla tjänster används synkront är det tjänstekonsumenten som ansvarar för att korrekt tolka fel i samband med kommunikation.

##### Säkerhet
Se 4.2.2 Övriga krav.

