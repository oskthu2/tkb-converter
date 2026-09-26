
MeddelandeTjänst

Meddelandetjänst

Tjänstekontraktsbeskrivning

Version 1.0.0

2013-12-04

Revisionshistorik

| Revision Nr | Revision Datum | Beskrivning av ändringar | Ändringar gjorda av | Granskad av |
|---|---|---|---|---|
| PA1 | 2013-11-06 | Första version | Mats Ekhammar, Callista Enterprise AB |  |
| PA2 | 2013-11-21 | Ändrad beskrivning av informationsmodell efter granskningskommentar från CeHis. | Mats Ekhammar, Callista Enterprise AB | CeHis, arkitektur och regelverk |
| 1.0 | 2013-12-04 | Godkänd och kategoriserad till gemensam | Mats Ekhammar, Callista Enterprise AB | CeHis, arkitektur och regelverk |

Referenser

| Namn | Dokument | Kommentar | Länk |
|---|---|---|---|
| R1 | Arkitekturella beslut - Meddelandetjänst | Obligatoriskt |  |

Innehållsförteckning

1 Inledning

- Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen infrastructure:itintegration:messagebox (infrastruktur:tjänsteförmedlingstjänster:meddelandetjänst). Den svenska benämningen är ”Nationella Tjänstekontrakt för Meddelandetjänsten”.

Tjänstekontraktsbeskrivningen är ett teknisk-oberoende, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt . Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).

Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

Denna tjänstekontraktsbeskrivning redovisar inte hur ett meddelande hamnar i Meddelandetjänsten då denna tjänst är tänkt att hantera alla typer av tjänstekontrakt. Dvs den ändpunkt som tar emot meddelanden låses ej till ett specifikt tjänstekontrakt.

  1. Översikt

Nedanstående bild visar schematisk vilka system som använder tjänstedomänens tjänstekontrakt. Det finns följande huvudflöden:

- Lista, hämta och ta bort meddelanden.

![Figur 1](IMG01)

![Figur 2](IMG02) ![Figur 3](IMG03)

- Versionsinformation

Denna revision av tjänstekontraktsbeskrivningen avser version 1.0.0. Detta är den version som är den senast publicerade på RIV TA's hemsida för tjänstedomänen.

  1. Version 1.0.0
    1. Oförändrade tjänstekontrakt

Inga oförändrade tjänstekontrakt då detta är första versionen.

    1. Nya tjänstekontrakt
- ListMessages, version 1.0
- GetMessages, version 1.0
- DeleteMessages, version 1.0
    1. Förändrade tjänstekontrakt

Inga förändrade tjänstekontrakt då detta är första versionen.

    1. Utgångna tjänstekontrakt

Inga tjänstekontrakt har utgått.

- Tjänstedomänenens arkitektur

Detta kapitel beskriver de flöden som är relevanta för tjänstedomänen. Beskrivningarna är i form av modeller, för varje flöde finns dels ett arbetsflöde som beskriver vilka steg som ingår i flödet och dels ett sekvensdiagram som tar hänsyn till vilka tjänstekontrakt som nyttjas i de olika stegen.

  1. Lista, hämta och ta bort meddelanden

Nedanstående diagram visar hur meddelanden listas, hämtas och tas bort.

    1. Arbetsflöde

![Figur 4](IMG04)

      1. Roller

| Namn/beteckning | Beskrivning |
|---|---|
| Journalsystem | Aktören är i detta fallet ett system, dvs ingen individ är inblandad. |

      1. Arbetssteg

| Namn/beteckning | Beskrivning |
|---|---|
| Lista meddelanden | Ett anrop görs för att se om det finns meddelanden, anropet kan begränsas map verksamheter och tjänstekontrakt. De meddelanden som eventuellt finns returneras med identiteter som svar på denna förfrågan. |
| Hämta meddelanden | Ett anrop görs med meddelande identiteter för att hämta hela meddelanden. |
| Ta bort meddelanden | Efter att ha sparat meddelandet görs ett anrop för att ta bort dessa från tjänsten. |

      1. Informationsmängder

| Namn/beteckning | Beskrivning |
|---|---|
| Meddelandeidentiteter | Begränsad informationsmängd som identifierar meddelande. |
| Meddelande | Den informationsmängd som utgör ett helt meddelande. |

      1. Informationslager

| Namn/beteckning | Beskrivning |
|---|---|
| Journalsystem | System som använder Meddelandetjänsten som mellanlagring av meddelanden adresserade till verksamheter som systemet hanterar. |
| Meddelandetjänsten | Ett system för mellanlagring av meddelanden. |

    1. Sekvensdiagram

