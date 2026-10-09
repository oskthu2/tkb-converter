# infrastructure: informationstructureservice: terminology

<!-- tkb-version -->
**TKB-version:** PA1 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `23f2de6a6b95` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>terminologi</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:informations-strukturtjänster:terminologi</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.informationstructureservice.terminology/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.informationstructureservice.terminology/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version PA1 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.informationstructureservice.terminology/src/23f2de6a6b95c45a036e7dba55da35d72cd07039">commit 23f2de6a6b95</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.informationstructureservice.terminology/get/23f2de6a6b95.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: informationstructureservice: terminology** (Terminologitjänst) version 1.0.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version PA1 (2013-10-30), och domänens WSDL- och XSD-filer.

Terminologitjänsten ger tillgång till urval av begrepp och termer ur klassifikationer och begreppssystem som Snomed CT, ICD-10 och ATC.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetTerminologySubset](7-tjanstekontrakt.html#getterminologysubset) | 1.0 | Hämtar ett urval (subset) av begrepp och termer ur en eller flera terminologier |
| [GetTerminologySubsetInformation](7-tjanstekontrakt.html#getterminologysubsetinformation) | 1.0 | Hämtar namn, id och versionsidentifierare för ett eller flera urval |
| [GetConcepts](7-tjanstekontrakt.html#getconcepts) | 1.0 | Söker begrepp och termer i ett urval |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>trunk</td><td>IS, TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.informationstructureservice.terminology/src/master">källkod</a></td></tr>
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
* [6 Tjänstedomänens gemensamma komponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
