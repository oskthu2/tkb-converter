# infrastructure: directory: organization

<!-- tkb-version -->
**TKB-version:** 5.0 · **IG-version:** 5.0.0 · **Källa:** Bitbucket-commit `6a2e36035369`, efter taggen `5.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrade och aktuella organisations-, enhets- och funktionsuppgifter. Användningsområden utgörs främst av * Publika vårdsökningar efter kontaktinformation till enheter verksamma inom vård och omsorg * Hämtning av information om vårdgivare och vårdenheter kopplade till Patientdatalagen, PDL</td></tr>
<tr><th>Svenskt kortnamn</th><td>organisation</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:organisation</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 5.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/src/5.0">tagg 5.0</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: directory: organization** version 5.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetHealthCareUnit](7-tjanstekontrakt.html#gethealthcareunit) | 2.0 | Söker ut vilken vårdenhet den angivna enheten eller funktionen är kopplad till. |
| [GetHealthCareUnitList](7-tjanstekontrakt.html#gethealthcareunitlist) | 2.0 | Söker fram och listar en angiven vårdgivares alla vårdenheter, definierade enligt PDL. |
| [GetHealthCareUnitMembers](7-tjanstekontrakt.html#gethealthcareunitmembers) | 2.1 | Söker fram alla kopplade enheter för den angivna vårdenheten. |
| [GetUnit](7-tjanstekontrakt.html#getunit) | 5.0 | Returnerar information om den angivna enheten (organisation, enhet eller funktion). |
| [GetHealthCareProvider](7-tjanstekontrakt.html#gethealthcareprovider) | 1.0 | Söker ut och returnerar information om en vårdgivare. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.1</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_organization/3.1/T-granskning%20-%20%20infrastructure_directory_organization_3.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_organization/3.1/VIS_granskning%20-%20%20infrastructure_directory_organization_3.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//infrastructure_directory_organization/3.1/VIS_granskning%20-%20%20infrastructure_directory_organization_3.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_organization/3.1/ServiceContracts_infrastructure_directory_organization_3.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/src/3.1">källkod</a></td></tr>
<tr><td>2.4</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//infrastructure_directory_organization/2.4/T-granskning%20infrastructure_directory_organization_2.4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//infrastructure_directory_organization/2.4/ServiceContracts_infrastructure_directory_organization_2.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/src/2.4">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.directory.organization/src/master">källkod</a></td></tr>
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
