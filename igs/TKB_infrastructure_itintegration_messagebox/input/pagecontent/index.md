# infrastructure: itintegration: messagebox

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-tagg `infrastructure_itintegration_messagebox_1.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Gammal domänen</td></tr>
<tr><th>Svenskt kortnamn</th><td>meddelandetjänst</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:tjänsteförmedlingstjänster:meddelandetjänst</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/src/infrastructure_itintegration_messagebox_1.0">tagg infrastructure_itintegration_messagebox_1.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/get/infrastructure_itintegration_messagebox_1.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: itintegration: messagebox** (Meddelandetjänst) version 1.0.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0.0 (2013-12-04), och domänens WSDL- och XSD-filer.

Meddelandetjänsten mellanlagrar meddelanden adresserade till verksamheter. Ett journalsystem listar, hämtar och tar bort meddelanden som adresserats till de verksamheter det hanterar.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ListMessages](7-tjanstekontrakt.html#listmessages) | 1.0 | Listar meddelanden i Meddelandetjänsten |
| [GetMessages](7-tjanstekontrakt.html#getmessages) | 1.0 | Hämtar meddelanden utifrån meddelandeidentiteter |
| [DeleteMessages](7-tjanstekontrakt.html#deletemessages) | 1.0 | Tar bort meddelanden som tidigare hämtats |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0</td><td>TKB</td><td>Äldre granskningsprocess: Informatik: Godkänd<br/>Äldre granskningsprocess: Säkerhet: Godkänd<br/>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/infrastructure_itintegration_messagebox/1.0/ServiceContracts_infrastructure_itintegration_messagebox_1.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/src/infrastructure_itintegration_messagebox_1.0">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.messagebox/src/master">källkod</a></td></tr>
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
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
