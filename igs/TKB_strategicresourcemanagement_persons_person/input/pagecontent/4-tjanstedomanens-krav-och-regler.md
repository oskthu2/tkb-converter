# 4 Tjänstedomänens krav och regler

Källa: *Personuppgiftstjänsten – Tjänstekontraktsbeskrivning*, version 5.1 (2024-11-28), [TKB_strategicresourcemanagement_persons_person.docx](TKB_strategicresourcemanagement_persons_person.docx).

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### 4.1 Informationssäkerhet och juridik

I informationsspecifikationen [R3] beskrivs de lagar och regler som är tillämpliga för informationen i domänen.

I detta dokument ges här endast en kort sammanfattning.

#### 4.1.1 Allmänt om informationen inom domänen

Tjänsterna i domänen tillhandahåller information från bakomliggande datakälla (Folkbokföringsregistret), vilken Skatteverket ansvarar för. Domänen omfattar personuppgifter såsom persons reservidentitet, personnummer, samordningsnummer, namn, adress och familjerättsliga förhållanden. Domänen tillhandahåller även personens kompletterande uppgifter såsom kontaktpersoner och kontaktuppgifter.

Informationen i domänen används bland annat för att säkerställa att rätt person har valts i IT-system, komplettera med folkbokfört namn, folkbokförd adress (alternativt särskild postadress), få upplysning om personens eventuella kontaktuppgifter osv.

Uppgifterna är i regel offentliga, men sekretess kan gälla i särskilda fall, se sekretessmarkerade personuppgifter nedan.

#### 4.1.2 Grundläggande lagstöd och personuppgiftsansvar

Dataskyddsförordningen (EU 2016/679) styr den grundläggande regleringen av personuppgiftsbehandlingen i Personuppgiftstjänsten. Personuppgiftstjänsten används främst av regioner och andra vårdgivare för administration som rör patienter i samband med hälso- och sjukvård. Se vidare Informationsspecifikationen och tjänstebeskrivningen [R10].

För uppgifter som lagras i Personuppgiftstjänsten (tjänsteproducenten) och som har inhämtats från Navet (Skatteverket) gäller att det den region (huvudman) som beställt uppgifterna (och har avtalet med Skatteverket) är personuppgiftsansvarig. Regionen är normalt personuppgiftsansvarig (PUA) för ”sin” del av befolkningen. I en lösning där flera huvudmän lagrar sin information i gemensam Personuppgiftstjänst som hanteras av personuppgiftsbiträde, åligger det personuppgiftsbiträdet att logiskt separera respektive huvudmans personuppgifter.

För uppgifter som har kompletterats av personen själv, såsom kontaktuppgifter etc så är det normalt den region som personen är folkbokförd i som är PUA.

Åtkomst till uppgifter via tjänstekontrakt sker primärt med stöd av ett elektroniskt utlämnande från Personuppgiftstjänst i form av ett s.k. automatiserat ADB-utlämnande. Utlämnandet bygger på att personuppgiftsansvarig har gjort en prövning av varje enskilt fall baserat på ett i förväg fattat schablonmässigt menprövningsbeslut. Menprövningsbeslutet ska inkludera vad som kan lämnas ut för uppgift som är skyddad.

#### 4.1.3 Sekretessmarkerade personuppgifter samt Skyddad folkbokföring (Skyddade personuppgifter)

Personuppgifter kan bli sekretessmarkerade enligt ett regelverk som Skatteverket ansvarar för, vilket då alltid framgår när uppgiften hämtas via tjänster i denna domän, s.k. sekretessmarkering. En person kan även få skyddade folkbokföringsuppgifter (gäller från 2019-01-01). Detta är ett högre skydd än sekretessmarkering och anges med ett separat attribut.

