# itintegration: registry

<!-- tkb-version -->
**TKB-version:** 1.0.0 · **IG-version:** 1.0.0 · **Källa:** Bitbucket-tagg `TD_REGISTRY_1_0_0_R`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänsteadressering är en stödtjänst som används av en tjänsteplattform. Denna tjänstedomän omfattar informationsstrukturer och tjänster för åtkomst och hantering av tjänsteadressringsinformation. Tjänsteadressering syftar på den i T-boken beskrivna logiska komponenten tjänsteadresseringskatalog. Denna tjänstedomän utvecklas inte längre och har ersatts av domänen infrastructure:itintegration:registry.</td></tr>
<tr><th>Svenskt kortnamn</th><td>tjänsteadressering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:tjänsteförmedlingstjänster:adressering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.itintegration.registry/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0.0 · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.registry/src/TD_REGISTRY_1_0_0_R">tagg TD_REGISTRY_1_0_0_R</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.registry/get/TD_REGISTRY_1_0_0_R.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **itintegration: registry** (tjänsteadresseringskatalog) version 1.0.0.
Genererad från Ineras tjänstekontraktsbeskrivning, utgåva A (2012-04-14), och domänens WSDL- och XSD-filer.

Version 2.0 av domänen (namnrymd `urn:riv:infrastructure:itintegration:registry:2`) finns i IG:n för infrastructure: itintegration: registry.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetLogicalAddresseesByServiceContract](7-tjanstekontrakt.html#getlogicaladdresseesbyservicecontract) | 1.0 | Listar logiska adressater som har en tjänsteproducent för ett tjänstekontrakt |
| [GetSupportedServiceContracts](7-tjanstekontrakt.html#getsupportedservicecontracts) | 1.0 | Listar tjänstekontrakt som stöds av en logisk adressat |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>1.0.0</td><td></td><td>Äldre granskningsprocess: Teknik: Godkänd</td><td><a href="http://rivta.se/downloads/itintegration_registry/1.0.0/ServiceContracts_itintegration_registry_1.0.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.itintegration.registry/src/TD_REGISTRY_1_0_0_R">källkod</a></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Informationsmodell](2-informationsmodell.html)
* [3 Versionsinformation](3-versionsinformation.html)
* [4 Generella regler](4-generella-regler.html)
* [5 SLA-krav](5-sla-krav.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [Artefakter](artifacts.html)
