# crm: carelisting

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-tagg `TD_CARELISTING_1_0_R`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>listning</td></tr>
<tr><th>Svenskt namn</th><td>individens processtöd:tillgängliggör kontaktväg:listning</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/src/TD_CARELISTING_1_0_R">tagg TD_CARELISTING_1_0_R</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/get/TD_CARELISTING_1_0_R.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **crm: carelisting** version 1.0.
Genererad från Ineras Nationell Listningstjänst informationsspecifikation (RIV-TA).

Domänen hanterar information om lokalt valbara primärvårdstjänster och lokalt gjorda invånarval av primärvårdstjänster. Konsumenter av informationen är exempelvis Mina Vårdkontakter (MVK), Nationell Patientöversikt (NPÖ) samt övriga intressenter.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetListing](7-tjanstekontrakt.html#getlisting) | 1.0 | Hämtar information om en persons aktiva listning (tjänsteval) |
| [GetAvailableFacilities](7-tjanstekontrakt.html#getavailablefacilities) | 1.0 | Hämtar lista med tillgängliga vårdenheter inom en region |
| [CreateListing](7-tjanstekontrakt.html#createlisting) | 1.0 | Skapar en ny listning (göra tjänsteval) |
| [GetListingTypes](7-tjanstekontrakt.html#getlistingtypes) | 1.0 | Hämtar möjliga listningstyper för en person |
| [GetPersonQueueStatus](7-tjanstekontrakt.html#getpersonqueuestatus) | 1.0 | Hämtar köstatus för en person |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/crm_carelisting/1.0/TD_CARELISTING_1_0_R.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/src/TD_CARELISTING_1_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td>IS</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.crm.carelisting/src/master">källkod</a></td></tr>
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
