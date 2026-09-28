# 4 Tjänstedomänens krav och regler - clinicalprocess: activity: request — Remisshantering v2.2.0

* [**Table of Contents**](toc.md)
* **4 Tjänstedomänens krav och regler**

## 4 Tjänstedomänens krav och regler

## Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

### Informationssäkerhet och juridik

Se Informationsspecifikation för denna domän [R5].

### Icke funktionella krav

#### SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | 2 sekunder |   |
| Tillgänglighet | 24x7, 99,5% |   |
| Last | Anpassat efter respektive verksamhets remissflöde |   |
| Aktualitet | N/A |   |

#### Övriga krav

### Felhantering

I ett response (svaret på ett anrop) anges om anropet lyckades eller inte. Ett lyckat anrop anges med koden OK eller INFO i fältet result.resultCode. För ett anrop som misslyckas på grund av ett logiskt fel sätts result.resultCode till ERROR. Om anropet misslyckas på grund av ett tekniskt fel returneras istället ett meddelande av typen SOAP Fault. Mer information finns nedan och i regel #11 RIV Tekniska Anvisningar Tjänsteschema [R6].

#### Krav på en tjänsteproducent

Ett anslutet system skall vara förberett på att något system kan interagera med fel aktör vid fel tidpunkt. Ett anslutet system skall vara förberett på att en interaktion sker vid fel tillfälle och försöka hantera det som mottagits om möjligt (exempelvis bekräftelsemeddelanden som kommer in vid fel tidpunkt i processen).

##### Logiska fel

För logiska fel returneras koden ERROR i result.resultCode tillsammans med en förklarande text i fältet result.message. I fältet result.errorCode anges vilken typ av logiskt fel som inträffat. Det finns två olika typer av logiska fel som används i tjänstekontrakten - VALIDATION_ERROR och APPLICATION_ERROR. För vissa specifika logiska fel (av typen APPLICATION ERROR) finns felkoder framtagna för att beskriva felet på ett standardiserat sätt - då sätts fältet result.subcode med aktuell kod och result.message kan sättas till kodens klartext eller beskrivning (se tabell nedan). VALIDATION_ERROR Meddelandet som skickats är ej korrekt utifrån de regler som gäller för tjänstekontraktet. En förklarande result.message kan närmare peka på vilken regel som ej efterföljts. Detta fel kan generas när ett meddelande tekniskt inte validerar mot det underliggande XML-schemat eller då det inkommande meddelandet bryter mot en schematronregel. APPLICATION_ERROR Denna typ av fel används då meddelandet som skickats är tekniskt korrekt i alla aspekter men den önskade tjänsten inte kan utföras på grund av att processen befinner sig i ett läge då den önskade tjänsten inte kan genomföras eller om den på grund av lokala verksamhetsregler inte kan genomföras. Mer information om felet skall skickas i fältet result.message eller i fältet result.subcode beroende på typ av fel. Exempelvis kan inte en remiss spontant kompletteras efter att den är bedömd av remissmottagande enhet, eller efter att den har vidareskickats till en annan mottagare. Denna typ av fel kan också returneras på grund av lokala verksamhetsregler eller begränsningar som inte specificerats nationellt men som hindrar den önskade tjänsten från att utföras. Från den bifogade felmeddelandetexten bör en användare kunna förstå varför felet uppkom samt vad som är lämplig åtgärd att vidta härnäst. Tabell felkoder Tabellen nedan innehåller nationellt överenskomna felkoder för Elektronisk remiss. Felkoder ska skickas vid vissa logiska fel av typen APPLICATION_ERROR för att ytterligare beskriva felet på ett standardiserat sätt. Se kolumnen Beskrivning för när felkoden ska skickas. Felkoden skickas i fältet result.subcode. Kodens klartext eller beskrivning kan skickas i result.message. Listan innehåller felkoder för alla tre kontrakten. Felkoder som börjar på PR skickas enbart i tjänstekontraktet ProcessRequest, de som börjar på PRC skickas enbart i tjänstekontraktet ProcessRequestConfirmation och de som börjar på PRO skickas enbart i tjänstekontraktet ProcessRequestOutcome.

