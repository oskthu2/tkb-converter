# clinicalprocess: healthcond: rheuma — Reumatismdata

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `fd5d50cd8a84` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänen syftar till att tillmötesgå behovet av reumatikerpatienters direktåtkomst till sina sjukdomsspecifika data som en del i projektet ”Journal på nätet” och ”4D”. OBS! Version 1.0_RC3 av denna tjänstedomän har endast tillstånd till en begränsad användning i den nationella tjänsteplattformen, se dess Arkitekturella Beslut för mer information. Detta behov hanteras genom att kombinera andra tjänstekontrakt</td></tr>
<tr><th>Svenskt kortnamn</th><td>reumatism data</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera hälsorelaterade tillstånd:reumatism data</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Förvaltare</th><td>SLL</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/src/fd5d50cd8a84361b984fe012d8742d4997f60103">commit fd5d50cd8a84</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/get/fd5d50cd8a84.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: rheuma** ("Vård- och omsorgsprocess, hantera hälsorelaterade tillstånd, reumatismdata") version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänen ska tillgodose reumatikerpatienters behov av direktåtkomst till sina sjukdomsspecifika data, som en del i projekten "Journal på nätet" och "4D".

RIV-TA namnrymd: `urn:riv:clinicalprocess:healthcond:rheuma`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetRheumatoidArthritisData](7-tjanstekontrakt.html#getrheumatoidarthritisdata) | 1.0 | Returnerar patientskattade värden, läkarens bedömningar, labbvärden och läkemedel ur Reuma beslutsstödsjournal eller motsvarande system |

**Källa:** TKB-dokumentet (`Tjanstekontraktsbeskrivning - clinicalprocess_healthcond_rheuma.docx`, senaste revision 1.0.RC3, 2014-02-20) från Bitbucket `rivta-domains/riv.clinicalprocess.healthcond.rheuma`, commit `fd5d50cd8a84` på `master`. Repot har bara RC-taggar; `master` innehåller samma scheman som `1.0_RC3` men den slutliga dokumentuppsättningen.

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0_RC3</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads/clinicalprocess_healthcond_rheuma/1.0_RC3/VIS_granskning_rheuma.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads/clinicalprocess_healthcond_rheuma/1.0_RC3/AL-T%20Granskning%20av%20clinicalprocess_healthcond_rheuma_1.0_RC3%20PA_1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads/clinicalprocess_healthcond_rheuma/1.0_RC3/VIS_granskning_rheuma.docx">Arkitektur &amp; Regelverk: Säkerhet: Underkänd</a></td><td><a href="http://rivta.se/downloads/clinicalprocess_healthcond_rheuma/1.0_RC3/ServiceContracts_clinicalprocess_healthcond_rheuma_1.0_RC3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/src/clinicalprocess_healthcond_rheuma_1.0_RC3">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.healthcond.rheuma/src/master">källkod</a></td></tr>
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
