
Elektronisk Födelseanmälan

Elektronisk Födelseanmälan

Tjänstekontraktsbeskrivning

Utgåva PA1

2012-04-13

Revisionshistorik

| Version | Revision Datum | Komplett beskrivning av ändringar | Ändringarna gjorda av | Definitiv revision fastställd av |
|---|---|---|---|---|
| PA1 | 2012-04-13 | Utkast | Ola Deibitsch | <namn> |

Innehållsförteckning

# 1 Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen healthcertificate:lifeline (huvuddomän ”healthcertificate”, underdomän ”lifeline”). Den svenska benämningen är ”Elektronisk Födelseanmälan”.

Tjänstedomänen omfattar tjänstekontrakt för elektronisk födelseanmälan, eFA. Den kravställande processen är förlossningjournalsystemens behov av att kunna utöra en elektronisk födelseanmälan gentemot Skatteverket för att erhålla ett personnummer i retur, givet att Skatteverkets verksamhetesregler tillåter detta.

Tjänstekontraktsbeskrivningen är ett teknik-oberoende, formellt regelverk som reglerar integrationskrav mellan parter (tjänstekonsumenter och tjänsteproducenter) med behov av elektronisk samverkan i ett speciellt syfte (i detta fall integration mellan nationella tjänster och lokala informationkällor.

Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks detta dokument. Tjänsteproducenter och konsumenter ska följa regelverket i RIVTA 2.1 med avseende på säkerhet och publicering av s.k. ping-tjänst.

![Figur 1](IMG01) ![Figur 2](IMG02)

# 2 Generella regler

## 2.1 Format på Personnummer

Personnummer vid fråga anges på formatet ÅÅÅÅMMDDNNNN

## 2.2 Felhantering

Vid ett tekniskt fel levereras ett generellt undantag (SOAP-Exception). Exempel på felsituationer som rapporteras som tekniskt fel kan vara deadlock i databasen eller följdeffekter av programmeringsfel. Denna information bör loggas av tjänstekonsumenten. Informationen är inte riktad till användaren.

Användaren kommer enbart att se ”tekniskt fel - inte detaljinformation. Den riktar sig till systemförvaltaren.

Vid ett logiskt fel i de uppdaterande tjänsterna levereras en ResultCode och comment. Syftet med comment är att tjänstekonsumenten av tjänsten ska kunna visa upp informationen för invånaren.

ResultCode kan vara:

- OK transaktionen har utförts enligt uppdraget.
- INFO transaktionen har utförts enligt uppdraget, men det finns ett meddelande som tjänstekonsumenten måste visa upp för invånaren.
- ERROR transaktionen har INTE kunnat utföras p.g.a. logiskt fel. Det finns ett meddelande som konsumenten måste visa upp.

# 3 BirthRegistration

Tjänstekontraktet för eFa består av en WSDL-fil samt en eller flera XML Scheman (XSD-filer)

- En WSDL-fil beskriver en webbtjänst; dess funktioner och hur dessa ska anropas.
- Ett XML Schema beskriver strukturen på informationen och vilken typ av information som är tillåtet i ett meddelande. Det är med andra ord en teknik för att definiera tillåtna element och attribut för ett XML-meddelande

I tjänsteinteraktionen BirthRegistration ingår XML Schemat BirtRegistrationResponder_1.0.xsd som beskriver informationen i en födelseanmälan och ett anmälanssvar.

Beskrivningen av schemat bygger på information som tillhandahållits av eFa-förvaltning i form av dokumentet eFa_Födelseanmälan_tjänstebeskrivning_v0.4.pdf.

## 3.1 Frivillighet

Obligatoriskt

## 3.2 Version

1.0

## 3.3 SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

## 3.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| /BirthRegistration |  |  |  |
| FodelseanmalanId | string | Unikt id | 1..1 |
| /BirthRegistration/Dokumentuppgifter |  |  |  |
| Ingivarnamn | string | Namnet på sjukhus, klinik eller motsvarande samt namnet på barnmorska eller motsvarande. Max 100 tecken. | 1..1 |
| AnmalningsTyp | string | Får endast ha värde: <br> "NYANMALD" <br> "RATTAD" <br> "MAKULERAD " | 1..1 |
| AnmalningsId | string | Riksunikt id som sätts av vården själva. Vården bestämmer formatet. Max 80 tecken, | 1..1 |
| Ingivartelefon | string | Telefonnummer till den barnmorska/klinik som är ingivare av anmälan. Max 15 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder/ |  |  | 1..1 |
| /BirthRegistration/Arendeuppgifter/Moder/Namn |  |  | 0..1 |
| Fornamn | string | Förnamn på modern enligt patientuppgift t.ex namn från patientbricka. Skatteverket har inga krav på uppgift om fullständigt namn. Max 100 tecken | 0..1 |
| Mellannamn | string | Mellannamn på modern. Max 100 tecken | 0..1 |
| Efternamn | string | Efternamn på modern. Max 100 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder/Fodelsedatum |  | Uppgift om födelsedatum ska lämnas i de fall modern saknar fullständigt personnummer | 0..1 |
| FodelseAr | string | Födelseår för modern. Saknar vården uppgift sätts värdet till 0000. Sekel inkluderat. 4 tecken. | 0..1 |
| FodelseManad | string | Födelsemåndad för modern. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| FodelseDag | string | Födelsedag för modern. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/Moder |  | I de fall fullständigt personnummer finns på modern ska inte uppgift om födelsedatum lämnas. |  |
| PersonNummer | long | Moderns fullständiga personnummer. Sekel inkluderat. 12 tecken. ÅÅÅÅMMDDXXXX | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/ |  |  | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/Namn |  |  | 0..1 |
| Fornamn | string | Förnamn på moderns make. Skatteverket har inga krav på uppgift om fullständigt namn. Max 100 tecken. | 0..1 |
| Mellannamn | string | Mellannamn på moderns make. Max 100 tecken. | 0..1 |
| Efternamn | string | Efternamn på moderns make. Max 100 tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake/Fodelsedatum |  | Uppgift om födelsedatum ska lämnas i de fall moderns make saknar fullständigt personnummer | 0..1 |
| FodelseAr | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 0000. Sekel inkluderat. 4 tecken. | 0..1 |
| FodelseManad | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| FodelseDag | string | Födelseår för moderns make. Saknar vården uppgift sätts värdet till 00. 2 Tecken. | 0..1 |
| /BirthRegistration/Arendeuppgifter/ModersMake |  | I de fall fullständigt personnummer finns på moderns make ska inte uppgift om födelsedatum lämnas. |  |
| PersonNummer | long | Sekel inkluderat. 12 tecken. <br> ÅÅÅÅMMDDXXXX | 0..1 |
| /BirthRegistration/Arendeuppgifter/Barn |  |  | 1..1 |
| DatumFodelse | datum | Barnets födelsedatum. Får ej vara senare än dagens datum. Sekel inluderat. 10 tecken. <br> ÅÅÅÅ-MM-DD | 1..1 |
| Kon | string | Barnets kön. Då uppgift saknas lämnas elementet tomt. <br> Max 6 tecken. Får endast ha värde <br> "FLICKA" <br> "POJKE" | 0..1 |
| OrdningsNr | int | Födelseordningsnummer för barnet i förhållande till övriga syskon som fötts vid samma förlossningstillfä lle. <br> Det har ingen betydelse om barnen (syskonen) var levande eller döda vid förlossningen. OrdningsNr ska beskriva i vilken ordning det aktuella barnet föddes fram. <br> Ex 1: Om modern fött trillingar och detta är det andra barnet av de tre anges värdet "2" som OrdningsNr för det aktuella barnet. <br> Ex 2: Om födelsen avser en singel födelse anges värdet "1" som OrdningsNr. ![Figur 3](IMG03) <br> 1 tecken. Värdet ska finnas i intervallet 1-9. | 1..1 |
| AntalBarn | int | Totalt antal födda barn av samma moder vid förlossningen. Det har ingen betydelse om barnen var levande eller döda vid förlossningen. Samtliga barn ska ingå. <br> Ex 1: Om modern fött trillingar anges värdet "3" för elementet AntalBarn. <br> Ex 2: Om det är en singel födelse anges värdet "1". <br> OBS: förhållandet mellan de värden som levereras i elementen OrdningsNr och AntalBarn måste vara rimligt. Det kan t ex aldrig förekomma OrdningsNr "3" tillsammans med AntalBarn "2". <br> OrdningsNr kan bara vara mindre eller lika med AntalBarn. <br> 1 tecken. Värdet ska finnas i intervallet 1-9. | 1..1 |
| FodelseKommun | string | Namnet på den kommun där barnet förlöstes I klartext. <br> T.ex kommun där födelsekliniken är belägen eller den kommun där taxin befann sig då förlossningen skedde i en taxi. <br> Max 30 tecken | 1..1 |
| Levande | string | Då barnet var levande vid födelsen anges värdet "JA" annars anges värdet "NEJ". <br> Endast ett värde får anges: <br> Får endast ha värde <br> "JA" <br> "NEJ" | 1..1 |
| /BirthRegistration/Arendeuppgifter/Vistelseadress |  | Om uppgift om Vistelseadress lämnas är AdressRad1 obligatorisk | 0..1 |
| AdressRad1 | string | Första raden i adressen. Max 35 tecken. <br> Vården använder den vistelseadress i Sverige man fått från modern. Uppgiften används för att kunna nå en moder som inte är permanent bosatt i Sverige. <br> Skatteverket har inga krav på hur uppdelningen av adressen görs så länge antal tecken inom varje element understiger 35 tecken. | 1..1 |
| AdressRad2 | string | Andra raden i adressen. Max 35 tecken | 0..1 |
| AdressRad3 | string | Tredje raden i adressen. Max 35 tecken | 0..1 |
| AdressRad4 | string | Fjärde raden i adressen. Max 35 tecken | 0..1 |
| AdressRad5 | string | Femte raden i adressen. Max 35 tecken | 0..1 |
| /BirthRegistration/Arendeuppgifter/Bostadsadress |  |  | 0..1 |
| AdressRad1 | string | Första raden i adressen. Max 35 tecken. <br> Vården använder den bostadsadress i utlandet man fått från modern. Uppgiften används för att kunna nå en moder som inte är permanent bosatt i Sverige. <br> Skatteverket har inga krav på hur uppdelningen av adressen görs så länge antal tecken inom varje element understiger 35 tecken. | 1..1 |
| AdressRad2 | string | Andra raden i adressen. Max 35 tecken | 0..1 |
| AdressRad3 | string | Tredje raden i adressen. Max 35 tecken | 0..1 |
| AdressRad4 | string | Fjärde raden i adressen. Max 35 tecken | 0..1 |
| AdressRad5 | string | Femte raden i adressen. Max 35 tecken | 0..1 |
|  |  |  | 0..1 |
| /BirthRegistration/Arendeuppgifter |  |  |  |
| KontaktTelefon | string | Max 20 tecken. <br> Telefonnummer till moder. <br> Uppgiften används för att kunna nå en moder som inte är permanent bosatt I Sverige. | 0..1 |
| KontaktTelefon2 | string | Max 20 tecken | 0..1 |
| KontaktTelefon3 | string | Max 20 tecken | 0..1 |
| KontaktTelefon4 | string | Max 20 tecken | 0..1 |
| KontaktTelefon5 | string | Max 20 tecken | 0..1 |
| Svar |  |  |  |
| /BirthRegistrationResponse |  |  |  |
| FodelsesvarId | string | Unikt id. Unikt id som sätts av tjänsteproducent | 1..1 |
| AnmalningsId | string | Det anmälnings-id som vården angett som identitet för den aktuella födelseanmälan. Max 80 tecken. | 1..1 |
| PersonNummer | long | Barnets fullständiga personnummer som Skatteverket tilldelat det nyfödda barnet.. <br> Sekel inkluderat. 12 tecken. <br> ÅÅÅÅMMDDXXXX. | 1..1 |
| /BirthRegistrationResponse/Meddelande |  | I de fall ett personnummer inte kunde tilldelas barnet levererar Skatteverket ett orsaksmeddelande istället. | 1..1 |
| AnmalanMottagen | string | "JA" anger att anmälan är mottagen av Skatteverket och "NEJ" att anmälan inte har mottagits. <br> En mottagen anmälan ska INTE sändas in igen. En anmälan som Skatteverket inte kunnat ta emot får sändas om. <br> Får endast ha värde <br> "JA" <br> "NEJ" | 1..1 |
| MeddelandeKod | int | MeddelandeKod indikerar orsaken till att ett personnummer inte returnerats. <br> Förteckning över förekommande koder och beskrivning, se rubrik "Lista över meddelandekoder". <br> Värde inom intervallet givet av tabell med meddlandekoder. | 1..1 |
| MeddelandeText | string | Text som ger ytterligare information utöver MeddelandeKod om felorsak. Endast avsedd att nyttjas vid utveckling/felsökning. | 1..1 |

## 3.5 Regler

De koder och dess beskrivningar som returneras då ett personnummer inte kan tilldelas.

| Kod | Text | Mottagen | Skatteverkets beskrivning |
|---|---|---|---|
| 101 | Anmälan kan ej tas emot. Skicka ny anmälan. | Nej | Anmälan kan ej tas emot, ny anmälan krävs från Vården. |
| 201 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan avser inte "nyanmälan", tilldelning av personnummer får inte ske. |
| 202 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan om födelse har redan inkommit för det aktuella barnet. Personnummer får inte tilldelas, SKV kontroll - dubblettanmälan? |
| 203 | Anmälan mottagen. Personnummer kan ej tilldelas. | Ja | Barnet var inte levande vid födelsen, personnummer tilldelas inte dödfödda barn. |
| 204 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Barnets födelsedatum har fel format, senare än dagens datum eller mer än 14 dagar bakåt i tiden, manuell kontroll krävs. |
| 205 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Uppgift om antal barn respektive ordningsnummer för barnet är felaktigt/orealistiskt i något avseende, manuell kontroll krävs. |
| 301 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern var inte folkbokförd vid födelsen, manuell kontroll krävs. |
| 302 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Felaktigt kön på modern - Moderns kön enligt personnummer utvisar "Man", manuell kontroll krävs. |
| 303 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern har andra pågående ärenden som kan innebära att barnet inte ska folkbokföras, manuell kontroll krävs. |
| 304 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Modern är yngre än 10 år eller äldre än 60 år, manuell kontroll krävs. |
| 305 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Uppgift om barnets kön saknas i anmälan, manuell komplettering krävs. |
| 401 | Anmälan mottagen. Skatteverket skickar underrättelse till barnets förälder. | Ja | Anmälan mottagen, automatisk tilldelning av personnummer kunde inte ske pga internt tekniskt fel. |
| 501 | Anmälan kan ej tas emot. Skicka ny anmälan. | Nej | Oväntat tekniskt fel, SKV kan inte lämna uppgift om när felet kan vara åtgärdat. Anmälan måste göras på nytt. |

| Elektronisk Födelseanmälan |  |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Baserad på mall revision A |
| <ägande organisation> |  | Sida: 5 (12) |
| Utskriftsdatum: 2012-04-16 |  |  |

| <svenskt namn på tjänstedomän> |  |  |
|---|---|---|
| Tjänstekontraktsbeskrivning |  | Baserad på mall revision A |
| <ägande organisation> |  | Sida: 7 (11) |
| Utskriftsdatum: 2012-04-16 |  |  |

| Slutrapport | ![Figur 4](IMG04) | Dok.beteckning |
|---|---|---|
| Målbild och färdplan |  | Utgåva PA5 |
| CeHis Arkitekturledning |  | Sida: 68 (23) |
| 2012-04-16 |  |  |

| Elektronisk Födelseanmälan | ![Figur 5](IMG05) | Dok.beteckning |
|---|---|---|
| Tjänstekontrakt |  | Utgåva A |
| CeHis Arkitekturledning |  | Sida: 12 (12) |
| Utskriftsdatum: 2012-04-16 |  |  |

Sida 68 (23)
