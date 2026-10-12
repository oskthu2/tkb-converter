# clinicalprocess: activityprescription: prescribe

<!-- tkb-version -->
**TKB-version:** 2.0_RC1 · **IG-version:** 2.0.0-rc1 · **Källa:** Bitbucket-tagg `clinicalprocess_activityprescription_prescribe_2.0_RC1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna domänen är inte aktuellt längre och det är rest från Nodprojekte</td></tr>
<tr><th>Svenskt kortnamn</th><td>ordination</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess:hantera aktiviteter:ordination</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/src/clinicalprocess_activityprescription_prescribe_2.0_RC1">tagg clinicalprocess_activityprescription_prescribe_2.0_RC1</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/get/clinicalprocess_activityprescription_prescribe_2.0_RC1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

Detta är en FHIR Implementation Guide genererad från TKB-dokumentation
för tjänstedomänen **clinicalprocess: activityprescription: prescribe** version 2.0_RC1.

Tjänstedomänen syftar till att hantera patientens samlade läkemedelslista (SLL), inklusive 
ordinationer, expedieringsunderlag, uthämtade läkemedel och egenmedicinering.

## Tjänstekontrakt

| Nr | Kontrakt | Version |
|----|----------|---------|
| 7.1 | [GetMedicationPrescriptions](7-tjanstekontrakt.html#getmedicationprescriptions) | 2.0 |
| 7.2 | [RegisterMedicationPrescription](7-tjanstekontrakt.html#registermedicationprescription) | 2.0 |
| 7.3 | [DiscontinueMedication](7-tjanstekontrakt.html#discontinuemedication) | 2.0 |
| 7.4 | [RegisterMedicationStatement](7-tjanstekontrakt.html#registermedicationstatement) | 1.0 |
| 7.5 | [GetMedicationDispenseAuthorizations](7-tjanstekontrakt.html#getmedicationdispenseauthorizations) | 2.0 |
| 7.6 | [RegisterMedicationDispenseAuthorization](7-tjanstekontrakt.html#registermedicationdispenseauthorization) | 1.0 |
| 7.7 | [RevokeMedicationDispenseAuthorization](7-tjanstekontrakt.html#revokemedicationdispenseauthorization) | 2.0 |
| 7.8 | [AttachMedicationDispenseAuthorization](7-tjanstekontrakt.html#attachmedicationdispenseauthorization) | 2.0 |
| 7.9 | [GetDispensedDrugs](7-tjanstekontrakt.html#getdispenseddrugs) | 2.0 |
| 7.10 | [GetDispensedDrugsConsent](7-tjanstekontrakt.html#getdispenseddrugsconsent) | 2.0 |
| 7.11 | [RegisterDispensedDrugsConsent](7-tjanstekontrakt.html#registerdispenseddrugsconsent) | 2.0 |
| 7.12 | [RevokeDispensedDrugsConsent](7-tjanstekontrakt.html#revokedispenseddrugsconsent) | 2.0 |
| 7.13 | [SetMedicationListReviewed](7-tjanstekontrakt.html#setmedicationlistreviewed) | 1.0 |
| 7.14 | [SetMedicationListReviewNeeded](7-tjanstekontrakt.html#setmedicationlistreviewneeded) | 1.0 |
| 7.15 | [CheckMedicationListVersion](7-tjanstekontrakt.html#checkmedicationlistversion) | 1.0 |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.0_beta_r2037</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd<br/>Äldre granskningsprocess: Informatik: Godkänd<br/>Äldre granskningsprocess: Säkerhet: Godkänd</td><td><a href="http://rivta.se/downloads/clinicalprocess_activityprescription_prescribe/1.0.0-beta_r2037/ServiceContracts_clinicalprocess_activityprescription_prescribe_1.0.0-beta_r2037.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/src/69d203aad41f2136989cd8681bdd48d7b88e9698">källkod</a></td></tr>
<tr><td>trunk</td><td>IS, TKB, AB, IS</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.clinicalprocess.activityprescription.prescribe/src/master">källkod</a></td></tr>
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
