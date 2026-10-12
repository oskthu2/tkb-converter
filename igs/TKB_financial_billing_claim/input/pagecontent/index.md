# financial: billing: claim

<!-- tkb-version -->
**TKB-version:** 1.1 · **IG-version:** 1.1.0 · **Källa:** Bitbucket-tagg `1.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med tjänstedomänen Utomlänsfakturering är att göra det möjligt för landsting/regioner att skicka fakturaunderlag till andra landsting/regioner på ett enhetligt och standardiserat sätt. Tjänstekontraktet i tjänstedomänen gör det möjligt för en vårdgivare att skicka fakturaunderlag till en patients hemlandsting vid fakturering och eventuell kreditering av patientens vård. Fakturaunderlaget innehåller patientuppgifter och uppgifter kring den vård patienten fått.</td></tr>
<tr><th>Svenskt kortnamn</th><td>utomlänsfakturering</td></tr>
<tr><th>Svenskt namn</th><td>operativt processtöd: samordna resurser över verksamhetsstrukturer</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.1 · <a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/src/1.1">tagg 1.1</a> · <a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/get/1.1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **financial: billing: claim** (Utomlänsfakturering) version 1.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.1 (2025-10-13), och domänens WSDL-, XSD- och schematronfiler (tagg 1.1).

Tjänstedomänen används för att skicka digitala fakturaunderlag när en patient har fått vård utanför sin hemregion och vårdregionen fakturerar hemregionen enligt Riksavtalet för utomlänsvård.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessClaimSpecification](7-tjanstekontrakt.html#processclaimspecification) | 1.1 | Tjänstekontraktet ProcessClaimSpecification används för att skicka fakturaunderlag då fakturering ska göras från en patients vårdregion till patientens hemregion. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.4</td><td>IS, TKB, AB</td><td><a href="http://rivta.se/downloads//financial_billing_claim/1.0.4/T-granskning-financial_billing_claim_1_0_4.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//financial_billing_claim/1.0.4/VIS_granskning-%20financial_billing_claim_1.0.4.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//financial_billing_claim/1.0.4/VIS_granskning-%20financial_billing_claim_1.0.4.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//financial_billing_claim/1.0.4/ServiceContracts_financial_billing_claim_1.0.4.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/src/1.0.4">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, IS, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.financial.billing.claim/src/master">källkod</a></td></tr>
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
