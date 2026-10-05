# ehr: patientrelationship

<!-- tkb-version -->
**TKB-version:** 1.0.1 · **IG-version:** 1.0.1-snapshot · **Källa:** Bitbucket-commit `75d0292db437` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Patientrelationshantering registrerar och lagrar information om relationer mellan personal och patient. Tjänstekontrakten för Patientrelationshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina &quot;egna&quot; patientrelationer, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Tjänstekontrakten specificerar bland annat hur patientrelationsunderlag ska hämtas ut för intern kontroll av patientrelation i vårdsystemet, hur anrop från ett vårdsystem ska göras för att kontrollera om patientrelation finns eller inte, och för att kunna ge patienten en sammanställd lista av dennes alla patientrelationer som finns registrerade hos vårdgivaren.</td></tr>
<tr><th>Svenskt kortnamn</th><td>patientrelationshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:patientrelationshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.1 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src/75d0292db437ae9f42b77382fb53b840982a744b">commit 75d0292db437</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr: patientrelationship** version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar patientrelationer mellan vårdpersonal och patient i enlighet med Patientdatalagen (PDL).
Namespace: `urn:riv:ehr:patientrelationship`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|-----------|-------------|
| [GetPatientRelationsForPatient](7-tjanstekontrakt.html#getpatientrelationsforpatient) | 1.0 | querying | Läs patientrelationer för patient inom vårdgivare |
| [GetPatientRelationsForCareProvider](7-tjanstekontrakt.html#getpatientrelationsforcareprovider) | 1.0 | querying | Läs patientrelationer inom vårdgivare |
| [GetExtendedPatientRelationsForPatient](7-tjanstekontrakt.html#getextendedpatientrelationsforpatient) | 1.0 | administration | Läs patientrelationer för patient med utökad information |
| [CheckPatientRelation](7-tjanstekontrakt.html#checkpatientrelation) | 1.0 | accesscontrol | Kontrollera om patientrelation finns |
| [RegisterExtendedPatientRelation](7-tjanstekontrakt.html#registerextendedpatientrelation) | 1.0 | administration | Registrera patientrelation med utökad information |
| [CancelExtendedPatientRelation](7-tjanstekontrakt.html#cancelextendedpatientrelation) | 1.0 | administration | Återkalla patientrelation med utökad information |
| [DeleteExtendedPatientRelation](7-tjanstekontrakt.html#deleteextendedpatientrelation) | 1.0 | administration | Makulera patientrelation med utökad information |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td>AB, TKB</td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/ehr_patientrelationship/1.0.1/ServiceContracts_ehr_patientrelationship_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src/ehr_patientrelationship_1.0.1_RC1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.patientrelationship/src/master">källkod</a></td></tr>
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
