
<svenskt namn på tjänstedomän>

Patientöversikt

Tjänstekontraktsbeskrivning

Utgåva PA1

2012-11-16

Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
|---|---|---|---|---|
| PA1 | 2012-11-16 | Första utkast för remiss | Hjalmar Jacobson |  |

Innehållsförteckning

1. Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen ehr:patientsummary (huvuddomän ”Electronic Health Record”, underdomän ”Patientsummary”). Den svenska benämningen är ”Patientöversikt”.

Tjänstedomänen omfattning är delning av detaljerad patientinformation på formatet EN13606 mot en patientöversikt. Den kravställande processen är patientöversiktens behov av att kunna hämta detaljerad patientinformation.

Detta tjänstekontrakt är en RIVTA2.1-anpassning av den redan existerande EN13606-tjänsten RIV13606REQUEST_EHR_EXTRACT och SendEhrExtract. Vid anpassningen har så få förändringar som möjligt gjorts, allt för att minska arbetsbördan för de tjänsteproducenter som går över till någon av RIVTA2.1-anpassade tjänsterna istället.

I dagsläget är endast NPÖ kravställande av den detaljerade patientinformationen och dessa krav finns beskrivna i avsnitt 2.2.

Denna tjänstekontraktsbeskrivning beskrivs i den mån det går som ett generellt tjänstekontrakt för patientöversikter, men en del kommer vara specifikt för NPÖ.

Framtida versioner av denna beskrivning anpassas till NPÖs frågetjänst och kommer då innehålla tjänsten

- GetEhrExtractContinuation (ett sätt att hämta delsvar från NPÖs frågetjänst)

![Figur 1](IMG01) ![Figur 2](IMG02)

1. Generella regler
  1. Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

  1. EHR-extrakt

För specifikation hur EHR-extract (ehr_extract) utformas och ska innehålla hänvisas till

- RIV Informationsspecifikation NPÖ v.2.2.0.pdf
- Kodverk_och_OIDer_i_NPÖ_version_2.3xls
- Version 2.1.3 av dokumenten
  - Meddelandestruktur__Läkemedel_NPÖ_SSEN13606
  - Meddelandestruktur__Undersökningsresultat_NPÖ_SSEN13606
  - Meddelandestruktur__Uppmärksamhetssignal_NPÖ_SSEN13606
  - Meddelandestruktur__Vård-_och_omsorgsplan_NPÖ_SSEN13606
  - Meddelandestruktur_Funktionstillstånd_NPÖ_SSEN13606
  - Meddelandestruktur_Vård-_och_omsorgsdokument_NPÖ_SSEN13606
  - Meddelandestruktur_Vård-_och_omsorgskontakt_NPÖ_SSEN13606
  - Meddelandestruktur_Vård_-och_omsorgstjänst_NPÖ_SSEN13606
- Version 2.1.4 av dokumenten
  - Meddelandestruktur_Diagnos_NPÖ_SSEN13606
  - Meddelandestruktur_Vård-_och_omsorgstagare_NPÖ_SSEN13606

Dessa dokument finns tillgängliga via Ineras NPÖ-förvaltning.

Förutom kraven i dokumentet ovan gäller följande

- Värdet för ”ehr_system” ska vara id:et för vårdsystemet (HSA-id för EHR-källsystemet)
- Ett ”rc_id” får inte innehålla mer än 50 tecken.
- Varje ”rc_id” ska vara globalt unikt och i ett extrakt måste vara unikt, vilket alltså innebär att det inte går att skicka historiska poster i samma extrakt.
- Radbrytningar, där det är applicerbart, kan anges med ”&#10;”.
- Tabbar, där det är applicerbart, kan anges med "&#9;”.
  1. Statusrapportering

Statusrapportering levereras genom ”response_detail”. Koder som kan användas är

- E: Fel som innebär att anropet inte kunde bearbetas och ingen information returneras.
- W:
  - För GetEhrExtract: Varning innebär att problem uppstod som kan påverka det som returneras, men åtminstone partiell information finns.
  - För ReceiveEhrExtract: Varning innebär att problem uppstod vid hanteringen, men ingen information har förlorats.
- I: Denna typ av meddelande kan skickas oavsett hur bearbetning av anropet fungerat

Vid fel hos tjänsteproducenten ska återrapportering (genom ”response_detail”) göras och följande anges

- type_code=E
- code=INTERNAL
- text=beskrivning om felet

Om anropet till tjänsteproducenten inte följer tjänstekontraktsbeskrivningen ska återrapportering (genom ”response_detail”) göras och följande anges

- type_code=E
- code=CONTRACT
- text=beskrivning om vad i kontraktet som inte uppfylls

Om tjänsteproducenten inte har den efterfrågade informationen ska återrapportering (genom ”response_detail”) göras och följande anges

