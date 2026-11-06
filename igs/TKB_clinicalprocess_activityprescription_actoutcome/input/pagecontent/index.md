# clinicalprocess: activityprescription: actoutcome

<!-- tkb-version -->
**TKB-version:** 2.2.1 · **IG-version:** 2.2.1 · **Källa:** Bitbucket-tagg `2.2.1` · **Andra huvudversioner:** [1.0.2](https://oskthu2.github.io/tkb-converter/TKB_clinicalprocess_activityprescription_actoutcome/1.0.2/index.html)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domän hanterat information gällande en patients ordinationer, förskrivning och administrering av läkemedel och vaccinationer. OBS! För verifiering enligt testmodell 2.0 skall testsviter och självdeklarationer i releasepaketet för domänversion 2.1_RC4 användas. Gäller kontrakten GetMedicationHistory 2.0 och GetVaccinationHistory 2.0.</td></tr>
<tr><th>Svenskt kortnamn</th><td>ordinationsutfall</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera aktiviteter:ordinationsutfall</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Tjänstekontraktsförvaltningen, TK-forvaltningen@inera.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/issues">Bitbucket issues</a></td></tr>
<tr><th>Informationssida</th><td><a href="https://inera.atlassian.net/wiki/spaces/OITOF/pages/275088118/clinicalprocess+activityprescription+actoutcome+ordinationsutfall">Confluence</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.2.1 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/src/2.2.1">tagg 2.2.1</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/get/2.2.1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **clinicalprocess: activityprescription: actoutcome** version 2.2.1.

Tjänstedomänen möjliggör hantering av information kopplad till patients ordinationer,
förskrivning och administrering av läkemedel och vaccinationer. Tjänstekontrakten erbjuder
möjlighet att nå information från ett specifikt källsystem eller aggregerat via en
nationell tjänsteplattform.

RIV-TA namespace: `urn:riv:clinicalprocess:activityprescription:actoutcome`

## Tjänstekontrakt

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetVaccinationHistory](7-tjanstekontrakt.html#getvaccinationhistory) | 2.0 | Returnerar ordinerade och/eller administrerade vaccinationer för en patient |
| [GetMedicationHistory](7-tjanstekontrakt.html#getmedicationhistory) | 2.2 | Returnerar ordinerade, förskrivna och/eller administrerade läkemedel för en patient |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.1.3</td><td>AB, TKB</td><td>Arkitektur &amp; Regelverk: Informatik: Godkänd<br/>Arkitektur &amp; Regelverk: Säkerhet: Godkänd<br/>Arkitektur &amp; Regelverk: Teknik: Godkänd</td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/get/2.1.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/src/2.1.3">källkod</a></td></tr>
<tr><td>1.0.1</td><td>AB, TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/get/clinicalprocess_activityprescription_actoutcome_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/src/clinicalprocess_activityprescription_actoutcome_1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.actoutcome/src/master">källkod</a></td></tr>
</tbody>
</table>
<p><i>Zip-arkiven hämtas från taggarna på Bitbucket. Granskningsprotokollen publicerades på rivta.se och länkas inte härifrån.</i></p>

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
