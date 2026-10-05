<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
Klicka på en fråga för att visa svaret. Varje fråga har en egen länk (faq.html#&lt;id&gt;).

<details id="tjanstekonsument">
<summary><b>Vad är tjänstekonsument?</b></summary>
<p>Informationssystem där aktörens agerande leder till automatiskt informationsutbyte med andra system (tjänsteproducenter).</p>
<p>Tjänstekonsumenten är alltså ett IT-system som initierar ett specifikt informationsutbyte.</p>
</details>

<details id="tjansteproducent">
<summary><b>Vad är tjänsteproducent?</b></summary>
<p>Tjänsteproducenter uppvisar ett tekniskt gränssnitt som möjliggör för tjänstekonsumenter att genom frågemeddelanden förändra eller begära information.</p>
<p>Det tekniska gränssnittet följer fastställda standarder för säker meddelandebaserad kommunikation (teknisk interoperabilitet).</p>
<p>De hanterar frågemeddelanden och producerar svarsmeddelanden enligt för funktionen fastställt nationellt tjänstekontrakt (semantisk interoperabilitet).</p>
</details>

<details id="tjanstekontrakt">
<summary><b>Vad är tjänstekontrakt?</b></summary>
<p>Systemoberoende tekniska kontrakt som reglerar samspelet mellan olika komponenter i systemlandskapet, med utgångspunkt i process- och informationsmodeller.</p>
<p>Dessa är upprättade enligt anvisningar för teknisk interoperabilitet i den tekniska arkitekturen vilket innebär att tjänstekontraktet säkerställer teknisk interoperabilitet genom att följa anvisning vid upprättandet.</p>
<p>Ett enskilt tjänstekontrakt består av ett innehåll (nyttolast), kuvert och regler vilket är grunden för semantisk interoperabilitet. Semantisk interoperabilitet i sin tur förutsätter en gemensam referensmodell för informationsstruktur.</p>
<p>När ett tjänstekontrakt installeras i en tjänsteplattform skapas en virtuell tjänst.</p>
</details>

<details id="virtuell-tjanst">
<summary><b>Vad är virtuell tjänst?</b></summary>
<p>Integrationstjänst i en tjänsteplattform som är baserad på ett tjänstekontrakt. Den är en nationell ställföreträdare för alla lokala tjänsteproducenter som uppfyller tjänstekontraktet. Den uppträder som om det fanns en nationell tjänsteproducent, men dirigerar vidare frågemeddelanden till respektive informationsägares tjänsteproducent och förmedlar svarsmeddelandet i retur.</p>
<p>I samband med vidareförmedling verifieras att tjänstekonsumenten är behörig att integrera med adresserad informationsägare.</p>
<p>Exempel:</p>
<ul>
  <li>Den virtuella tjänsten ”Hämta individens tidbokningar” förmedlar frågemeddelanden vidare till respektive vårdenhets tidbokningssystem (tjänsteproducent).</li>
  <li>Den virtuella tjänsten ”Hämta individens listningar” (kundval/valfrihetssystem/vårdval) förmedlar frågemeddelanden vidare till respektive läns eller kommuns listningssystem (tjänsteproducent).</li>
</ul>
</details>

<details id="tjanstedoman">
<summary><b>Vad är tjänstedomän?</b></summary>
<p>För att kunna tolkas, administreras och versionshanteras behöver de tjänstekontrakt som stödjer en viss process eller informationsbehov grupperas. En sådan gruppering benämns Tjänstedomän.</p>
</details>

<details id="tjansteplattform">
<summary><b>Vad är tjänsteplattformen (TP)?</b></summary>
<p>Tjänsteplattform är ett samlingsnamn för de komponenter som utgör plattform för tjänstebaserad integration över huvudmannagränser. Varje samverkansdomän i en federation kan ha en egen instans eller ingå i den överordnade domänens plattform.</p>
<p>Den nationella samverkansdomänen har en instans som publicerar virtuella tjänster och aggregerande tjänster för alla nationella tjänstekontrakt.</p>
<p>All samverkan mellan samverkansdomäner och inom den nationella domänen sker via tjänster i den nationella tjänsteplattformen.</p>
</details>

<details id="virtualiseringsplattform">
<summary><b>Vad är en virtualiseringsplattform?</b></summary>
<p>Virtualiseringsplattformen är en central komponent i TP. Den erbjuder infrastruktur för virtuella tjänster. Dess primära syfte är systematisk realisering av virtuella tjänster.</p>
<p>Som en effekt kan generella aspekter av virtualisering förändras i plattformen i stället för att alla enskilda tjänster behöver förändras. Det ger gemensam hantering av gemensamma behov, så som felhantering, åtkomstkontroll, övervakning, vägval, loggning, uppdatering av engagemangsindex, SLA-uppföljning mot tjänsteproducenter m.m.</p>
</details>

<details id="vagval">
<summary><b>Vad menas med vägval i TP?</b></summary>
<p>En anropande tjänstekonsument behöver inte hålla reda på den tekniska adressen (IP-adress, FQHN) till alla de producenter som den anropar. Istället skickar konsumenten med en sk logisk adress till TP. TP översätter den logiska adressen och skickar meddelandet vidare till rätt mottagare.</p>
<p>På detta sätt uppnås sk "lös koppling" mellan de system som är integrerade via TP. Ett adressbyte kan genomföras en gång i TP, inte i potentiellt hundratals konsumentsystem.</p>
</details>

<details id="atkomstkontroll">
<summary><b>Vad menas med åtkomstkontroll i TP?</b></summary>
<p>En tjänstekonsument har inte automatiskt rätt att anropa producentsystem via TP. Informationsägaren/systemägaren måste explicit ge tillstånd för varje anropande system. Dessa godkännanden lagras i TP och är en förutsättning för att ett anrop skall skickas vidare.</p>
</details>

<details id="ip-adressering">
<summary><b>Hur adresseras system i ett IP-nätverk?</b></summary>
<p>Adressering sker i normalfallet baserat på IP-adress. Som exempel, IP-adressen till Ineras hemsida är 79.136.112.108.</p>
<p>I normalfallet används dock host- och domännamn som representerar de tekniska adresserna. Tillsammans utgör det ett sk "fully-qualified host name" (FQHN). I Ineras fall är det namnet <a href="https://www.inera.se">www.inera.se</a>.</p>
</details>

<details id="logisk-adress">
<summary><b>Vad menar vi med en &quot;logisk adress&quot;?</b></summary>
<p>En viktig effekt av konceptet med tjänsteplattformen är att frikoppla konsumenter och producenter så långt det är möjligt. Vi vill inte tvinga alla konsumenter att direkt administrera den tekniska adressen till samtliga producentsystem som den vill koppla sig till, och i praktiken känner konsumenten över huvud taget inte till producentsystemet. I stället används virtuella tjänster och logiska adresser som representerar en verksamhet (verksamhetsadressering) eller ett system (systemadressering). I båda dessa fall används HSA-id som logisk adress (med något undantag).</p>
</details>

<details id="verksamhetsadressering">
<summary><b>Vad menar vi med &quot;verksamhetsadressering&quot;?</b></summary>
<p>Tjänstekontrakt som är verksamhetsadresserade använder ett HSA-id som representerar en organisatorisk enhet som logisk adress.</p>
</details>

<details id="systemadressering">
<summary><b>Vad menar vi med &quot;systemadressering&quot;?</b></summary>
<p>Vid systemadressering används ett HSA-id som representerar ett källsystem som logisk adress. Ett källsystem kan t ex vara ett journalsystem. I normalfallet är källsystemet inte samma sak som tjänsteproducenten.</p>
</details>

<details id="adressmappning">
<summary><b>Var hanteras mappningen mellan logiska adresser och &quot;verkliga&quot;?</b></summary>
<p>Tjänsteplattformen måste mappa en logisk adress till den tekniska adressen för ett producentsystem, och skicka ett anrop vidare till producenten. Det är alltså inte producentsystemet som adresseras, istället en bakomliggande verksamhet eller ett bakomliggande källsystem. Producentsystemet kan sägas representera verksamheten eller källsystemet. Mappningen mellan logisk adress och adress till tjänsteproducent lagras i Tjänsteadresseringskatalogen (TAK) i Tjänsteplattformen.</p>
</details>

<details id="anropa-alla-producenter">
<summary><b>Får en tjänstekonsument anropa alla producenter?</b></summary>
<p>Nej, i normalfallet måste verksamheten eller systemägare för källsystemet explicit godkänna varje tjänstekonsument innan anrop tillåts.</p>
</details>

<details id="behorighetsinformation">
<summary><b>Var finns behörighetsinformationen?</b></summary>
<p>Denna information lagras i Tjänsteadresseringskatalogen i Tjänsteplattformen.</p>
</details>

<details id="tak">
<summary><b>Vad är TAK?</b></summary>
<p>Tjänsteadresseringskatalogen är en databas med nio tabeller som innehåller den grundinformation som Tjänsteplattformen behöver för att hantera virtuella tjänster (tjänstekontrakt), anslutningar av konsumenter och producenter, logiska adresser samt behörigheter.</p>
</details>

<details id="tak-tjanster">
<summary><b>Vilken information relaterat till tjänster och tjänstekontrakt lagras i TAK?</b></summary>
<p>Namnet på tjänstekontraktet (hela namnrymden), version samt vilken version av RIVTA det bygger på.</p>
</details>

<details id="tak-konsumenter">
<summary><b>Vilken information relaterat till konsumenter lagras i TAK?</b></summary>
<p>HSA-id (från SITHS-funktionscertifikat) som konsumenten har. Dessutom IP-adressen till konsumenten.</p>
</details>

<details id="tak-producenter">
<summary><b>Vilken information relaterat till producenter lagras i TAK?</b></summary>
<p>HSA-id (från SITHS-funktionscertifikat) som producenten har. Dessutom IP-adressen till producenten.</p>
</details>

<details id="tak-logiska-adresser">
<summary><b>Vilken information relaterat till logiska adresser lagras i TAK?</b></summary>
<p>Logiska adresser lagras i en tabell tillsammans med uppgifter om adressens giltighetsperiod. De logiska adresserna kopplas samman med tjänstekontrakt och producentsystem på ett sådant sätt att Tjänsteplattformen utifrån ett anrop mot ett specifikt tjänstekontrakt och logisk adress kan se vilken producent som skall adresseras.</p>
</details>

<details id="tak-behorighet">
<summary><b>Vilken information relaterat till behörighet lagras i TAK?</b></summary>
<p>Anropsbehörigheter lagras i en tabell tillsammans med uppgifter om giltighetsperiod. En uppgift om behörighet kopplas samman med logisk adress, tjänstekontrakt och konsumentsystem. Tjänsteplattformen kan utifrån denna information avgöra huruvida en viss tjänstekonsument får anropa en specifik tjänst (tjänstekontrakt) på en specifik logisk adress.</p>
</details>

<details id="tak-administration">
<summary><b>Hur administreras informationen i TAK?</b></summary>
<p>Det är naturligtvis av yttersta vikt att information i Tjänsteadresseringskatalogen är korrekt, samt att det finns en spårbarhet på vem som tillhandahållit vilken information. Inom förvaltningen för den gemensamma Tjänsteplattformen använder man för närvarande ett system med fyra olika Word-blanketter (A, B, C och D) för att inhämta informationen. Dessa ligger till grund för uppdateringar av databasen, och arkiveras. Det finns planer på att ta fram ett administrativt gränssnitt för att delegera ut administrationen av TAK närmare verksamheterna.</p>
</details>

<details id="seriekoppling">
<summary><b>Kan TP:er seriekopplas?</b></summary>
<p>Den nationella arkitekturen som den är beskriven i T-boken och detaljerad i RIV TA utgår ifrån att flera tjänsteplattformar kan seriekopplas. Typfallet är att en region/landsting har en regional instans (en sk RTjP) som används för regional trafik, men också utgör gateway för alla integrationer till tjänster utanför regionen. Praktiskt kan man i normalfallet tänka sig en kedja på upp till tre plattformar, RTjP-NTjP-RTjP, för kommunikation ut ur en region, via den gemensamma plattformen (NTjP) och in till en tjänst i en annan region. Teoretiskt skall dock kedjan kunna vara längre.</p>
</details>

<details id="regional-tak">
<summary><b>Vilken information finns i en regional TAK?</b></summary>
<p>När plattformar kopplas i serie måste de samspela vad gäller vägval (adressering) och behörighetskontroll. Det innebär att det kommer att vara ett visst överlapp av information mellan regionala och den gemensamma TAKen. Dock måste även adresser till angränsande plattformar finnas med.</p>
</details>

<details id="tre-plattformar">
<summary><b>Hur kopplas praktiskt tre plattformar in i serie?</b></summary>
<p>Låt oss anta att en tjänstekonsument kopplas samman med en tjänsteproducent (som representerar en verksamhet) via tre plattformar:</p>
<p><img src="https://rivta.se/images/taks.png" alt="Tre seriekopplade tjänsteplattformar" style="max-width:100%"/></p>
<p>K1 - RTjP1 - NTjP - RTjP2 - P1 - V1.</p>
<p>Ett exempel på en sådan integration skulle kunna gälla NPÖ2 som tjänstekonsument och tjänsten GetCareDocumentation. En tjänstekonsument på VGR, K1, är ansluten till VGRs regionala plattform, RTjP1.</p>
<p>När en journal skall hämtas från Hjärtkliniken på Karolinska sjukhuset inom SLL kommer anropet att routas via den gemensamma plattformen (NTjP), och sedan vidare till SLLs regionala plattform (RTjP2). Därefter går det till den producent, Take Care (P1), som representerar Hjärtkliniken. Den slutgiltiga adressaten, logiska adressen, är alltså Hjärtkliniken (V1).</p>
<table class="grid">
  <tr><th>Beteckning</th><th>Exempel</th></tr>
  <tr><td>K1</td><td>Regional applikation inom VGR</td></tr>
  <tr><td>RTjP1</td><td>Regional tjänsteplattform inom VGR</td></tr>
  <tr><td>NTjP</td><td>Gemensam tjänsteplattform</td></tr>
  <tr><td>RTjP2</td><td>Regional tjänsteplattform inom SLL</td></tr>
  <tr><td>P1</td><td>Take Care - journalsystem inom SLL</td></tr>
  <tr><td>V1</td><td>Hjärtkliniken på Karolinska sjukhuset, SLL</td></tr>
</table>
<p><b>RTjP1-TAK</b></p>
<p>För att detta exempel skall fungera så måste RTjP1-TAK (dvs den TAK som används av RTjP1) innehålla följande information:</p>
<table class="grid">
  <tr><th>Fält</th><th>Data</th></tr>
  <tr><td>Tjänst</td><td>GetCareDocumentation</td></tr>
  <tr><td>Tjänstekonsument</td><td>K1</td></tr>
  <tr><td>Tjänsteproducent</td><td>NTjP</td></tr>
  <tr><td>Logisk adress</td><td>V1</td></tr>
  <tr><td>Adresseringsinformation</td><td>att anrop adresserade till adressen (verksamheten) V1, för tjänsten GetCareDocumentation, skall skickas till tjänsteproducenten NTjP</td></tr>
  <tr><td>Behörighetsinformation</td><td>att tjänstekonsumenten K1 har behörighet att adressera verksamheten V1 för tjänsten GetCareDocumentation</td></tr>
</table>
<p>Det är i den första tjänsteplattformen i kedjan som det sker en behörighetskontroll av att den ursprungliga tjänstekonsumenten har behörighet att anropa verksamheten i fråga. RTjP1 har ingen information om RTjP2 och P1.</p>
<p><b>NTjP-TAK</b></p>
<p>NTjP-TAK kommer att ha information om:</p>
<table class="grid">
  <tr><th>Fält</th><th>Data</th></tr>
  <tr><td>Tjänst</td><td>GetCareDocumentation</td></tr>
  <tr><td>Tjänstekonsument</td><td>RTjP1</td></tr>
  <tr><td>Tjänsteproducent</td><td>RTjP2</td></tr>
  <tr><td>Logisk adress</td><td>V1</td></tr>
  <tr><td>Adresseringsinformation</td><td>att anrop adresserade till adressen (verksamheten) V1, för tjänsten GetCareDocumentation, skall skickas till tjänsteproducenten RTjP2</td></tr>
  <tr><td>Behörighetsinformation</td><td>att tjänstekonsumenten RTjP1 har behörighet att adressera verksamheten V1 för tjänsten GetCareDocumentation</td></tr>
</table>
<p>Behörighetskontrollen begränsas här till att verifiera att den regionala tjänsteplattformen RTjP1 har rättighet att adressera V1 för GetCareDocumentation. NTjP känner inte till K1 eller P1.</p>
<p><b>RTjP2-TAK</b></p>
<p>RTjP2-TAK innehåller:</p>
<table class="grid">
  <tr><th>Fält</th><th>Data</th></tr>
  <tr><td>Tjänst</td><td>GetCareDocumentation</td></tr>
  <tr><td>Tjänstekonsument</td><td>NTjP</td></tr>
  <tr><td>Tjänsteproducent</td><td>P1</td></tr>
  <tr><td>Logisk adress</td><td>V1</td></tr>
  <tr><td>Adresseringsinformation</td><td>att anrop adresserade till adressen (verksamheten) V1, för tjänsten GetCareDocumentation, skall skickas till tjänsteproducenten P1</td></tr>
  <tr><td>Behörighetsinformation</td><td>att tjänstekonsumenten NTjP har behörighet att adressera verksamheten V1 för tjänsten GetCareDocumentation</td></tr>
</table>
<p>Behörighetskontrollen begränsas här till att verifiera att den gemensamma tjänsteplattformen NTjP har rättighet att adressera V1 för GetCareDocumentation. RTjP2 känner inte till K1 eller RTjP1.</p>
</details>

<details id="installation-sit-qa">
<summary><b>När kan ett tjänstekontrakt installeras i SIT- eller QA-miljön?</b></summary>
<p>För installation i SIT- eller QA-miljön ska domänen vara tekniskt granskad och godkänd, dvs. det finns ett tekniskt granskningsprotokoll.</p>
<p>Domäner som ägs av eHälsomyndigheten är undantag och kvalitetssäkras inte enligt våra rutiner.</p>
</details>

<details id="installation-produktion">
<summary><b>När kan ett tjänstekontrakt installeras i produktionsmiljön?</b></summary>
<p>För installation i produktionsmiljön ska domänen vara granskad och godkänd utifrån perspektiven informatik, säkerhet och teknik samt publicerad på rivta.se.</p>
<p>Domänversionen måste vara en released version som inte kommer att ändras. Ingen release candidate (RC) är tillåten i produktionsmiljön.</p>
<p>Domäner som ägs av eHälsomyndigheten är undantag och kvalitetssäkras inte enligt våra rutiner.</p>
</details>

