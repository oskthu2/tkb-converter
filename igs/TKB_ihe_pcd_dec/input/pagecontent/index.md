# ihe: pcd: dec

<!-- tkb-version -->
**TKB-version:** 1.0.1 · **IG-version:** 1.0.1 · **Källa:** Bitbucket-tagg `1.0.1`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Denna tjänstedomän beskriver den svenska tillämpningen av IHE-profilen PCD-01 inom ramen för Continua Guidelines 2016, Observation Upload. Domänen innehåller ett tjänstekontrakt för inrapportering av mätdata från personliga insamlingspunkter (exempelvis &quot;back-end&quot; från en monitoreringsapp med anslutna sensorer) och från medicinteknisk utrustning. Tjänsteproducenten som tar emot inrapporterad mätdata är ett försystem till journalsystemet. Mottagen mätdata kan tillämpas som kliniskt beslutsunderlag men blir inte en journalhandling i och med mottagandet.</td></tr>
<tr><th>Svenskt kortnamn</th><td>mätdata från mätutrustning</td></tr>
<tr><th>Svenskt namn</th><td>vård- och omsorg kärnprocess: hantera hälsorelaterade tillstånd</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.1 · <a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/src/1.0.1">tagg 1.0.1</a> · <a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/get/1.0.1.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **ihe: pcd: dec** (Mätdata från mätutrustning) version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0.1 (2017-10-18), och domänens WSDL- och XSD-filer (tagg 1.0.1).

Tjänstedomänen överför observationer och mätdata från mätutrustning, till exempel i hemmet, till verksamhetens system med IHE-profilen PCD-01 (HL7 v2.6 ORU^R01) enligt Continua Design Guidelines.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [DeviceObservationConsumer](7-tjanstekontrakt.html#deviceobservationconsumer) | 1.0 | Detta tjänstekontrakt avser att stödja överföring av observationer och mätdata ifrån ett producerande system eller mellanlagrande system med hjälp av profilen IHE-PCD-01 och uppträder således i segmentet Services-IF enligt Continuas e2e arkitektur. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads//ihe_pcd_dec/1.0/T-granskning%20-%20riv.ihe.pcd.dec_1.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//ihe_pcd_dec/1.0/ServiceContracts_IHE_PCD_DEC_1.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/src/1.0">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.ihe.pcd.dec/src/master">källkod</a></td></tr>
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