- type_code=I
- code=NOINSTANCE
- text=”Patientinformation saknas” (eller motsvarande text)

Om tjänsteproducenten för tillfället inte är tillgänglig, t.ex. på grund av tillfälligt servicefönster, ska återrapportering (genom ”response_detail”) göras och följande anges

- type_code=I
- code=SERVICE_TEMPORARILY_UNAVAILABLE
- text=”Tjänsten är för tillfället inte tillgänglig” (eller motsvarande text)

För exempel hänvisas till XML-filer som finns i paketeringen av den här tjänsten.

  1. Adressering kopplat till EngagemangsIndex

Om ett system vill dela patientinformation med hjälp av GetEhrExtract ska indexpost(er) i EngagemangsIndex först skapas. Den logiska adressen i en sådan indexpost ska ha samma värde som ”ehr_system” i svaret från GetEhrExtract.

Om information delas genom tjänsten ReceiveEhrExtract och den delade informationen ska vara åtkomlig genom tjänsten GetEhrExtract gäller liknande regler för indexpost/ehr_system/EngagemangsIndex. Exempel: Ett källsystem lagrar sin information i NPÖ genom tjänsten ReceiveEhrSystem. NPÖ skapar då indexpost(er) i EngagemangsIndex och den logiska adressen i indexpost(erna) sätts till värdet för ”ehr_system” (hämtas ur innehållet i anropet till ReceiveEhrExtract). Tjänsteplattformen konfigureras (för logisk adress lika med skickat ”ehr_system”) att dirigera anropen GetEhrExtract till NPÖ.

Om värdet för ”ehr_system” av någon anledning behöver ändras måste EngagemangsIndex uppdateras. (Observera att en ändring av ”ehr_system” därmed direkt påverkar vilken logisk adress som används vid anrop till GetEhrExtract, vilket får konsekvenser för dirigeringen i tjänsteplattformen.)

1. GetEhrExtract

Tjänst som används för att hämta detaljerad patientinformation.

  1. Frivillighet

Tjänsten är obligatorisk för att dela detaljerad patientinformation på formatet EN13606 då själva informationen har indexerats i EngagemangsIndex.

  1. Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

<huvudversion>.<underversion>

  1. SLA-krav

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid | < 3 s | Tjänsteproducenten bör svara inom tre sekunder. För att uppnå detta mål kan det vara aktuellt med begränsning av svarets innehåll/storlek. Tjänsteproducenten ansvarar för att väga patientsäkerhet med prestanda. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Realtid | Svaren ska hämtas från underliggande datalager, vilket innebär att alla förändringar i datalagret direkt syns i svaren. |

  1. Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| subject_of_care | II | Nationellt unikt person-id. | 1..1 |
| purpose | CD | Anger anledningen till anropet. Innehållet i detta fält kan användas/defineras per tjänstekonsument beroende på användningsområde. Vid användning av detta fält måste det finnas en överrenskommelse mellan tjästekonsumenten och tjänsteproducenten. | 0..1 |
| time_period | IVL_TS | Begränsning av sökningen i tid, baserat på kliniskt relevanta datum. Händelser anses ligga inom intervallet, om de till någon del ligger inom intervallet. (Start- och slutpunkt inkluderas i intervallet.) Formatet för start- respektive slutdatum är ÅÅÅÅMMDD. (Exempel på när tidsintervall används är om NPÖs frågetjänst blir anropad med tidsintervall - då propageras intervallet ner till källsystemen.) | 0..1 |
| meanings | CD | En av NPÖ definerad huvudinformationstyp. | 1..1 |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| ehr_extract | EHR_EXTRACT | Detaljerad patientinformation på formatet EN13606. | 0..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |

  1. Regler

Värdet för ”ehr_system” (som återfinns i ”ehr_extract”) måste vara samma som den logiska adressen för denna tjänst. För ytterligare beskrivning på värde för ”ehr_system” (som är en del av svaret) hänvisas till avsnittet 2.4.

Se avsnittet 2.2 för statusrapportering vid följande situationer

- felaktigt anrop
- internt fel
- ingen patientinformation finns
- tjänsten inte är tillgänglig
  1. Tjänsteinteraktion

GetEhrExtractInteraction

1. ReceiveEhrExtract

Tjänst som används för att ta emot detaljerad patientinformation. Tjänsten kan användas då den som äger patientinformation vill publicera den till annan part.

![Figur 3](IMG03) ![Figur 4](IMG04)

  1. Frivillighet

Tjänsten används för de som på eget initiativ vill dela detaljerad patientinformation, på formatet EN13606, till annan part.

  1. Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

