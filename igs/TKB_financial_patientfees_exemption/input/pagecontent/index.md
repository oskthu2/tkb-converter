# financial: patientfees: exemption

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-commit `fbd046e11e50`, efter taggen `1.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>Högkostnadsskydd</td></tr>
<tr><th>Svenskt namn</th><td>Nationellt Högkostnadsskydd</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.financial.patientfees.exemption/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.financial.patientfees.exemption/src/1.0">tagg 1.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.financial.patientfees.exemption/get/fbd046e11e50.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **financial: patientfees: exemption** (Nationellt högkostnadsskydd) version 1.0.
Genererad från Ineras Tjänstekontraktbeskrivning (TKB), version 1.0 (2024-03-25), och domänens WSDL- och XSD-filer.

Domänen gör det möjligt att hämta en patients högkostnadsskydd (frikort och registrerade patientavgifter) från andra vårdgivare, så att högkostnadsskyddet kan tillämpas nationellt.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [RequestExemptionStatuses](7-tjanstekontrakt.html#requestexemptionstatuses) | 1.0 | Detta tjänstekontrakt används för att begära ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som anges i begäran. Genom att anropa tjänstekontraktet initieras en begäran om ett utlämnande. Den efterfrågade informationen skickas sedan av utlämnande part via tjänstekontraktet ProcessExemptionStatuses. |
| [ProcessExemptionStatuses](7-tjanstekontrakt.html#processexemptionstatuses) | 1.0 | Detta tjänstekontrakt används för att lämna ut högkostandsskyddstatus samt alla transaktioner 12 månader bakåt i tiden för det patientId som begärts ut. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
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
