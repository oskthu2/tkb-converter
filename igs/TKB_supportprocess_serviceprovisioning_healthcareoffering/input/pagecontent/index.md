# supportprocess: serviceprovisioning: healthcareoffering

## Översikt

FHIR Implementation Guide för tjänstedomänen **supportprocess: serviceprovisioning: healthcareoffering** (Vård- och omsorgsutbud) version 3.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 3.0 (2023-04-25), och domänens WSDL- och XSD-filer (tagg 3.0).

Tjänstedomänen gör det möjligt att hämta utbudskataloger och de vård- och omsorgstjänster som katalogansvariga organisationer erbjuder, till exempel för att hitta rätt mottagare av en remiss.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetOfferingCatalogues](7-tjanstekontrakt.html#getofferingcatalogues) | 2.0 | Hämtar information om utbudskataloger, vilken adress de tillhandahålls på och vilka katalogansvariga organisationer som tillhandahåller utbud i respektive katalog. |
| [GetCareServiceOfferings](7-tjanstekontrakt.html#getcareserviceofferings) | 3.0 | GetCareServiceOfferings hämtar de vård- och omsorgstjänster som ingår i det utbud som erbjuds av en katalogansvarig organisation och som är tillgängliga baserat på användarens filterparametrar. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
