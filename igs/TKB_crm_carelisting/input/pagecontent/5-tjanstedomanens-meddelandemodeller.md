## 5 Tjänstedomänens meddelandemodeller

### Verksamhetsorienterad meddelandeinformationsmodell (V-MIM)

#### Visa tjänsteval (GetListing)

Indata: personId

![V-MIM — Visa tjänsteval, indata](images/img_013.png)

Utdata: Meddelandeutbytet i den här interaktionen består av ett inledande meddelande från konsument till listningstjänst som innehåller ett person-id. Som svar får konsumenten ett meddelande som innehåller information om det tjänsteval som personen med det angivna person-id:t har gjort. Enheter och vård- och omsorgspersonal identifieras med HSA-id.

#### Visa möjliga tjänsteutövare (GetAvailableFacilities)

Indata:

![V-MIM — Visa möjliga tjänsteutövare, indata](images/img_010.png)

Utdata (lista):

![V-MIM — Visa möjliga tjänsteutövare, utdata](images/img_005.png)

Meddelandeutbytet i den här interaktionen resulterar i en enkel lista i vilken det lokala listningssystemet presenterar HSA-id:n och namn på de valbara utövare av de tjänster som är tillgängliga i regionen. I anropet till tjänsten anges regionkod. Man kan även välja att lista enheter utifrån en viss listningstyp eller lista specifika enheter utifrån en lista av HSA-id:n. Varje region har möjlighet att själv bestämma vilka typer av val en invånare kan lista sig på. Det är upp till listningssystemet att självt hålla reda på de HSA-id:n som är valbara.

#### Göra tjänsteval (CreateListing)

Indata:

![V-MIM — Göra tjänsteval, indata](images/img_003.png)

Utdata:

![V-MIM — Göra tjänsteval, utdata](images/img_017.png)

Meddelandet i den här interaktionen består i en koppling mellan ett person-id och HSA-id:t på den valda tjänsteutövaren gällande en viss listningstyp. Det lokala listningssystemet använder informationen för att lagra listningsinformation för en vård- och omsorgstagare.

#### Visa listningstyp (GetListingTypes)

Utdata:

![V-MIM — Visa listningstyp, utdata](images/img_014.png)

Meddelandeutbytet i interaktionen består i ett anrop innehållande person-id för aktuell person. Tjänsten returnerar möjliga typer av listningar som personen kan bruka vid listning.

#### Visa köstatus (GetPersonQueueStatus)

Utdata:

![V-MIM — Visa köstatus, utdata](images/img_009.png)

Meddelandeutbytet i interaktionen består i ett anrop innehållande person-id för aktuell person. Tjänsten returnerar köstatus (i kö, ej i kö) gällande personen och den enhet där eventuell köstatus föreligger.

> **OBS:** Källdokumentet saknar standard TKB-avsnitt 5. Innehållet ovan är baserat på avsnitt 5 (V-MIM) i källdokumentet.
