# masterdata: organisationalresources: licensetopractice

<!-- tkb-version -->
**TKB-version:** 2.0 · **IG-version:** 2.0.0 · **Källa:** Bitbucket-commit `cc58351d9e83`, efter taggen `masterdata.organisationalresources.licensetopractice_2.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med tjänstedomänen är att ge direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp) för offentliga vårdgivare samt Inspektionen för vård-och omsorg, genom att låta dem söka efter personer i HoSp-registret. Tjänstekontrakten inom domänen kan användas på två sätt av offentliga vårdgivare. Antingen kan man söka efter en person genom att ange dennes personnummer eller samordningsnummer. Alternativt kan man söka efter en person genom att ange efternamn, ett eller flera förnamn och/eller födelsedatum. Inspektionen för vård och omsorg (IVO) får söka på flera sätt.</td></tr>
<tr><th>Svenskt kortnamn</th><td>yrkeslegitimering</td></tr>
<tr><th>Svenskt namn</th><td>underlagförprocesstöd:personella resurser:yrkeslegitimering</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>Socialstyrelse</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0 · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/masterdata.organisationalresources.licensetopractice_2.0">tagg masterdata.organisationalresources.licensetopractice_2.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/master/">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **masterdata: organisationalresources: licensetopractice** version 2.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen syftar till att ge direktåtkomst till Socialstyrelsens register över hälso- och sjukvårdspersonal (HoSp) för offentliga vårdgivare samt Inspektionen för vård och omsorg (IVO).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetHospPersonForPublicHealthcare](7-tjanstekontrakt.html#gethosppersonforpublichealthcare) | 2.0 | Hämtar behörighetsinformation för en person för offentliga vårdgivare |
| [GetHospPersonForIVO](7-tjanstekontrakt.html#gethosppersonforivo) | 2.0 | Hämtar behörighetsinformation för en person för IVO |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/2.0/VIS_granskning%20masterdata.organisationalresources.licensetopractice%202.0_RC1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/2.0/AL%20T-granskning%20masterdata.organisationalresources.licensetopractice_2.0_RC1.doc">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/2.0/VIS_granskning%20masterdata.organisationalresources.licensetopractice%202.0_RC1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/2.0/ServiceContracts_masterdata_organisationalresources_licensetopractice_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/masterdata.organisationalresources.licensetopractice_2.0">källkod</a></td></tr>
<tr><td>1.1</td><td>IS, AB, TKB</td><td><a href="http://rivta.se/downloads/masterdata_organisationalresources_licensetopractice/1.1/AL%20T-granskning%20Infrastructure.directory.licensetopractice_1.1.doc">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/1.1/VIS_granskning%20infrastructure.directory.licensetopractice%201.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//masterdata_organisationalresources_licensetopractice/1.1/VIS_granskning%20infrastructure.directory.licensetopractice%201.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads/masterdata_organisationalresources_licensetopractice/1.1/ServiceContracts_Infrastructure.directory.licensetopractice_1.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/Infrastructure.directory.licensetopractice_1.1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.organisationalresources.licensetopractice/src/master">källkod</a></td></tr>
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
