# ehr: log

<!-- tkb-version -->
**TKB-version:** 1.2.4 · **IG-version:** 1.2.4 · **Källa:** Bitbucket-tagg `1.2.4`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: loggtjänst - informationsecurity:auditing:log Logghantering lagrar information om åtkomstrelaterade händelser från olika system på ett strukturerat sätt, och används av system och tjänster som till exempel NPÖ och Pascal. Syftet är att man i efterhand ska kunna se vem som tagit del av vilken patientinformation. Tjänstekontrakten för Logghantering säkerställer att uppföljning av åtkomst till journaluppgifter sker på ett enhetligt sätt, och enligt de lagar och förordningar som gäller. Tjänstekontrakten gör det också möjligt för patienten/medborgaren att själv ta del av åtkomstloggar via till exempel Mina vårdkontakter. Detta är dock ännu inte realiserat i Mina vårdkontakter (MVK).</td></tr>
<tr><th>Svenskt kortnamn</th><td>logghantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:logghantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.2.4 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src/1.2.4">tagg 1.2.4</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: log** version 1.2.4.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen **urn:riv:ehr:log** hanterar loggning och uppföljning av åtkomst till patientjournal enligt Patientdatalagen (PDL) och Socialstyrelsens föreskrifter (SOSFS 2008:14). Den är indelad i två underdomäner:

- **urn:riv:ehr:log:store** — registrerande tjänst
- **urn:riv:ehr:log:querying** — läsande tjänster

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|------------|-------------|
| [StoreLog](7-tjanstekontrakt.html#storelog) | 1.0 | store | Sparar en eller flera loggposter i loggtjänsten |
| [GetLogsForCareProvider](7-tjanstekontrakt.html#getlogsforcareprovider) | 1.1 | querying | Returnerar loggposter för angiven vårdgivare |
| [GetLogsForUser](7-tjanstekontrakt.html#getlogsforuser) | 1.1 | querying | Returnerar loggposter för angiven medarbetare |
| [GetLogsForPatient](7-tjanstekontrakt.html#getlogsforpatient) | 1.0 | querying | Returnerar loggposter för angiven patient |
| [GetAccessLogsForPatient](7-tjanstekontrakt.html#getaccesslogsforpatient) | 1.1 | querying | Returnerar åtkomstloggar för angiven patient |
| [GetInfoLogsForCareProvider](7-tjanstekontrakt.html#getinfologsforcareprovider) | 1.0 | querying | Returnerar informationsloggar per informationsägande vårdgivare |
| [GetInfoLogsForPatient](7-tjanstekontrakt.html#getinfologsforpatient) | 1.0 | querying | Returnerar informationsloggar per patient och informationsägare |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.2.3</td><td>TKB, AB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads//ehr_log/1.2.3/ServiceContracts_ehr_log_1.2.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src/1.2.3">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.log/src/master">källkod</a></td></tr>
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