<huvudversion>.<underversion>

  1. SLA-krav

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  | Tjänsteproducenten bör ta emot anropet/patientinformationen snabbt. Behandlingen kan sedan ta tid - resultatet av anropet sker genom anrop till ReceiveEhrExtractStatus. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

  1. Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| ehr_extract | EHR_EXTRACT | Detaljerad patientinformation på formatet EN13606. | 1..1 |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten ReceiveEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| success | Boolean | Anger om mottagaren lyckats ta emot innehållet. (Observera att värdet ”true” inte innebär att mottagaren lyckats behandla innehållet. Resultat av behandlingen meddelas genom tjänsten ReceiveEhrExtractStatus.) | 1..1 |

  1. Regler

För statusrapportering vid felaktiga anrop, interna fel eller om ingen patientinformation finns hänvisas till avsnittet 2.2.

För beskrivning på värde för ”ehr_system” (som är en del av svaret) hänvisas till avsnittet 2.4.

”Tomma extrakt” - om inte ”ehr_extract” innehåller någon patientinformation, dvs inte innehåller några ”all_compositions”, ska all tidigare delad information för aktuell patient och aktuell ”ehr_system” tas bort.

Resultatet av behandlingen av anropet meddelas genom anrop till tjänsten ReceiveEhrExtractStatus. Logisk adress för statusanropet är värdet för ”ehr_system” (som hittas i ”ehr_extract”).

  1. Tjänsteinteraktion

ReceiveEhrExtractInteraction

1. ReceiveEhrExtractStatus

Tjänst används för att ta emot status efter ett anrop till ReceiveEhrExtract. Då EN13606 skickas till annan part, genom tjänsten ReceiveEhrExtract, kommer resultatet av behandlingen meddelas genom anrop till ReceiveEhrExtractStatus.

Den logiska adress som används för att anropa denna tjänst är det värde som skickades för ”ehr_system” i anropet till tjänsten ReceiveEhrExtract.

Se även bild i avsnitt 4.

  1. Frivillighet

Tjänsten är obligatorisk för parter som delar sin information med tjänsten ReceiveEhrExtract.

  1. Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

<huvudversion>.<underversion>

  1. SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  | Om en tjänstekonsument delat information med hjälp av tjänsten ReceiveEhrExtract är interaktionen ReceiveEhrExtractStatus kvittot/resultatet på delningen. Om kvittot uteblir ska informationen som skickades i ReceiveEhrExtract betraktas som odelad. Hur lång tid som får förflyta mellan ReceiveEhrExtract och ReceiveEhrExtractStatus är en överrenskommelse mellan respektive tjänstekonsument och tjänsteproducent. |

  1. Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| parameters | ParameterType | Transaktions-id: detta är samma värde som användes i anropet till tjänsten ReceiveEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten ReceiveEhrExtract. | 1..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |
| Svar |  |  |  |
| success | Boolean | Resultatet av anropet. | 1..1 |

  1. Regler

För innehållet i ”response_detail” hänvisas till avsnittet 2.2.

Svaret ska vara ”true” om anropet var korrekt samt att det går att härleda innehållet till ett tidigare anrop till ReceiveEhrExtract, annars ska ”false” returneras.

  1. Tjänsteinteraktion

ReceiveEhrExtractInteraction

1. DeleteEhrExtract

Tjänst som används för att ta bort information som delats genom tjänsten ReceiveEhrExtract.

![Figur 5](IMG05) ![Figur 6](IMG06)

  1. Frivillighet

Tjänsten är frivillig och kan användas för att ta bort information som delats genom tjänsten ReceiveEhrExtract. (Tjänsten ReceiveEhrExtract kan också användas för ”grov” borttagning, vilket beskrivs mer i avsnitt 4.5 - se ”tomma extrakt”.)

  1. Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

<huvudversion>.<underversion>

  1. SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  | Tjänsteproducenten bör ta emot anropet/patientinformationen snabbt. Behandlingen kan sedan ta tid - resultatet av anropet sker genom anrop till DeleteEhrExtractStatus. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

  1. Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| ehr_system | II | Det värde som skickades för patientinformationen då anrop till tjänsten ReceiveEhrExtract gjordes. | 1..1 |
| subject_of_care | II | Id för patienten. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. | 1..1 |
| deletion | DeletionType | Innehåller par av rcId och meaning. <br> rcId: <br> Globalt unikt id för posten som ska tas bort. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. (Värdet hittas i ”ehr_extract.all_compositions.rc_id”.) <br> meaning: <br> Den huvudinformationstyp som posten (som ska tas bort) gäller för. | 1..* |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten DeleteEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| success | Boolean | Anger om mottagaren lyckats ta emot innehållet. (Observera att värdet ”true” inte innebär att mottagaren lyckats behandla innehållet. Resultat av behandlingen meddelas genom tjänsten DeleteEhrExtractStatus.) | 1..1 |

  1. Regler

