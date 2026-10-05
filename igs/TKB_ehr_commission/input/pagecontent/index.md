# ehr: commission

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `b93f022377f8` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>uppdragsval</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:behörighetshantering uppdragsval</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.commission/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.commission/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.commission/src/b93f022377f84ec4c5eb095992de72a2db4e62b4">commit b93f022377f8</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: commission** version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) — dokument `TKB_ehr_commission_1.0_RC1.docx`.

Den svenska benämningen för denna tjänstedomän är **Uppdragsvalstjänsten**. Tjänstekontraktet är baserat på RIV TA 2.1 och hanterar val av medarbetaruppdrag vid autentisering från rik klient eller tunn klient.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCommissionsForPerson](7-tjanstekontrakt.html#getcommissionsforperson) | 1.0 | Hämtar lista med de aktuella medarbetaruppdrag som en användare har samt det senaste valda medarbetaruppdraget. |
| [SetSelectedCommissionForPerson](7-tjanstekontrakt.html#setselectedcommissionforperson) | 1.0 | Sätter vilket medarbetaruppdrag som valdes aktivt av användaren. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td>AB, TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_commission/1.0/ServiceContracts_ehr_commission_1_0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.commission/src/ehr_commission_1.0_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.commission/src/master">källkod</a></td></tr>
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