| | | |
| :--- | :--- | :--- |
| PR001 | Remitterande organisations HSA-id okänt för mottagaren | Remissmottagande system kan inte slå upp HSA-id för remitterande organisation. Remissen kan inte tas emot. |
| PR002 | Remissmottagaren kan inte ta emot vidareskickade remisser | Remissen kan inte tas emot av remissmottagarens system eftersom remissen är av typen vidareskickad. |
| PR003 | Remissmottagare kan inte ta emot remissen med bifogad bilaga | Remiss med bilaga kan inte tas emot av mottagande system. Orsak kan vara att bilagans filformat inte stödjs. Remissen behöver skickas om utan bilaga, och bilagan behöver skickas om manuellt på annat sätt. |
| PR004 | Remissmottagaren hanterar inte angivet reservnummerformat. | Remiss kan inte tas emot av mottagande system eftersom formatet för patientens reservnummer inte kan hanteras av mottagaren. Remiss behöver skickas om manuellt på annat sätt. |
| PRC001 | Remissmottagande organisations HSA-id okänt | Remittentens system kan inte slå upp HSA-id för remissmottagande organisation som skickat meddelande. Meddelandet kan inte tas emot. |
| PRC002 | Remissen är okänd hos remittent, meddelandet kan inte tas emot | Meddelandet kan inte tas emot hos remittent eftersom meddelandet gäller en okänd remiss. Orsak kan t ex vara att meddelande skickats till fel mottagare. |
| PRC003 | Remissen är avbruten, makulerad eller avvisad hos remittent, meddelandet kan inte tas emot | Meddelandet kan inte tas emot hos remittent eftersom det gäller en avbruten, makulerad eller avvisad remiss. |
| PRC004 | Ursprunglig remittent kan inte ta emot besked om vidareskickad remiss. | Meddelandet kan inte tas emot av den ursprungliga remittentens system eftersom det gäller en vidareskickad remiss. |
| PRO001 | Remissbesvarande organisations HSA-id okänt för mottagaren | Remittentens system kan inte slå upp HSA-id för remissbesvarande organisation. Remissvaret kan inte tas emot. |
| PRO002 | Remissen är okänd hos remittent, remissvaret kan inte tas emot | Remissvaret kan inte tas emot hos remittent eftersom svaret gäller en okänd remiss. Orsak kan t ex vara att remissvaret skickats till fel mottagare. |
| PRO003 | Remissen är avbruten eller makulerad hos remittent, remissvaret kan inte tas emot. | Remissvaret kan inte tas emot hos remittent eftersom meddelandet gäller en avbruten eller makulerad remiss. |
| PRO004 | Remissvarsmottagare kan inte ta emot remissvaret med bifogad bilaga. | Remissvaret med bilaga kan inte tas emot av mottagande system. Orsak kan vara att bilagans filformat inte stödjs. Remissvaret behöver skickas om utan bilaga, och bilagan behöver skickas om manuellt på annat sätt. |

##### Tekniska fel

Vid ett tekniskt fel levereras ett generellt undantag (SOAP Fault). Exempel på detta kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Tekniska fel får inte förmedla personuppgifter, istället rekommenderas att ett log-id förmedlas, som ger möjlighet för tjänsteproducentens förvaltning att bistå tjänstekonsumentens förvaltning med felsökning.

#### Krav på en tjänstekonsument

Alla deltagande system skall strikt uppfylla de krav som ställs på dem i respektive aktörsroll. Alla deltagande system i remissprocessen skall vara förlåtande mot brister i övriga system.

##### Logiska fel

VALIDATION_ERROR - Konsumenten ska inte sända om meddelandet eftersom det kommer att ge samma fel. Felsökning bör göras för att veta vilken åtgärd som behövs för att rätta till felet. APPLICATION_ERROR - Konsumenten ska försöka med ett begränsat antal automatiska omsändningar. En omsändning av information kan komma att ge samma fel eller lyckas. Om omsändning inte lyckas skall en felsignal ges användare och systemansvarig för att säkerställa att problem med remissmeddelandet uppmärksammas och felsökning genomförs.

##### Tekniska fel

Konsumenten bör försöka med ett begränsat antal automatiska omsändningar vid tekniska fel eftersom detta kan antas bero på temporära fel. Om omsändning inte lyckas skall en felsignal ges användare och systemansvarig för att säkerställa att problem med remissflödet uppmärksammas och felsökning genomförs.

