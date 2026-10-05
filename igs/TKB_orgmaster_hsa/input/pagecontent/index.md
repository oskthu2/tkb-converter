# orgmaster: hsa

<!-- tkb-version -->
**TKB-version:** 1.0.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `f84df986cac4` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän innehåller arbetsmaterial från ett lokalt e-remissprojekt. Kontrakten domänen har ersatts av infrastructure:directory:*</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.orgmaster.hsa/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.orgmaster.hsa/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.0 · <a href="https://bitbucket.org/rivta-domains/riv.orgmaster.hsa/src/f84df986cac48d4caedfcfa414d99904b6d92978">commit f84df986cac4</a> · <a href="https://bitbucket.org/rivta-domains/riv.orgmaster.hsa/get/f84df986cac4.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **orgmaster: hsa** (Organisationsinformation) version 1.0.0.
Genererad från Ineras tjänstekontraktsbeskrivning, RevB (2012-11-27), och domänens WSDL- och XSD-filer.

Tjänstedomänen omfattar hämtning av organisationsinformation (enheter och personer) från en organisationskatalog, till exempel HSA.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetHsaUnit](7-tjanstekontrakt.html#gethsaunit) | 1.0 | Hämtar information om en specifik enhet eller funktion |
| [GetHsaPerson](7-tjanstekontrakt.html#gethsaperson) | 1.0 | Hämtar information om en HSA-person |
| [GetMiuForPerson](7-tjanstekontrakt.html#getmiuforperson) | 1.0 | Hämtar medarbetaruppdrag för en person |
| [GetHsaUnitList](7-tjanstekontrakt.html#gethsaunitlist) | 1.0 | Hämtar en lista med enheter |
| [GetPersonsWithCommissionAtHealthCareUnit](7-tjanstekontrakt.html#getpersonswithcommissionathealthcareunit) | 1.0 | Hämtar personer med medarbetaruppdrag på en vårdenhet |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>trunk</td><td>TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.orgmaster.hsa/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [Artefakter](artifacts.html)
