# itintegration: engagementindex

<!-- tkb-version -->
**TKB-version:** 1.0.10 · **IG-version:** 1.0.10 · **Källa:** Bitbucket-tagg `1.0.10`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Engagemangsindex är en stödtjänst som används av en tjänsteplattform. Informationen i indexet syftar till att minimera antalet anrop som en tjänstekonsument behöver göra för att få information om en specifik patient. Från indexet får tjänstekonsumenten information om vilka tjänsteproducenter som har information om den specifika patienten. Det räcker därmed att tjänstekonsumenten anropar dessa istället för att anropa alla tjänsteproducenter och fråga vilka av dem som har information om den specifika patienten. Indexet i sig innehåller inte någon patientinformation.</td></tr>
<tr><th>Svenskt kortnamn</th><td>engagemangsindex</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:tjänsteförmedlingstjänster:engagemangsindex</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.10 · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/1.0.10">tagg 1.0.10</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/get/1.0.10.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **itintegration: engagementindex** version 1.0.10.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [FindContent](7-tjanstekontrakt.html#findcontent) | 1.0 | Tjänst som en applikation använder för att begära information från ett engagemangsindex. Tjänstekontraktet FindContent används för att söka fram och hämta indexinformation. Sökresultatet filtreras baserat på attribut i begäran. Används primärt av aggregerande tjänster i tjänsteplattformen. |
| [Update](7-tjanstekontrakt.html#update) | 1.0 | Definierar en tjänst som konsumenter kan använda för att uppdatera en engagemangsindexinstans. Med hjälp av uppdateringskontraktet (Update) kan källsystem (vårddokumentationssystem, tidbokningssystem m.fl.) skapa indexposter enligt regelverk för respektive tjänstedomän. Kontraktet Update används vid såväl skapande, uppdatering och radering av indexposter. |
| [ProcessNotification](7-tjanstekontrakt.html#processnotification) | 1.0 | Syftet med kontraktet är att kunna konsolidera indexinformation från flera index. Engagemangsindex agerar i rollen som tjänsteproducent för att ta emot information om förändringar i ett annat engagemangsindex. Engagemangsindex agerar som tjänstekonsument för att skicka förändringar till andra engagemangsindex. Kontraktet används för konsolidering av indexinformation från lokala instanser till nationell instans. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.6</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.6/T-granskning%20-%20itintegration_engagementindex_1.0.6.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.6/ServiceContracts_itintegration_engagementindex_1.0.6.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/1.0.6">källkod</a></td></tr>
<tr><td>1.0.5</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.5/VIS_granskning_itintegration_engagementindex_1.0.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.5/VIS_granskning_itintegration_engagementindex_1.0.1.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.5/AL-T%20Granskning%20av%20itintegration_engagementindex_1.0.1_RC4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//itintegration_engagementindex/1.0.5/ServiceContracts_itintegration_engagementindex_1.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/1.0.5">källkod</a></td></tr>
<tr><td>1.0.1</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads/itintegration_engagementindex/1.0.1/VIS_granskning_itintegration_engagementindex_1.0.1.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads/itintegration_engagementindex/1.0.1/AL-T%20Granskning%20av%20itintegration_engagementindex_1.0.1_RC4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads/itintegration_engagementindex/1.0.1/VIS_granskning_itintegration_engagementindex_1.0.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads/itintegration_engagementindex/1.0.1/ServiceContracts_itintegration_engagementindex_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/itintegration_engagementindex_1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.engagementindex/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