Nedanstående sekvensdiagram beskriver vilka tjänstekontrakt som används i det ovan beskrivna flödet. Tjänstekontrakt som används är ListMessages, GetMessages och DeleteMessages.

![Figur 5](IMG05)

Ovanstående sekvensdiagram visar:

- Hur ett journalsystem listar, hämtar och tar bort meddelanden i Meddelandetjänsten.
  1. Obligatoriska kontrakt

Följande tabell anger vilka kontrakt som är obligatoriska att realisera för respektive flöde.

| Tjänstekontrakt | Flöde 3.1 |
|---|---|
| ListMessages | X |
| GetMessage | X |
| DeleteMessage | X |

  1. Adressering
    1. Lista, hämta och ta bort meddelanden

De logiska adresserna är till meddelandetjänsten, som representeras av Ineras organisationnummer.

  1. Aggregering och engagemangsindex

Används ej i denna version.

- Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

  1. Informationssäkerhet och juridik
    1. Krav på en tjänsteproducent
      1. Informationssäkerhet

De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.

Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas. En tjänsteproducent ger åtkomst till sina tjänster genom avtal som Tjänsteplattformen hanterar och verkställer för en tjänstekonsument.

    1. Krav på en tjänstekonsument
      1. Informationssäkerhet

De flesta tjänstekontrakt i domänen hanterar känslig information och klassas som patientuppgifter.

Detta betyder att de krav som PDL (Patient Data Lagen) ställer på hur informationen hanteras skall beaktas när hälso- och sjukvårdspersonal är mottagare av denna information. I dagsläget kan en tjänstekonsument komma åt alla meddelanden i Meddelandetjänsten efter att behörighet givits. Därför är det av största vikt att endast meddelanden avsedda för de verksamheter som Tjänstekonsumenten representerar hämtas och tas bort från tjänsten. En tjänstekonsument representeras alltid av ett system och därmed inte av en inloggad användare.

  1. Felhantering

Ett logisk fel returneras i ett response (result) och anger om anropet lyckades eller ej (resultCode). Ett lyckad anrop motsvaras av OK eller INFO. Om INFO returneras finns mer information som anger under vilka specifika omständigheter anropet ansågs vara lyckat av mottagaren.

Ett tekniskt fel returnerar ett SoapFault.

    1. Logiska fel

Då felkoden ERROR returneras (resultCode) skall typen av fel returneras i errorId. Idag finns det definierat 2 errorId:

- 1 = INTERNAL

Ett internt fel inträffade i tjänsten. Ytterligare information om felet kan finnas i fältet errorText.

- 2 = UNREAD_DELETE

Ett försök gjordes att ta bort ett meddelande som ej tidigare hämtats.

    1. Tekniska fel (SoapFault)

Denna typ av fel kan likställas vid ovanstående tekniska fel. En omsändning av informationen bör göras enligt ett förutbestämt schema, dock med ett begränsat antal försök.

  1. Krav på en tjänstekonsument
    1. Omsändning vid fel

En strategi för omsändning av anrop bör finnas i de fall en tjänstekonsument agerar som en proxy för att system. Dvs ansvaret för att anrop genomförs har delegerats till denna proxy.

Omsändningstrategin skall innehålla ett begränsat antal försök under ett ökande tidsintervall. Dessutom skall den endast tillämpas vid tekniska fel.

  1. Krav på en tjänsteproducent
    1. SLA krav

Följande generella SLA-krav gäller för alla tjänsteproducenter som tillhandahåller tjänster. Dessa krav gäller där inget annat anges för ett specifikt tjänstekontrakt.

| Kategori | Värde | Beskrivning |
|---|---|---|
| Svarstid | < 1 sekund för 95% av alla anrop |  |
| Tillgänglighet | 24x7, 99,5% |  |
| Last | 1 transaktion per sekund |  |
| Aktualitet | Alla information skall alltid vara uppdaterad. |  |
| Återställningstid | 1 dygn | Vid katastrof, bortfall av hel hall |

- Tjänstedomänens meddelandemodeller

Här beskrivs den meddelandemodell som tjänstekontrakten bygger på. All information i modellen beskriver metainformation kring ett meddelande som hanteras i Meddelandetjänsten. Denna metainformation är inte relevant att mappa mot V-TIM 2.2 då den enbart består av enkla datatyper.

  1. Lista, hämta och ta bort meddelande

![Figur 6](IMG06)

  1. Format regler
    1. Datum

Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

    1. Datum och Tid

Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

    1. Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

- Tjänstekontrakt
  1. ListMessages

Tjänsten listar meddelanden som finns i Meddelandetjänsten.

    1. Version

