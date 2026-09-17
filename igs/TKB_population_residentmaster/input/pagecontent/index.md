# population: residentmaster

## Översikt

FHIR Implementation Guide för tjänstedomänen **population: residentmaster** version
1.2. Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen tillhandahåller uppslagning av personuppgifter (demografiska uppgifter från
Skatteverkets folkbokföring) baserat på personnummer, i form av en familj av
tjänstekontrakt `LookupResidentFor<Profile>` — ett per publicerad delmängd (profil)
av fält. För närvarande finns endast en publicerad profil, **Full**.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [LookupResidentForFullProfile](7-tjanstekontrakt.html#lookupresidentforfullprofile) | 1.2 | Slår upp personuppgifter (fullständig profil) för en eller flera personer baserat på personnummer. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
