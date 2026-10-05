# ehr:accesscontrol

<!-- tkb-version -->
**TKB-version:** 1.0.6 · **IG-version:** 1.0.6 · **Källa:** Bitbucket-commit `ce5a101eb0df`, efter taggen `1.0.6`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstekontraktet för Tillgänglig patient (TGP) används av fristående e-tjänster som erbjuder professionen direktåtkomst till sammanhållen journalföring. Tjänsteproducenter för tjänstekontraktet ger svar på om aktuell användare av en sådan e-tjänst (t.ex. NPÖ-tjänsten) genom sitt medarbetaruppdrag har dokumenterad relation till patienten som styrker att tjänstekonsumenten (e-tjänsten) ska erbjuda användaren åtkomst till sammanhållen journalföring. Vanligen är PAS- eller journalsystemen tjänsteproducenter för kontraktet. Det är alltså den egna verksamhetens IT-system som agerar tjänsteproducent när en medarbetare begär åtkomst till sammanhållen journalföring via en fristående etjänst. *OBSERVERA: I releasepaketet nedan finns testsviter, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i den mall för självdeklaration som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</td></tr>
<tr><th>Svenskt kortnamn</th><td>tillgänglig patient (TGP)</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:patientrelation</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.6 · <a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/1.0.6">tagg 1.0.6</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/master/">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ehr:accesscontrol** version 1.0.6.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [AssertCareEngagement](7-tjanstekontrakt.html#assertcareengagement) | 1.0 | Ger svar på om en medarbetare med uppdrag på angiven vårdenhet ska ges möjlighet att begära åtkomst till sammanhållen journalföring (TGP — Tillgänglig Patient). |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.5</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.5/T-granskning%20-%20%20ehr_accesscontrol_1.0.5.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.5/VIS_granskning%20-%20ehr_accesscontrol_1.0.5.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.5/VIS_granskning%20-%20ehr_accesscontrol_1.0.5.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.5/ServiceContracts_ehr_accesscontrol_1.0.5.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/1.0.5">källkod</a></td></tr>
<tr><td>1.0.4</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.4/VIS_granskningsmall_patientrelation%20(TGP)%20V1.0.4.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.4/VIS_granskningsmall_patientrelation%20(TGP)%20V1.0.4.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.4/AL-T%20Granskning%20av%20ehr_accesscontrol_1.0.4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//ehr_accesscontrol/1.0.4/ServiceContracts_ehr_accesscontrol_1.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/ehr_accesscontrol_1.0.4">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ehr.accesscontrol/src/master">källkod</a></td></tr>
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
