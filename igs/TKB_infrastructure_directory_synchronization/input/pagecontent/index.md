# infrastructure: directory: synchronization

<!-- tkb-version -->
**TKB-version:** 1.0_RC3 · **IG-version:** 1.0.0-rc3 · **Källa:** Bitbucket-tagg `1.0_RC3`
<!-- /tkb-version -->

## Översikt

FHIR Implementation Guide för tjänstedomänen **infrastructure: directory: synchronization** (katalogtjänstsynkronisering) version 1.0_RC3.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0_RC3 (2018-09-21), och domänens WSDL- och XSD-filer (tagg 1.0_RC3).

Domänen låter ett system med lokala kopior av masterdata (t.ex. vård- och omsorgsutbud) hämta information om vilka poster som har skapats, ändrats eller tagits bort i masterdatakällan under en tidsperiod. Domänen finns bara som release candidate.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetMasterDataChangeSet](7-tjanstekontrakt.html#getmasterdatachangeset) | 1.0 | Hämtar information om masterdata som förändrats i en masterdatakälla baserat på sökkriterier. Sökkriterierna specificerar typ av förändring, datum för förändringen samt vilken typ av masterdata som efterfrågas. Masterdatakällan svarar med en lista innehållande id på poster som förändrats enligt sökkriterierna. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
