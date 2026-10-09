# clinicalprocess: activityprescription: logistics — Ordinationslogistik

<!-- tkb-version -->
**TKB-version:** 1.0.2 · **IG-version:** 1.0.2-snapshot · **Källa:** Bitbucket-commit `69b4fefff3e9` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domänen är inte aktuellt längre och det är rest från Nodprojektet</td></tr>
<tr><th>Svenskt kortnamn</th><td>ordinationslogistik</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera aktiviteter:ordinationslogistik</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.2 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/src/69b4fefff3e9a58dc886d0c62b1ce6f2631e829f">commit 69b4fefff3e9</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/get/69b4fefff3e9.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: activityprescription: logistics** ("Nationella Tjänstekontrakt för Hantera aktiviteter, ordinationslogistik") version 1.0.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänen omfattar funktioner av logistisk art som stödjer ordinationsprocessen i vården, främst hämtning av uthämtade läkemedel ur eHälsomyndighetens Läkemedelsförteckning (LF).

RIV-TA namnrymd: `urn:riv:clinicalprocess:activityprescription:logistics`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetDispensedDrugs](7-tjanstekontrakt.html#getdispenseddrugs) | 1.0 | Hämtar en patients Läkemedelsförteckning med ordinationsmappning |
| [PrintListOfDispensedDrugs](7-tjanstekontrakt.html#printlistofdispenseddrugs) | 1.0 | Hämtar en PDF-rapport med patientens Läkemedelsförteckning |

**Källa:** TKB-dokumentet (`Tjanstekontraktsbeskrivning - clinicalprocess_activityprescription_logistics.doc`, version 1.0.2, 2014-11-14) från Bitbucket `rivta-domains/riv.clinicalprocess.activityprescription.logistics`, commit `69b4fefff3e9` på `master` (repot har inga taggar).

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.0_beta_r2037</td><td></td><td>Äldre granskningsprocess: Informatik: Godkänd<br/>Äldre granskningsprocess: Säkerhet: Godkänd<br/>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/clinicalprocess_activityprescription_logistics/1.0.0-beta_r2037/ServiceContracts_clinicalprocess_activityprescription_logistics_1.0.0-beta_r2037.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/src/69b4fefff3e9a58dc886d0c62b1ce6f2631e829f">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.logistics/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Referenser](3-referenser.html)
* [4 Tjänstedomänens arkitektur](4-tjanstedomanens-arkitektur.html)
* [5 Tjänstedomänens krav och regler](5-tjanstedomanens-krav-och-regler.html)
* [6 Tjänstedomänens meddelandemodeller](6-tjanstedomanens-meddelandemodeller.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
