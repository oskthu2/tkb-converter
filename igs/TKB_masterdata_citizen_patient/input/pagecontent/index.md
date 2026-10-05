# masterdata: citizen: patient

<!-- tkb-version -->
**TKB-version:** 1.0_RC1 · **IG-version:** 1.0.0-rc1.snapshot · **Källa:** Bitbucket-commit `efa4099dabb2` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Anmärkning</th><td>saknas i DOMDB</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.patient/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.patient/src/efa4099dabb270fe9b7e6b7cc9f868867eca0666">commit efa4099dabb2</a> · <a href="https://bitbucket.org/rivta-domains/riv.masterdata.citizen.patient/get/efa4099dabb2.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **masterdata: citizen: patient** (underlagförprocesstöd: invånare: patientuppgifter) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0_RC1 (2017-01-26), och domänens WSDL- och XSD-filer (senaste commit på master, efa4099dabb2; domänen har inga taggar).

Tjänstedomänen hanterar patientens kontaktuppgifter: telefonnummer och elektroniska adresser samt kontaktpersoner som närstående, släktingar och företrädare. TKB:n är till stor del en ej ifylld mall, så fältreglerna i [avsnitt 7](7-tjanstekontrakt.html) bygger på schemana.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetPatientContactInformation](7-tjanstekontrakt.html#getpatientcontactinformation) | 1.0 | Kontraktet används för att hämta kontaktuppgifter för en patient. |
| [UpdatePatientContactInformation](7-tjanstekontrakt.html#updatepatientcontactinformation) | 1.0 | Kontraktet används för att hämta kontaktuppgifter för en patient. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
