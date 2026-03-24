## 6 Gemensamma informationskomponenter

### Verksamhetsorienterad domäninformationsmodell (V-DIM)

Nedanstående bild visar informationsbehovet i en informationsmodell enligt UML.

#### Primärvårdstjänst (domänmodell)

![V-DIM — Primärvårdstjänst](images/img_016.png)

### V-DIM Klasser och attribut

#### Enhet

Klassen Enhet hanterar information om organisatoriska enheter inom vård och omsorg. Motsvarighet i V-TIM 1.1: Klassen Enhet är en utökning av klassen Enhet i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Facility

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| enhets-id | Identitetsbeteckningen för den organisatoriska enheten / Motsvarighet i HSA: HSA-id | II | 1 | | HSA-ID eller Orgnr+lokalt id. | Facility/facilityId |
| namn | Enhetens officiella namn / Motsvarighet i HSA: Enhetsnamn | TXT | 1 | | | Facility/facilityName |
| har kö | Boolskt värde som indikerar om vårdenheten har kö vid listningar | BL | 0..1 | | | Facility/hasQueue |
| listningstyper | Lista med listningstyper som vårdeneheten stödjer. / Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | KTOV | 0..* | KV Listningstyp | | Facility/supportedListingTypes |

Associationer:
* En Enhet tillhandahåller noll eller flera Primärvårdstjänst(er)
* En Enhet har noll eller flera anställda/uppdragstagande Vård- och omsorgspersonal

#### Primärvårdstjänst

Klassen Primärvårdstjänst hanterar information om vård- och omsorgstagarens utpekade vårdval t.ex. husläkare, husläkarmottagning eller annat giltigt vårdval. Listningstjänsten gäller i dagsläget endast primärvård, så terminologin från NPÖ har bibehållits i så stor utsträckning som möjligt. Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Listing

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| tidsintervall | Datum som listning är skapad. Kan även innehålla slutdatum om något sådant finns. / Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | IVL | 1 | | | Listing/validFromDate, Listing/validToDate |
| listningstyp | Motsvarighet i V-TIM 1.1: Ingen motsvarighet finns i V-TIM 1.1 | KTOV | 1 | KV Listningstyp | | Listing/listingType |

Associationer:
* En Primärvårdstjänst avser en och endast en Vård- och omsorgstagare
* En Primärvårdstjänst har noll eller en ansvarig Vård- och omsorgspersonal (Listing/resource)
* En Primärvårdstjänst tillhandahålls av en och endast en Enhet (Listing/healthcare_facility)

#### Vård- och omsorgspersonal

Klassen Vård- och omsorgspersonal hanterar information som rör personal inom vård och omsorg. Motsvarighet i V-TIM 1.1: Klassen Vård- och omsorgspersonal är en utökning av klassen Personal i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: Resource

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| personal-id | Identitetsbeteckning för personal inom vård och omsorg / Motsvarighet i HSA: HSA-id i de fall HSA-id kan anges | II | 1 | HSA-id | I de fall då HSA-id inte finns tillgängligt i systemet kan alternativ id-beteckning användas | Resource/resourceId |
| namn | Aktuell persons förnamn och efternamn / Motsvarighet i HSA: Fullständigt namn | TXT | 1 | | | Resource/resourceName |

Associationer:
* En Vård- och omsorgspersonal ansvarar för noll eller flera Primärvårdstjänst(er)

#### Vård- och omsorgstagare

Klassen Vård- och omsorgstagare hanterar information om vård- och omsorgstagare. Motsvarighet i V-TIM 1.1: Klassen Vård- och omsorgstagare är en specialisering av klassen Patient i V-TIM 1.1. Motsvarighet i crm_caresliting_1_0.xsd: SubjectOfCare

| Attribut | Beskrivning | Format | Mult | Kodverk/ värdemängd | Beslutsregel | Motsvarighet i carelisting.xsd |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| person-id | Identitetsbeteckning för vård- och omsorgstagaren / Motsvarighet i V-TIM 1.1: person-id | II | 1 | Personnummer enligt SKV 704:08 / Samordningsnummer enligt SKV 707:02 / Reservnummer enligt Carelinks rekommendation. / Katastrofnummer enligt Socialstyrelsens anvisning | Identitetsbeteckningen måste vara unik inom Sverige. | SubjectOfCare/personId |

Associationer:
* En Vård- och omsorgstagare är listad för noll eller flera Primärvårdstjänst(er) (SubjectOfCare/listing)

### Informationsöversikt

Följande information behövs för att beskriva en vård- och omsorgstagare med tillhörande gjorda tjänsteval:

| Information | Innehåller information om |
| :--- | :--- |
| Vård- och omsorgstagare | Information om den person, i rollen vård- och omsorgstagare, som informationen avser |
| Ansvarig/Tillhandahålls av | Information om den personal eller enhet som är vald att utföra primärvårdstjänsten |
| Listningstyp | Typ av primärvårdstjänst (BVC, HLM, FL etc) |

### Termer och definitioner

| Term | Definition | Kommentar och användningsområde | Synonym | Källa |
| :--- | :--- | :--- | :--- | :--- |
| primärvårdstjänst | Primärvård som tillhandahålls av en vård- och omsorgsgivare. | | | Projekt: Nationell Patientöversikt |

### Klassifikationer och kodverk

| Namn | OID | Ägare/förvaltare och länk | Innehåll |
| :--- | :--- | :--- | :--- |
| KV Befattningsklassificering | 1.2.752.129.2.2.1.4 | Se HSA | |
| KV Listningstyp | | | Finns inte för tillfället, istället används fritext. |

#### Identifierare

| Namn | OID | Ägare/förvaltare och länk | Innehåll |
| :--- | :--- | :--- | :--- |
| Personnummer | 1.2.752.129.2.1.3.1 | Skatteverket, www.skatteverket.se | Person-id för någon som är folkbokförd i Sverige enligt SKV704 |
| Samordningsnummer | 1.2.752.129.2.1.3.3 | Skatteverket, www.skatteverket.se | Person-id för någon som inte är eller har varit folkbokförd i Sverige enligt SKV704 |
| Reservnummer | 1.2.752.129.2.1.3.2 | Carelink, www.carelink.se | Tillfälligt person-id som huvudsakligen används för att kunna koppla samman patient och dennes vårddokumentation när personnummer eller samordningsnummer saknas eller är okänt |
| HSA-id | 1.2.752.129.2.1.4.1 | Carelink, förvaltningsgrupp HSA, www.carelink.se/tjanster/hsa/ | HSA-id för objekt i HSA-katalogen såsom personer, roller, funktioner, enheter m.fl. |

> **OBS:** Källdokumentet saknar standard TKB-avsnitt 6. Innehållet ovan är baserat på avsnitt 3–7 (V-DIM, Informationsöversikt, Termer och definitioner, Klassifikationer) i källdokumentet.
