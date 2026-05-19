## Tjänstedomänens arkitektur
Detta kapitel beskriver domänens arkitektur och relevanta flöden i form av sekvensdiagram som tydliggör vilka tjänstekontrakt som nyttjas i de olika flödena.
Domänens verksamhetsorienterade flöden finns dokumenterade i form av användningsfall i informationsspecifikationen [R2], och inkluderas därmed inte i detta dokument.

### Behovet av en central intygstjänst
Intyg kan skapas och lagras av många olika system inom sjukvården. För att möjliggöra en effektiv hantering av dessa inyg krävs därför en central samordning och tillhandahållande av en tjänstedomän för utbyte av intygsinformation. Arkitekturen i denna tjänstedomän bygger på att underskrivna intyg lagras i en central intygstjänst som kan förmedla intyg till dess avsedda mottagare. Tillhandahållandet av en central intygstjänst motiveras av:
Krav på tillgänglighet. Tillgängligheten för vårdens system kan inte garanteras. En central intygstjänst behövs för att tillgängliggöra intyg för invånaren vid alla tidpunkter och för skapandet av statistik.
En statistikfunktion ställer höga krav på att en stor mängd intyg som hos vården kan finnas i olika system finns tillgängliga vid en given tidpunkt för att underlaget för statistiken ska kunna sammanställas på ett effektivt sätt.
Behov av att samla signerade intyg som utfärdats av olika intygsapplikationer på en plats. Genom att lagra intyg från olika intygsapplikationer i en central intygstjänst skapas förutsättningar för att både vården och invånare ska få tillgång till alla de elektroniskt utfärdade intyg de har rätt att ta del av.

### Integrerad intygsapplikation
Begreppet ”integrerad intygsapplikation” syftar på en lösning där intygsskrivande och hantering av frågor och svar sköts i en intygsapplikation som är separerad från vårdsystemet, och där vårdsystemet implementerar de kringliggande processerna. Alternativen till detta är att all intygshantering är inbyggd direkt i vårdsystemet utan inblandning av en integrerad intygsapplikation, eller att intygshanteringen sker i en helt fristående intygsapplikation.
Vid integration med en intygsapplikation ansvarar vårdsystemet för att presentera översikter och statusinformation som informerar användaren om vad som kan och bör göras. När användaren väljer att utföra en intygsrelaterad aktivitet görs detta i intygsapplikationen t.ex. genom att ett url-uthopp till intygsapplikationen sker. Alla statusförändringar som sker för intyget i intygsapplikationen återförs sedan löpande till vårdsystemet.
Lösningen för integrerad intygsapplikation är framtagen för användning med intygsapplikationen Webcert, men skulle kunna användas vid integration mellan ett vårdsystem och en annan intygsapplikation med motsvarande funktionalitet.

### Ärendekommunikation
Denna domän inkluderar från version 2.0 tjänster för intygsrelaterad ärendekommunikation. Syftet med detta är att intygsmottagare eller vården ska kunna ställa frågor om specifika intyg till varandra och få dessa besvarade.
Arkitekturmässigt är funktionen designad på så vis att meddelanden, relaterade till ett specifikt intyg, kan skickas mellan intygsmottagare och vården. Dessa meddelanden innehåller information som gör att mottagaren kan avgöra om det handlar om en administrativ fråga, en kompletteringsbegäran, ett svar eller en påminnelse. Informationen som skickas över tjänstekontrakten för ett specifikt meddelande innehåller enbart det aktuella meddelandet samt nödvändiga nycklar till relaterade objekt (t.ex. intyg eller tidigare meddelanden). Varje part i ärendekommunikation måste således spara skickade frågor för att kunna relatera inkomna svar till dessa.

### Datatyper
Tjänstendomänen använder, förutom egendefinierade och xml:s standard-datatyper ett par av best practice-datatyperna som är definierade för RIV-TA. Eftersom dessa inte tillhandahålls i form av ett separat xml-schema har de inkluderats i schemafilerna tillsammans med denna domäns gemensamma datatyper. Observera att domänen använder egna definitioner av vissa best practice-datatyper. Detta gäller HsaId, PersonId, DateType och TimeStampType. Anledningen till de egna definitionerna är att de möjliggör striktare validering och/eller bättre nyttjar stöd i xml-schemas standard-datatyper än motsvarande best practice-datatyper.
De multipliciteter som anges i detta dokument avser fältens informationsinnehåll, och inte enbart fältens förekomst. Multipliciteten ”1” för ett fält betyder således att fältet ska förekomma och att det ska innehålla den information som det är avsett att innehålla. Eventuella undantag från detta anges som fältregler.
Samtliga datatyper som används av domänen beskrivs i kapitel 7.

