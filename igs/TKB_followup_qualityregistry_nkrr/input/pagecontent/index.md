# followup: qualityregistry: nkrr

<!-- tkb-version -->
**TKB-version:** 1.2.2 · **IG-version:** 1.2.2 · **Källa:** Bitbucket-tagg `1.2.2`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänen kvalitetsregister, nkrr består idag av ett tjänstekontrakt som hanterar underlag från vårddokumentation för överföring till kvalitetsregister. Primär användargrupp är de Nationella Kvalitetsregistren, men även andra konsumenter har användning av tjänstekontraktet inom domänen. Tjänstekontraktet avser att förenkla för kvalitetsregistren genom att via anrop hämta beslutsunderlag från vårddokumentationen och ställa samman detta till underlag för registrering.</td></tr>
<tr><th>Svenskt kortnamn</th><td>kvalitetsregister, nkrr</td></tr>
<tr><th>Svenskt namn</th><td>uppföljning kärnprocess: kvalitetsregister:nkrr</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>SKL</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.2.2 · <a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/src/1.2.2">tagg 1.2.2</a> · <a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/raw/master/docs/TKB_followup_qualityregistry_nkrr.docx">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **followup: qualityregistry: nkrr** version 1.2.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Tjänstedomänens omfattning är sammanställning av underlag från vårddokumentation för registrering i kvalitetsregister. Den kravställande processen är kvalitetsregistrens behov av att kunna hämta underlag om patient, samt den speciella juridik detta omges av.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessRegistrationNotification](7-tjanstekontrakt.html#processregistrationnotification) | 1.0 | Möjliggör för vårdgivare att notifiera kvalitetsregister om att vårdgivaren har uppgifter om en patient som avses registreras. |
| [GetFormData](7-tjanstekontrakt.html#getformdata) | 1.2 | Hämtar underlag för ett enskilt kvalitetsregisterformulär från vårddokumentation. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.1.1</td><td>TKB, AB, IS</td><td><a href="http://rivta.se/downloads//followup_qualityregistry_nkrr/1.1.1/VIS_granskning_followup_qualityregistry_nkrr_1.1.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//followup_qualityregistry_nkrr/1.1.1/T-granskning%20-%20followup_qualityregistry_nkrr_1.1.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//followup_qualityregistry_nkrr/1.1.1/VIS_granskning_followup_qualityregistry_nkrr_1.1.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//followup_qualityregistry_nkrr/1.1.1/ServiceContracts_followup_qualityregistry_nkrr_1.1.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/src/1.1.1">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, IS, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.followup.qualityregistry.nkrr/src/master">källkod</a></td></tr>
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
