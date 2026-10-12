# infrastructure: itintegration: dataexchange

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `7fdd1d090b32` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Anmärkning</th><td>saknas i DOMDB</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.dataexchange/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.dataexchange/src/7fdd1d090b32ed41a8e5e263a435658df636a9a2">commit 7fdd1d090b32</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.dataexchange/get/7fdd1d090b32.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: itintegration: dataexchange** (Datautbyte) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) och domänens WSDL- och XSD-filer på grenen develop (commit 7fdd1d090b32, 2025-09-11).

Domänen används för att hämta binära filer, t.ex. bilagor, som ett annat tjänstekontrakt eller meddelande refererar till. Den har inte släppts: det finns inga taggar, master innehåller bara en README, och TKB:ns revisionshistorik anger en preliminär version.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetBinaryData](7-tjanstekontrakt.html#getbinarydata) | 1.0 | Tjänstekontraktet hanterar information som kodas och överförs i ett format bestående enbart av bitar (0 och 1), vilket kan inkludera filer, bilder, ljud eller andra typer av data som inte är textbaserade. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
