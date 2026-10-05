# supportprocess: serviceprovisioning: healthcareoffering

<!-- tkb-version -->
**TKB-version:** 3.0 · **IG-version:** 3.0.0 · **Källa:** Bitbucket-tagg `3.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Syftet med denna tjänstedomän är att göra det möjligt för både vårdprofession och invånare att söka efter vårdtjänster, samt var dessa utförs. Tjänstekontrakten inom denna domän gör det möjligt att söka efter vem som kan utföra en viss typ av vårdtjänst, var vårdtjänsten utförs och ge detaljerad information om utföraren är lämplig att utföra vårdtjänsten.</td></tr>
<tr><th>Svenskt kortnamn</th><td>vårdochomsorgsutbud</td></tr>
<tr><th>Svenskt namn</th><td>operativt processtöd:tillgängliggöra tjänst:vårdochomsorgsutbud</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 3.0 · <a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/src/3.0">tagg 3.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/get/3.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **supportprocess: serviceprovisioning: healthcareoffering** (Vård- och omsorgsutbud) version 3.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 3.0 (2023-04-25), och domänens WSDL- och XSD-filer (tagg 3.0).

Tjänstedomänen gör det möjligt att hämta utbudskataloger och de vård- och omsorgstjänster som katalogansvariga organisationer erbjuder, till exempel för att hitta rätt mottagare av en remiss.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetOfferingCatalogues](7-tjanstekontrakt.html#getofferingcatalogues) | 2.0 | Hämtar information om utbudskataloger, vilken adress de tillhandahålls på och vilka katalogansvariga organisationer som tillhandahåller utbud i respektive katalog. |
| [GetCareServiceOfferings](7-tjanstekontrakt.html#getcareserviceofferings) | 3.0 | GetCareServiceOfferings hämtar de vård- och omsorgstjänster som ingår i det utbud som erbjuds av en katalogansvarig organisation och som är tillgängliga baserat på användarens filterparametrar. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.1</td><td>IS, AB, TKB</td><td><a href="http://rivta.se/downloads//supportprocess_serviceprovisioning_healthcareoffering/1.0.1/T-granskning%20supportprocess_serviceprovisioning_healthcareoffering_1.0.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//supportprocess_serviceprovisioning_healthcareoffering/1.0.1/VIS_granskning_supportprocess_serviceprovisioning_healthcareoffering_1.0.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//supportprocess_serviceprovisioning_healthcareoffering/1.0.1/VIS_granskning_supportprocess_serviceprovisioning_healthcareoffering_1.0.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//supportprocess_serviceprovisioning_healthcareoffering/1.0.1/ServiceContracts_supportprocess_serviceprovisioning_healthcareoffering_1.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/src/1.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, AB, IS</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.serviceprovisioning.healthcareoffering/src/master">källkod</a></td></tr>
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