1.0

    1. Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| targetOrganizations | string | Verksamheter | 0..n |
| serviceContractTypes | string | Tjänstekontrakt | 0..n |
| Svar |  |  |  |
| result |  | Resultat | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | int | Enda möjliga är 1=INTERNAL | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| messageMetas |  |  | 0..n |
| messageMetas.messageId | long | Meddelandeidentitet | 1..1 |
| messageMetas.targetOrganization | logicalAdressType | Verksamhet | 1..1 |
| messageMetas.serviceContractType | ServiceContractType | Tjänstekontrakt | 1..1 |
| messageMetas.messageSize | long | Meddelandestorlek (bytes) | 1..1 |
| messageMetas.arrivalTime | dateTime | Ankomsttid för meddelandet | 1..1 |
| messageMetas.status | MessageStatusType | Status på meddelandet | 1..1 |

    1. Övriga regler
      1. ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

  1. GetMessages

Tjänsten hämtar ett meddelande baserat på en meddelandeidentitet från Meddelandetjänsten.

    1. Version

1.0

    1. Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| messageIds | long | Meddelandeidentiteter | 1..n |
| Svar |  |  |  |
| result |  | Resultat | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | int | Enda möjliga är 1=INTERNAL | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| responses |  | Svar | 0..n |
| messageMetas.messageId | long | Meddelandeidentitet | 1..1 |
| messageMetas.targetOrganization | logicalAdressType | Verksamhet | 1..1 |
| messageMetas.serviceContractType | ServiceContractType | Tjänstekontrakt | 1..1 |
| messageMetas.message | string | Ursprungsmeddelandet som en sträng. | 1..1 |

    1. Övriga regler
      1. ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

      1. ResultCode INFO

Returneras om inte alla angivna meddelanden kunde returneras som begärdes i begäran.

  1. DeleteMessages

Tjänsten tar bort meddelande och som tidigare hämtats(GetMessages). Både begäran och svar består av xml-dokument.

    1. Fältregler

Nedanstående tabell beskriver varje individuellt fält i begäran och svar. Kardinaliteten beskriver om ett fält är valfritt (0..1) eller obligatoriskt (1..1).

| Namn | Typ | Beskrivning | Kardinalitet |
|---|---|---|---|
| Begäran |  |  |  |
| messageIds | long | Meddelandeidentitet | 1..n |
| Svar |  |  |  |
| result |  |  | 1..1 |
| result.code | string | Information om anropet gick bra(OK, ERROR, INFO) | 1..1 |
| result.errorId | string | Enda möjliga är: <br> 1=INTERNAL, 2=UNREAD_DELETE | 0..1 |
| result.errorMessage | string | Text som ytterliggare beskriver felet | 0..1 |
| deletedIds | long | Meddelandeidentitet | 0..n |

    1. Övriga regler
      1. ResultCode ERROR, errorId INTERNAL

Returneras vid ett internt fel hos hos tjänsteproducenten, errorMessage beskriver ytterliggare felet.

      1. ResultCode ERROR, errorId UNREAD_DELETE

Returneras då man försöker ta bort meddelanden som ej är lästa.

      1. ResultCode INFO

Returneras om inte alla angivna meddelanden kunde tas bort.

| Slutrapport | ![Figur 7](IMG07) | Dok.beteckning |
|---|---|---|
| Målbild och färdplan |  | Utgåva PA5 |
| CeHis Arkitekturledning |  | Sida: 68 (48) |
| 2013-12-04 |  |  |

4 December 2013

Sida 68 (48)

4 December 2013

| Center för eHälsa i samverkan <br> Hornsgatan 20, 118 82 Stockholm <br> Vxl: 08-452 70 00 <br> Tel: <br> Förnamn Efternamn |  |  |  |
|---|---|---|---|
| www.cehis.se | info@cehis.se |  |  |

Center för eHälsa i samverkan koordinerar landstingens och regionernas samarbete för att förverkliga strategin för Nationell eHälsa - tillgänglig och säker information inom vård och omsorg. Centret ska skapa den långsiktighet som krävs för att utveckla och införa gemensamma eHälsostöd, infrastruktur och standarder som förbättrar informationstillgänglighet, kvalitet och patientsäkerhet. Center för eHälsa i samverkan styrs av representanter från landsting och regioner, Sveriges Kommuner och Landsting (SKL), kommunerna och de privata vårdgivarna.

I arbetet har följande personer deltagit:

Tjänstedomänansvarig:

??

Projektgrupp 2013-01-01 - 2013-12-31

Peter Lindgren, Inera AB, projektledare

Mats Ekhammar, Inera AB, arkitekt

14 (14)

1 (2)