Grundregeln är att i de fall personposten är sekretessmarkerad alternativt skyddad folkbokföring, utelämnas (”blankas”) alla uppgifter i svaret utom de som regionerna beslutat alltid behöver ges tillgång till för att uppfylla patientsäkerhet inom hälso- och sjukvård (se kapitel 8). Det framgår även att posten har skyddade personuppgifter. För åtkomst till sekretessmarkerade uppgifter/skyddad folkbokföring används separata s.k. ”unrestricted-kontrakt”. Se mer under tjänstekontrakt.

Notera dock att personuppgifter kan ha inhämtats tidigare för person som får sekretessmarkering alternativt skyddad folkbokföring. Den organisation som tagit emot uppgifterna måste då ansvara för att skyddet för personuppgifter hanteras korrekt.

En personidentitet kan ha en eller flera kopplade identiteter (reservidentitet till PNR/SNR). En konsument av personuppgifter skall säkerställa att endast behöriga användare får tillgång till fullständiga personuppgifter då det finns en sekretessmarkering/skyddade folkbokföringsuppgifter på en kopplad identitet (PNR).

Skatteverket har tagit fram en vägledning för hantering av sekretessmarkerade personuppgifter i offentlig förvaltning, se referens [R15].

#### 4.1.4 Krav på tjänstekonsumenten

Ansvariga för tjänstekonsumenten ansvarar för att slutanvändaren är identifierad inklusive i förekommande fall dennes organisatoriska tillhörighet, är behörig att ta del av informationen i e-tjänsten, samt att slutanvändarens aktiviteter loggas. För hantering av kontaktuppgifter, se [R11]. För hantering av personidentiteter med sekretessmarkering/skyddad folkbokföring, se kapitel 4.1.3 samt referens [R12].

#### 4.1.5 Krav på tjänsteproducenten

Ansvarig för Tjänsteproducenten ansvarar för att information endast lämnas ut till godkända tjänstekonsumenter, samt hanteras enligt riktlinjerna för informationssäkerhet, se vidare referens [R3], kapitel 2.

#### 4.1.6 Konfidentialitet

All kommunikation med tjänsterna sker via TLS-krypterad förbindelse, se referens [R8].

### 4.2 Icke funktionella krav

#### 4.2.1 SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
| :--- | :--- | :--- |
| Svarstid | < 20 ms per post som ingår i svaret + en grundsvarstid på max 100 ms. | Detta gäller vid anrop på personposter som ej har beroenden till externa källor. |
| Tillgänglighet | 24x7, 99,95% |  |
| Last | 10 transaktioner per sekund |  |
| Aktualitet | Fördröjningen mellan en utförd uppdatering tills informationen är tillgänglig för en läsning får inte överstiga 3 sekunder |  |
| Återställningstid | - | Krav på dubbla datahallar |

#### 4.2.2 Övriga krav

N/A

### 4.3 Felhantering

#### 4.3.1 Krav på en tjänsteproducent

Alla fel hos producenten ska loggas för spårbarhet samt att systemansvarig kan upptäcka om något behöver åtgärdas.

##### 4.3.1.1 Logiska fel

För informationsavlämnande tjänster skall resultCode sättas till någon av de giltiga koderna enligt [R6].

Om resultText innehåller ett meddelande så skall det vara sådant att det kan visas för en användare. Respektive kontrakt beskriver närmare vilka logiska fel som skall returneras.

En producent kan även ange ett logiskt fel via SOAP men då ska det gå som ett client fault istället för server fault.

OBS! Från och med version 3 av denna domän så kan ett logiskt fel gå via SOAP, fast då som ett client fault i stället för server.

##### 4.3.1.2 Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel (server faults) får inte förmedla personuppgifter. Istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning. Ett log-id bör vara en UUID.

#### 4.3.2 Krav på en tjänstekonsument

##### 4.3.2.1 Logiska fel

För konsumenter av uppdaterande tjänster så skall felkoder kunna hanteras och i relevanta fall meddelas aktören.

##### 4.3.2.2 Tekniska fel

Tekniska fel definieras med en text och en kod i ett SOAP Fault. Tjänstekonsumenten rekommenderas logga detta fel för att underlätta felsökning.
