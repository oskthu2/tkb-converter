# informatics: terminology

<!-- tkb-version -->
**TKB-version:** 1.0.1 · **IG-version:** 1.0.1 · **Källa:** Bitbucket-tagg `1.0.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>terminologi</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:informations-strukturtjänster:terminologi</td></tr>
<tr><th>Typ</th><td>Applikationsspecifik tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informatics.terminology/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.informatics.terminology/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.1 · <a href="https://bitbucket.org/rivta-domains/riv.informatics.terminology/src/1.0.1">tagg 1.0.1</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **informatics: terminology** version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) för Terminologitjänsten.

Tjänsten är en generisk terminologiurvalstjänst som tillhandahåller delmängder (subset) av terminologier (exempelvis SNOMED CT, ICD-10, ATC-kodverket) för användning i vårdinformationssystem. Den stöder bl.a. det dynamiska urvalet av orsaker till antibiotikainsättning som rapporteras till Infektionsregistret.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetTerminologySubset](4-tjanstekontrakt.html#getterminologysubset) | 1.0 | Hämtar en delmängd (subset) av en terminologi |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads//informatics_terminology/1.0.1/ServiceContracts_informatics_terminology_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informatics.terminology/src/1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.informatics.terminology/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [3 SLA-krav/support](3-sla-krav-support.html)
* [4 Tjänstekontrakt](4-tjanstekontrakt.html)
* [5 Tillgängliga urval](5-tillgangliga-urval.html)
* [Artefakter](artifacts.html)
