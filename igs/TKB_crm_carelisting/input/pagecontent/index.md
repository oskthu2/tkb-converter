# crm: carelisting

## Översikt

FHIR Implementation Guide för tjänstedomänen **crm: carelisting** version 1.0.
Genererad från Ineras Nationell Listningstjänst informationsspecifikation (RIV-TA).

Domänen hanterar information om lokalt valbara primärvårdstjänster och lokalt gjorda invånarval av primärvårdstjänster. Konsumenter av informationen är exempelvis Mina Vårdkontakter (MVK), Nationell Patientöversikt (NPÖ) samt övriga intressenter.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetListing](7-tjanstekontrakt.html#getlisting) | 1.0 | Hämtar information om en persons aktiva listning (tjänsteval) |
| [GetAvailableFacilities](7-tjanstekontrakt.html#getavailablefacilities) | 1.0 | Hämtar lista med tillgängliga vårdenheter inom en region |
| [CreateListing](7-tjanstekontrakt.html#createlisting) | 1.0 | Skapar en ny listning (göra tjänsteval) |
| [GetListingTypes](7-tjanstekontrakt.html#getlistingtypes) | 1.0 | Hämtar möjliga listningstyper för en person |
| [GetPersonQueueStatus](7-tjanstekontrakt.html#getpersonqueuestatus) | 1.0 | Hämtar köstatus för en person |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
