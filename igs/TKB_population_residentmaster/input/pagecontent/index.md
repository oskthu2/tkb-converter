# population: residentmaster

<!-- tkb-version -->
**TKB-version:** 1.2 · **IG-version:** 1.2.0 · **Källa:** Bitbucket-tagg `population_residentmaster_1.2`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna tjänstedomän tillgängliggör personuppgifter för invånare bosatta i Sverige. Domänen kommer att avvecklas och ersättas av masterdata:citizen:citizen.</td></tr>
<tr><th>Svenskt kortnamn</th><td>personuppgiftshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:personuppgiftshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.2 · <a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/src/population_residentmaster_1.2">tagg population_residentmaster_1.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/get/population_residentmaster_1.2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **population: residentmaster** version
1.2. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen tillhandahåller uppslagning av personuppgifter (demografiska uppgifter från
Skatteverkets folkbokföring) baserat på personnummer, i form av en familj av
tjänstekontrakt `LookupResidentFor<Profile>` — ett per publicerad delmängd (profil)
av fält. För närvarande finns endast en publicerad profil, **Full**.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [LookupResidentForFullProfile](7-tjanstekontrakt.html#lookupresidentforfullprofile) | 1.2 | Slår upp personuppgifter (fullständig profil) för en eller flera personer baserat på personnummer. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.2</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//population_residentmaster/1.2/AL%20T-granskning%20population_residentmaster_1.2.doc">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//population_residentmaster/1.2/VIS-granskning_%20population_residentmaster_1.2.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads//population_residentmaster/1.2/VIS-granskning_%20population_residentmaster_1.2.docx">Arkitektur &amp; Regelverk: Säkerhet: Delvis Godkänd</a></td><td><a href="http://rivta.se/downloads//population_residentmaster/1.2/ServiceContracts_population_residentmaster_1.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/src/population_residentmaster_1.2">källkod</a></td></tr>
<tr><td>1.0.0</td><td>TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/population_residentmaster/1.0.0/ServiceContracts_population_residentmaster_1.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/src/TD_RESIDENTMASTER_1_0_0_R">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.population.residentmaster/src/master">källkod</a></td></tr>
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