### Gemensamma objektsdefinitioner i gränssnitt
Domänens tjänstekontrakt nyttjar i många fall gemensamma objektsdefinitioner. Detta har som konsekvens att element som är icke-obligatoriska i schemat kan vara menade att i en viss implementation av ett visst tjänstekontrakt antingen vara obligatoriska eller inte får förekomma. Regler som styr hantering av sådana element beskrivs i separata dokument för integration med det specifika systemet (t.ex. Webcert). Fältregler för Ineras Intygstjänst inkluderas dock för närvarande i detta dokument.

### Versionshantering av intyg
Intygen som hanteras av domänen är utformade utifrån krav från intygsägarna. Då kraven kan ändras över tid blir det i vissa fall nödvändigt att skapa nya versioner av intyg. För att möjliggöra detta har följande modell för versionshantering av intyg tagits fram.
Det finns två nivåer av versionshantering för intygen. Den första nivån, huvudversion, avser en viss version av intygets specifika informationsmodell (i meddelandet representerat av XML-strukturen och dess validering). Denna versionsnivå identifieras via det första heltalet i intygstypens (7.1) fält version.
Om ett befintligt intyg ska uppdateras och förändringarna leder till att informationsinnehållet förändras hanteras denna uppdatering således genom att en ny huvudversion upprättas. Ex. intygstyp = "TSTRK1007", version = "6.8" blir intygstyp = "TSTRK1007", version = "7.0".
En intygstyp i två olika huvudversioner kan, i teorin, se helt olika ut informationsmässigt.
Den andra nivån, underversion, avser en viss version av de intygstexter som används för visning av den information som huvudversionen avser. Exakt vilka texter som hanteras på detta vis kan skilja sig åt mellan olika intygstyper, men i stort sett handlar det om rubrik och hjälptexter för kategorier, frågor, delfrågor och svarsalternativ. I vissa fall har också informationstexter, observandum och informationsrutor inkluderats på samma vis. Denna nivå identifieras genom det andra heltalet i intygtypens (7.1) fält version.
Om ett befintligt intyg ska uppdateras och förändringarna enbart är textuella hanteras denna uppdatering genom att en ny uppsättning av intygstypens texter upprättas och intygstypen som använder denna får ett nytt versionsnummer. Ex. intygstyp = "TSTRK1007", version = "6.8" blir intygstyp = "TSTRK1007",  version = "6.9".
Olika underverisoner inom samma huvudversion ser således alltid likadana ut avseende XML-filen som skickas i ett meddelande. Men den exakta innebörden av ett svar kan skilja sig åt beroende av vilken frågetext som visats för användren vid ifyllande av intyget.

### Flöden
Flödena nedan beskriver hur tjänsterna används i aktuella tillämpningar och utgör detaljering av de användningsfall som beskrivs i informationsmodellen.
Flödena beskrivs på en teknisk nivå som syftar till att hjälpa tjänstedomänens intressenter att förstå hur tjänsterna ska användas.

| Namn/beteckning | TK | Vårdsystem | Intygsapplikation | Intygstjänst | Invånartjänst för intyg | Intygsmottagarens system |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| Hämta sjukfall | ListSickLeavesForCare | x | - | x | - | - |
| Skapa intygsutkast | CreateDraftCertificate | x | x | - | - | - |
| Registrera ett intyg | RegisterCertificate | - | x | x | - | - |
| Skicka ett intyg | SendCertificateToRecipient / RegisterCertificate | - | x | x | x | x |
| Skicka makuleringsinformation för ett intyg | RevokeCertificate | - | x | x | - | x |
| Hämta ett intyg | GetCertificate | - | x | x | x | x |
| Hämta intyg | ListCertficatesForCare | - | x | x | - | - |
| Hämta intyg | ListCertficatesForCitizen | - | - | x | x | - |
| Hämta intygsutkast, intyg samt tillhörande händelser och ärendekommunikation | ListCertificatesForCareWithQA | x | x | - | - | - |
| Skicka meddelande till intygsmottagare | SendMessageToRecipient | - | x | x | - | x |
| Skicka meddelande till vården | SendMessageToCare | - | x | x | - | x |
| Skicka intygsuppdateringar till vården | CertificateStatusUpdateForCare | x | x | - | - | - |
| Uppdatera intygsstatus i intygstjänst | SetCertificateStatus | - | - | x | x | - |

