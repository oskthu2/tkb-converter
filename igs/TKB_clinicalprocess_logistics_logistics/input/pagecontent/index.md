# clinicalprocess: logistics: logistics

<!-- tkb-version -->
**TKB-version:** 3.0.13 · **IG-version:** 3.0.13 · **Källa:** Bitbucket-tagg `3.0.13` · **Andra huvudversioner:** [2.0.7](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_logistics_logistics/2.0.7/index.html)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hanterar information om historiska och framtida vårdkontakter samt vårdplaner.</td></tr>
<tr><th>Svenskt kortnamn</th><td>resurssamordning</td></tr>
<tr><th>Svenskt namn</th><td>operativt processtöd:samordna resurser över verksamhetsstrukturer: logistik</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/21823645/clinicalprocess+logistics+logistics+resurssamordning">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.0.13 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/src/3.0.13">tagg 3.0.13</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/downloads/clinicalprocess_logistics_logistics_3.0.13.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **clinicalprocess: logistics: logistics** version 3.0.13.

Tjänstedomänen syftar till att tillmötesgå behovet av både patientens och hälso- och sjukvårdspersonalens direktåtkomst till patientens vårdinformation. Tjänsterna i denna domän erbjuder sökning efter logistikrelaterad information från hälso- och sjukvårdens journal- och patientadministrativa system.

Tjänstekontrakten är baserade på RIV-TA 2.1 och reglerade genom arkitekturella beslut.

## Tjänstekontrakt

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCareContacts](7-tjanstekontrakt.html#getcarecontacts) | 3.0 | Returnerar vårdkontakter som finns dokumenterade för en patient |
| [GetCarePlans](7-tjanstekontrakt.html#getcareplans) | 2.0 | Returnerar vård- och omsorgsplaner som finns dokumenterade för en patient |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.0.9</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/3.0.9/VIS_granskning%20-%20%20clinicalprocess_logistic_logistic_3.0.9.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/3.0.9/VIS_granskning%20-%20%20clinicalprocess_logistic_logistic_3.0.9.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/3.0.9/T-granskning%20-%20%20clinicalprocess_logistic_logistic_3.0.9.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/3.0.9/ServiceContracts_clinicalprocess_logistics_logistics_3.0.9.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/src/3.0.9">källkod</a></td></tr>
<tr><td>2.0.3</td><td>TKB</td><td><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/2.0.3/T-granskning%20clinicalprocess_logistics_logistics_2.0.3.docx">Äldre granskningsprocess: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//clinicalprocess_logistics_logistics/2.0.3/ServiceContracts_clinicalprocess_logistics_logistics_2.0.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/src/2.0.3">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.logistics.logistics/src/master">källkod</a></td></tr>
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
