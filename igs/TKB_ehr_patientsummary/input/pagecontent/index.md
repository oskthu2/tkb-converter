# ehr: patientsummary

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `4714d3acbda3` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientsummary/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientsummary/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientsummary/src/4714d3acbda37dd093e2d5475403ed5cf44a6fe1">commit 4714d3acbda3</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientsummary/get/4714d3acbda3.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: patientsummary** (Patientöversikt) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), utgåva PA1 (2012-11-16), och domänens WSDL- och XSD-filer.

Tjänstedomänen används för att dela detaljerad patientinformation på formatet EN13606 med en patientöversikt, i praktiken
Nationell patientöversikt (NPÖ). Den är en RIVTA 2.1-anpassning av de tidigare EN13606-tjänsterna RIV13606REQUEST_EHR_EXTRACT och SendEhrExtract.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetEhrExtract](7-tjanstekontrakt.html#getehrextract) | 1.0 | Hämtar detaljerad patientinformation (EN13606-extrakt) |
| [ReceiveEhrExtract](7-tjanstekontrakt.html#receiveehrextract) | 1.0 | Tar emot detaljerad patientinformation som en part vill dela |
| [ReceiveEhrExtractStatus](7-tjanstekontrakt.html#receiveehrextractstatus) | 1.0 | Tar emot status för ett tidigare ReceiveEhrExtract-anrop |
| [DeleteEhrExtract](7-tjanstekontrakt.html#deleteehrextract) | 1.0 | Tar bort information som delats med ReceiveEhrExtract |
| [DeleteEhrExtractStatus](7-tjanstekontrakt.html#deleteehrextractstatus) | 1.0 | Tar emot status för ett tidigare DeleteEhrExtract-anrop |

**Om källan:** TKB:n är ett remissutkast (utgåva PA1) i det äldre Word-formatet (.doc). Källan saknar versionstaggar;
IG:n bygger på senaste commit på `master` (2013-10-11). Källan innehåller också ett utkast till en version 2 av domänen,
som återges i [bilaga 9](9-bilaga-utkast-version-2.html).

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>trunk</td><td>TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientsummary/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [9 Bilaga: utkast version 2](9-bilaga-utkast-version-2.html)
* [Artefakter](artifacts.html)
