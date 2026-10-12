# infrastructure: directory: synchronization

<!-- tkb-version -->
**TKB-version:** 1.0_RC3 · **IG-version:** 1.0.0-rc3 · **Källa:** Bitbucket-tagg `1.0_RC3`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>katalogsynkronisering</td></tr>
<tr><th>Svenskt namn</th><td>infrastrukturtjänster:katalogtjänster:synkronisering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.synchronization/src/">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0_RC3 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.synchronization/src/1.0_RC3">tagg 1.0_RC3</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.synchronization/get/1.0_RC3.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: directory: synchronization** (katalogtjänstsynkronisering) version 1.0_RC3.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0_RC3 (2018-09-21), och domänens WSDL- och XSD-filer (tagg 1.0_RC3).

Domänen låter ett system med lokala kopior av masterdata (t.ex. vård- och omsorgsutbud) hämta information om vilka poster som har skapats, ändrats eller tagits bort i masterdatakällan under en tidsperiod. Domänen finns bara som release candidate.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetMasterDataChangeSet](7-tjanstekontrakt.html#getmasterdatachangeset) | 1.0 | Hämtar information om masterdata som förändrats i en masterdatakälla baserat på sökkriterier. Sökkriterierna specificerar typ av förändring, datum för förändringen samt vilken typ av masterdata som efterfrågas. Masterdatakällan svarar med en lista innehållande id på poster som förändrats enligt sökkriterierna. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0_RC3</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_synchronization/1.0_RC3/VIS_granskning_Infrastructure_directory_synchronization_1.0_RC3.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_synchronization/1.0_RC3/T-granskning%20-%20infrastructure_directory_synchronization_1.0_RC3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_synchronization/1.0_RC3/VIS_granskning_Infrastructure_directory_synchronization_1.0_RC3.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.synchronization/src/1.0_RC3">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
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
