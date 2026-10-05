# itintegration: monitoring

<!-- tkb-version -->
**TKB-version:** 1.0.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-tagg `TD_MONITORING_1_0_0_R`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>OBSERVERA: Kravet på övervakningstjänst baserad på kontraktet pingforconfiguration är borttaget och supporten för kontraktet är avslutad. Lokal användning är tillåten men nationellt stöd och support avvecklas under Q1 2018</td></tr>
<tr><th>Svenskt kortnamn</th><td>tjänsteövervakning</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:tjänsteförmedlingstjänster:tjänsteövervakning</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.0 · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/src/TD_MONITORING_1_0_0_R">tagg TD_MONITORING_1_0_0_R</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/get/TD_MONITORING_1_0_0_R.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **itintegration: monitoring** version 1.0.0
("Övervakning av SOA-tjänster"). Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänens omfattning är övervakning av tillgänglighet hos en tjänsteproducent.
Ping-kontraktet ska exponeras av varje driftsatt modul som är tjänsteproducent för ett
eller flera tjänstekontrakt, så att alla tjänstedomäner kan övervakas och felsökas
genom ett enhetligt gränssnitt.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [PingForConfiguration](7-tjanstekontrakt.html#pingforconfiguration) | 1.0 | Generisk "ping"-tjänst för övervakning och felsökning av en tjänstekomponents tillgänglighet och konfiguration. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.0</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/itintegration_monitoring/1.0.0/ServiceContracts_itintegration_monitoring-1.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/src/TD_MONITORING_1_0_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.monitoring/src/master">källkod</a></td></tr>
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
* [Artefakter](artifacts.html)
