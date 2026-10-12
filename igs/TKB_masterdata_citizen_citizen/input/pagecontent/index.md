# masterdata: citizen: citizen

<!-- tkb-version -->
**TKB-version:** 2.0 · **IG-version:** 2.0.0 · **Källa:** Bitbucket-tagg `2.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: personuppgiftshantering - strategicresourcemanagement:persons:person Syftet med denna domän är primärt att tillgängliggöra personuppgifter registrerade i Skatteverkets folkbokföringsregister för invånare bosatta i Sverige. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter mm. Konsumenter på domänens information kan vara de flesta vård- och omsorgssystem som hanterar patienter/invånare, men kan även behövas i system som hanterar medarbetare, katalogsystem, identitetshanteringssystem etc. Uppgifterna i tjänsteproducent hålls ajour med uppgifterna i bakomliggande register primärt genom regelbundna aviseringar (alla förändringar sedan sist), kompletterat med online-slagning om uppgift saknas i tjänsteproducent.</td></tr>
<tr><th>Svenskt kortnamn</th><td>personuppgiftshantering</td></tr>
<tr><th>Svenskt namn</th><td>underlagförprocesstöd:invånare:personuppgifter</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0 · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/2.0">tagg 2.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/get/2.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **masterdata: citizen: citizen** (Personuppgifter) version 2.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.0 (revision RC3, 2016-04-22), och domänens WSDL- och XSD-filer (tagg 2.0).

Syftet med domänen är att tillgängliggöra personuppgifter ur Skatteverkets folkbokföringsregister (Navet) för invånare bosatta i Sverige, till exempel namn, adress och relationer. Domänen ersätter riv.population.residentmaster.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [LookupResidentsForProfile](7-tjanstekontrakt.html#lookupresidentsforprofile) | 2.0 | Tjänst för att hämta uppgifter för 1..* personidentiteter. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.1_RC1</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/VIS_granskning%20-%20masterdata_citizen_citizen_2.1_RC1.docx">Arkitektur &amp; Regelverk: Säkerhet: Delvis Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/T-granskning%20masterdata_citizen_citizen_2.1_RC1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/VIS_granskning%20-%20masterdata_citizen_citizen_2.1_RC1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.1_RC1/ServiceContracts_masterdata_citizen_citizen_2.1_RC1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/2.1_RC1">källkod</a></td></tr>
<tr><td>2.0</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.0/VIS_granskning_masterdata_citizen_citizen_2.0.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.0/AL%20T-Granskning%20masterdata_citizen_citizen_2.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.0/VIS_granskning_masterdata_citizen_citizen_2.0.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a></td><td><a href="http://rivta.se/downloads//masterdata_citizen_citizen/2.0/ServiceContracts_masterdata_citizen_citizen_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/2.0">källkod</a></td></tr>
<tr><td>trunk</td><td>IS, AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.citizen/src/master">källkod</a></td></tr>
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
* [8 Aktuella profiler](8-aktuella-profiler.html)
* [Artefakter](artifacts.html)