För statusrapportering vid felaktiga anrop, interna fel eller om ingen patientinformation finns hänvisas till avsnittet 2.2.

För ytterligare beskrivning på värde för ”ehr_system” hänvisas till avsnittet 2.4.

Resultatet av behandlingen av anropet meddelas genom anrop till tjänsten DeleteEhrExtractStatus. Logisk adress för det efterkommande statusanropet är värdet för ”ehr_system” (i anropet till DeleteEhrExtract).

  1. Tjänsteinteraktion

DeleteEhrExtractInteraction

1. DeleteEhrExtractStatus

Tjänst används för att ta emot status efter ett anrop till DeleteEhrExtract. Då begäran om borttagning skickas till annan part, genom tjänsten DeleteEhrExtract, kommer resultatet av borttaget meddelas genom anrop till DeleteEhrExtractStatus.

Den logiska adress som används för att anropa denna tjänst är det värde som skickades som skickades för ”ehr_system” i anropet till tjänsten DeleteEhrExtract.

  1. Frivillighet

Tjänsten är obligatorisk för parter som använder tjänsten DeleteEhrExtract.

  1. Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

<huvudversion>.<underversion>

  1. SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  | Om en tjänstekonsument försökt ta bort tidigare delad information med hjälp av tjänsten DeleteEhrExtract är interaktionen DeleteEhrExtractStatus kvittot/resultatet av borttaget. Om kvittot uteblir ska borttagningsbegäran som skickades i DeleteEhrExtract betraktas som ej hanterad. Hur lång tid som får förflyta mellan DeleteEhrExtract och DeleteEhrExtractStatus är en överrenskommelse mellan respektive tjänstekonsument och tjänsteproducent. |

  1. Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| parameters | ParameterType | Transaktions-id: detta är samma värde som användes i anropet till tjänsten DeleteEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten DeleteEhrExtract. | 1..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |
| Svar |  |  |  |
| success | Boolean | Resultatet av anropet. | 1..1 |

  1. Regler

För innehållet i ”response_detail” hänvisas till avsnittet 2.2.

Svaret ska vara ”true” om anropet var korrekt samt att det går att härleda innehållet till ett tidigare anrop till DeleteEhrExtract, annars ska ”false” returneras.

  1. Tjänsteinteraktion

DeleteEhrExtractInteraction.

| Patientöversikt | <<plats för ägarens loggo>> ![Figur 7](IMG07) |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Utgåva PA1 |
| CeHis arkitekturledning |  | Sida: 4 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 4 av 17

| Patientöversikt | <<plats för ägarens loggo>> ![Figur 8](IMG08) |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Utgåva PA1 |
| CeHis arkitekturledning |  | Sida: 10 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 10 av 17

| Patientöversikt | <<plats för ägarens loggo>> ![Figur 9](IMG09) |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Utgåva PA1 |
| CeHis arkitekturledning |  | Sida: 12 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 12 av 17

| Patientöversikt | <<plats för ägarens loggo>> ![Figur 10](IMG10) |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Utgåva PA1 |
| CeHis arkitekturledning |  | Sida: 14 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 14 av 17

| Patientöversikt | <<plats för ägarens loggo>> ![Figur 11](IMG11) |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Utgåva PA1 |
| CeHis arkitekturledning |  | Sida: 16 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 16 av 17

| Slutrapport | ![Figur 12](IMG12) | Dok.beteckning |
|---|---|---|
| Målbild och färdplan |  | Utgåva PA5 |
| CeHis Arkitekturledning |  | Sida: 68 (23) |
| 2012-11-16 |  |  |

| Nationell Tidbokning | ![Figur 13](IMG13) | Dok.beteckning |
|---|---|---|
| Tjänstekontrakt |  | Utgåva A |
| CeHis Arkitekturledning |  | Sida: 17 (17) |
| Utskriftsdatum: 2012-11-16 |  |  |

Sida 68 (23)

Sida 17 (17)

I arbetet har följande personer deltagit:

Hjalmar Jacobson, Lead Architect, Tieto

Johan Eltes, Cehis Arkitekturledning, Tekniska Expertgruppen

KEY

2

2

1

1

Mellan-lager

Tjänste-

plattform

Anslutning/källa

Synkront anrop

1: Anrop till ReceiveEhrExtract

2: Anrop till ReceiveEhrExtractStatus

Anrop nummer 2 sker asynkront i förhållande till anrop 1.

KEY

2

2

1

1

Mellan-lager

Tjänste-

plattform

Anslutning/källa

Synkront anrop

1: Anrop till DeleteEhrExtract

2: Anrop till DeleteEhrExtractStatus

Anrop nummer 2 sker asynkront i förhållande till anrop 1.