#### Hämta sjukfall

![img_017.png](images/img_017.png)

#### Skapa intygsutkast

![img_018.jpg](images/img_018.jpg)

#### Registrera ett intyg

![img_019.jpg](images/img_019.jpg)

#### Skicka ett intyg

##### Från en intygsapplikation

![img_020.jpg](images/img_020.jpg)

##### Från en invånartjänst för intyg

![img_021.jpg](images/img_021.jpg)

#### Skicka makuleringsinformation för ett intyg

![img_022.jpg](images/img_022.jpg)

#### Hämta ett intyg

##### Från en intygsapplikation

![img_023.jpg](images/img_023.jpg)

##### Från intygsmottagarens system

![img_001.jpg](images/img_001.jpg)

##### Från en invånartjänst för intyg

![img_002.jpg](images/img_002.jpg)

#### Hämta intyg

##### Från en intygsapplikation

![img_003.jpg](images/img_003.jpg)

##### Från en invånartjänst för intyg

![img_004.jpg](images/img_004.jpg)

#### Hämta intygsutkast, intyg samt tillhörande händelser och ärendekommunikation

![img_005.jpg](images/img_005.jpg)

#### Skicka meddelande till intygsmottagare

![img_006.png](images/img_006.png)

#### Skicka meddelande till vården

![img_007.png](images/img_007.png)

#### Skicka intygsuppdateringar till vården

![img_008.jpg](images/img_008.jpg)

#### Uppdatera intygsstatus i intygstjänst

![img_009.jpg](images/img_009.jpg)

### Adressering

#### Logiska addresser
Domänens samtliga tjänstekontrakt följer RIV-TA:s standard för logisk adressering (se:http://rivta.se/documents/ARK_0002). I detta kapitel anges vilken typ av tjänst som de logiska addresser som används av domänens tjänstekontrakt pekar på.

#### Transaktioner för dessa tjänstekontrakt adresseras till den logiska adressen till Intygstjänst
GetCertificate
ListCertificateForCare
ListCertificateForCitizen
ListSickLeavesForCare
RegisterCertificate
RevokeCertificate
SendCertificateToRecipient
SendMessageToCare
SendMessageToRecipient
SetCertificateStatus

#### CertificateStatusUpdateForCare
Statusuppdateringar adresseras till verksamhetsadressen för den enhet som äger intyget.

#### CreateDraftCertificate och ListCertificatesForCareWithQA
Den logiska adressen är verksamhetsadressen för den aktuella intygsapplikationen, exempelvis Intygstjänsters intygspplikation Webcert.

#### RegisterCertificate
För intygsapplikation som registrerar intyg i intygstjänst är den logiska adressen för transaktionen till intygstjänst. Tjänstekontraktet används även av intygstjänst för att registrera intyg hos intygsmottagares system, som då adresseras med respektive intygsmottagares verksamhetsadress (exempelvis”Försäkringskassan”).

#### RevokeCertificate
För intygsapplikation som makulerar intyg är den logiska adressen för transaktionen till intygstjänst Tjänstekontraktet används även av intygstjänst för att återkalla intyg hos intygsmottagares system, som då adresseras med respektive intygsmottagares verksamhetsadress (exempelvis ”Försäkringskassan”).

#### SendMessageToCare
För intygsmottagare är den logiska adressen för transaktionen till intygstjänst. För intygstjänst är den logiska adressen för transaktionen systemet hos den enhet som angivits av intygsmottagaren, vilket för en fråga avser systemet hos den enhet som utfärdade intyget, och för ett svar systemet hos den enhet som ställde frågan (dessa är normalt samma enhet).

#### SendMessageToRecipient
För system som vill skicka meddelanden till intygsmottagare är den logiska adressen för transaktionen till intygstjänst. Tjänstekontraktet används av intygstjänst för att skicka vidare meddelandet till intygsmottagare, som då adresseras med respektive verksamhetsadress (exempelvis ”Försäkringskassan”).

### Aggregering och engagemangsindex
Aggregering och engagemangsindex används inte inom denna tjänstedomän.

