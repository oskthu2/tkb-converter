# ehr: patientconsent — Samtyckeshantering

<!-- tkb-version -->
**TKB-version:** 1.0.1 · **IG-version:** 1.0.1-snapshot · **Källa:** Bitbucket-commit `d3d8cd596c49` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>OBSERVERA: Denna domän utvecklas inte längre, för nyutveckling, support och buggrättningar hänvisas till den nya domänen: samtyckestjänst - informationsecurity:authorization:consent För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina &quot;egna&quot; samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa.</td></tr>
<tr><th>Svenskt kortnamn</th><td>samtyckeshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:samtyckeshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.1 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/d3d8cd596c494d091b2a26f92c5eb0b52bba4d21">commit d3d8cd596c49</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: patientconsent** version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen avser samtyckeshantering för direktåtkomst till patientuppgifter mellan vårdgivare inom sammanhållen journalföring enligt Patientdatalagen (PDL).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|-----------|-------------|
| [GetConsentsForPatient](7-tjanstekontrakt.html#getconsentsforpatient) | 1.0 | querying | Hämta giltiga samtycken för en specifik patient |
| [GetConsentsForCareProvider](7-tjanstekontrakt.html#getconsentsforcareprovider) | 1.0 | querying | Hämta alla giltiga samtycken för en vårdgivare |
| [GetExtendedConsentsForPatient](7-tjanstekontrakt.html#getextendedconsentsforpatient) | 1.0 | administration | Hämta samtycken med utökad information för en patient |
| [CheckConsent](7-tjanstekontrakt.html#checkconsent) | 1.0 | accesscontrol | Kontrollera om giltigt samtycke finns för en aktör |
| [RegisterExtendedConsent](7-tjanstekontrakt.html#registerextendedconsent) | 1.0 | administration | Registrera ett samtyckesintyg |
| [CancelExtendedConsent](7-tjanstekontrakt.html#cancelextendedconsent) | 1.0 | administration | Återkalla ett samtyckesintyg |
| [DeleteExtendedConsent](7-tjanstekontrakt.html#deleteextendedconsent) | 1.0 | administration | Makulera ett samtyckesintyg |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td>TKB, AB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_patientconsent/1.0.1/ServiceContracts_ehr_patientconsent_1_0_1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/ehr_patientconsent_1.0.1_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientconsent/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [10 Datatyper](10-datatyper.html)
* [Artefakter](artifacts.html)
