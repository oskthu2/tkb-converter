# infrastructure: itintegration: registry

<!-- tkb-version -->
**TKB-version:** 2.0 · **IG-version:** 2.0.0 · **Källa:** Bitbucket-tagg `2.0`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänsteadressering är en stödtjänst som används av en tjänsteplattform. Denna tjänstedomän omfattar informationsstrukturer och tjänster för åtkomst och hantering av tjänsteadressringsinformation. Tjänsteadressering syftar på den i T-boken beskrivna logiska komponenten tjänsteadresseringskatalog.</td></tr>
<tr><th>Svenskt kortnamn</th><td>tjänsteadressering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:tjänsteförmedlingstjänster:förmedlingsinformation</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0 · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/src/2.0">tagg 2.0</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/get/2.0.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **infrastructure: itintegration: registry** version 2.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Version 1.0 av tjänsterna (namnrymd `urn:riv:itintegration:registry:1`) finns i IG:n för itintegration: registry.

Tjänsteadressering är en stödtjänst som används av en tjänsteplattform. Denna tjänstedomän omfattar
informationsstrukturer och tjänster för åtkomst och hantering av tjänsteadressringsinformation.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetLogicalAddresseesByServiceContract](7-tjanstekontrakt.html#getlogicaladdresseesbyservicecontract) | 2.0 | Returnerar en lista över logiska adressater som har en tjänsteproducent för angivet tjänstekontrakt och anropsbehörighet för angiven tjänstekonsument. |
| [GetSupportedServiceContracts](7-tjanstekontrakt.html#getsupportedservicecontracts) | 2.0 | Returnerar en lista över tjänstekontrakt som stöds av en specifik logisk adressat. |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0_RC8</td><td>AB, TKB</td><td><a href="http://rivta.se/downloads/infrastructure_itintegration_registry/2.0_RC8/AL-T%20Granskning%20av%20infrastructure_itintegration_registry_2.0.0_RC8_PA_1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads/infrastructure_itintegration_registry/2.0_RC8/ServiceContracts_infrastructure_itintegration_registry_2.0_RC8.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/src/infrastructure_itintegration_registry_2.0_RC8">källkod</a></td></tr>
<tr><td>trunk</td><td>AB, TKB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.infrastructure.itintegration.registry/src/master">källkod</a></td></tr>
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
