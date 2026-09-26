### Arkitekturella beslut

Nedan återges domänens dokument med arkitekturella beslut ([AB_se_apotekenservice_expo.docx](AB_se_apotekenservice_expo.docx), revision PA1, 2017-01-19).

Detta dokument beskriver de viktiga arkitekturella beslut (AB) som fattats under projektet. Ett arkitekturellt beslut kan innefatta alla aspekter av arkitekturen såsom systemstruktur, funktionalitet, standarduppfyllnad samt operationella aspekter.

En arkitektur kan delvis förstås genom de beslut som fattats för att komma fram till den, därför är det viktigt att dessa beslut dokumenteras. Varje beslut som beskrivs i detta dokument motiveras och dess påverkan på resten av arkitekturen eller andra faktorer beskrivs.

Syftet med dokumentet:

* Etablera en enda plats där alla viktiga arkitekturella beslut samlas
* Explicit uttrycka skälen till och resultatet av att beslut har fattats
* Säkerställa att arkitekturen är utbyggbar och att den stödjer ett system i utveckling
* Säkerställa att nya personer som startar i projektet snabbt kan sätta sig in i arkitekturen och skälen till att den ser ut som den gör.

Dokumentets begreppstabell är tom.

#### AB: Acceptera eHM avvikelse från RIV-TA gällande versionshantering mellan tjänste- och domänscheman

| | |
| :--- | :--- |
| ID | AB-2.2 |
| Problembeskrivning | eHM frångår RIV-TA reglerna #5 och #7 i RIV TA Domänschema 2.1 (ARK_0006) samt reglerna #8 och #9 i RIV TA Tjänsteschema 2.1 (ARK_0005) för att kunna utöka XML scheman med fler än en minor version utan att bryta mot UPA-regel. |
| Antaganden | eHM hanterar kommunikation med anslutande system för att informera om dessa förändringar. |
| Motivation (varför detta beslut är viktigt) | eHM kontrakten tjänsteväxlas i NTjP och eHM ansvarar för innehållet i meddelandena. Beslutet motiveras med att eHM måste få ha eget spelrum att följa sina arkitekturella beslut gällande innehåll i meddelanden. För teknisk kompabilitet är det dock viktigt att kuvertering fortfarande följer RIV-TA. Ett arbete att förändra ovan nämnda regler har dessutom startats inom Inera och det är möjligt att regelverket uppdateras i enlighet med eHM eller att krav på att vara kompatibel med XSD 1.0 tas bort. |
| Alternativ 1 | Avvisa eHMs avsteg från RIV-TA. eHM kommer att sluta supportera 14-versionen så småningom med följden att tjänsterna i NTjP kommer att sluta fungera. |
| Alternativ 2 | Dokumentera arkitekt-beslut i domänerna och installera enligt eHM version 16. Konsumenter till kontrakt som omfattas av minor uppgraderingar måste vara medvetna om avstegen från RIV-TA. |
| Alternativ 3 | Anpassa RIV-TA efter eHM. Lång sikt – något av ovanstående måste ändå göras på kort sikt. |
| Beslut | Alternativ 2 (2017-01-18). Att godkänna avvikelsen, under förutsättning att eHM tar ansvar för innehållet och semantisk interoperabilitet i förhållande till anslutande konsumenter och producenter. Ett större arbete i enlighet med alternativ 3 startas också för att utreda vad man gör på låg sikt. |
| Skäl till beslut | eHM måste själva få ansvara för innehållet i dina tjänster. |
| Konsekvenser | Att det kommer finnas tjänster installerade i NTjP som inte följer RIV-TA |
| Avvikelsehantering | På lång sikt utreda hur vi ska göra med ovan nämnda regler från RIV-TA. Kommunicera med eHM om att information till anslutande parter som vill uppgradera måste kommuniceras. |

