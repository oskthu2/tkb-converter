# processmanagement: decisionsupport: insurancemedicinedecisionsupport

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-commit `538dddbc8542`, efter taggen `processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med denna tjänstedomän är att effektivisera processen kring sjukskrivningsbedömningar. Detta åstadkoms genom att domänen gör grundläggande information för sjukskrivningsbedömningar tillgänglig på ett strukturerat sätt, så att dessa kan integreras i informationssystem. Tjänstekontrakten inom domänen hanterar informationsflöden som kan; ge vägledning om vilka informationsmängder som är av vikt vid en sjukskrivningsbedömning, ge beslutsunderlag för sjukskrivningsbedömning baserat på de värden som anges, samt att ge övrig information om en diagnos som inte är kopplad till sjukskrivningsbedömningen - men som kan vara till stöd i sjukskrivningsprocessen.</td></tr>
<tr><th>Svenskt kortnamn</th><td>försäkringsmedicinskt beslutsstöd</td></tr>
<tr><th>Svenskt namn</th><td>operativ processtyrning:beslutsstöd:försäkringsmedicinskt beslutsstöd</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0">tagg processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0</a> · <a href="https://api.bitbucket.org/2.0/repositories/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/master/docs/TKB_processmanagement_decisionsupport_insurancemedicinedecisionsupport.docx">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **processmanagement: decisionsupport: insurancemedicinedecisionsupport** version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen tillhandahåller strukturerad information som ligger till grund för försäkringsmedicinska sjukskrivningsbedömningar, inklusive det försäkringsmedicinska beslutsstödet (FMB) och diagnosinformation från Socialstyrelsen.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetFmb](7-tjanstekontrakt.html#getfmb) | 1.0 | Hämtar beslutsunderlag från FMB (Försäkringsmedicinskt beslutsstöd) |
| [GetDiagnosInformation](7-tjanstekontrakt.html#getdiagnosinformation) | 1.0 | Returnerar generell information om diagnoser |
| [GetVersions](7-tjanstekontrakt.html#getversions) | 1.0 | Returnerar versionsinformation för FMB och diagnosinformation |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td>TKB, AB</td><td><a href="http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/AL%20T-granskning%20processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.doc">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/VIS-granskning%20processmanagement.decisionsupport.insurancemedicinedecisionsupport.docx">Arkitektur &amp; Regelverk: Informatik: Underkänd</a><br/><a href="http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/VIS-granskning%20processmanagement.decisionsupport.insurancemedicinedecisionsupport.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//processmanagement_decisionsupport_insurancemedicinedecisionsupport/1.0/ServiceContracts_processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/processmanagement_decisionsupport_insurancemedicinedecisionsupport_1.0">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.processmanagement.decisionsupport.insurancemedicinedecisio/src/master">källkod</a></td></tr>
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
