# ehr: patientsummary

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: patientsummary** (Patientöversikt) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), utgåva PA1 (2012-11-16), och domänens WSDL- och XSD-filer.

Tjänstedomänen används för att dela detaljerad patientinformation på formatet EN13606 med en patientöversikt, i praktiken
Nationell patientöversikt (NPÖ). Den är en RIVTA 2.1-anpassning av de tidigare EN13606-tjänsterna RIV13606REQUEST_EHR_EXTRACT och SendEhrExtract.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetEhrExtract](7-tjanstekontrakt.html#getehrextract) | 1.0 | Hämtar detaljerad patientinformation (EN13606-extrakt) |
| [ReceiveEhrExtract](7-tjanstekontrakt.html#receiveehrextract) | 1.0 | Tar emot detaljerad patientinformation som en part vill dela |
| [ReceiveEhrExtractStatus](7-tjanstekontrakt.html#receiveehrextractstatus) | 1.0 | Tar emot status för ett tidigare ReceiveEhrExtract-anrop |
| [DeleteEhrExtract](7-tjanstekontrakt.html#deleteehrextract) | 1.0 | Tar bort information som delats med ReceiveEhrExtract |
| [DeleteEhrExtractStatus](7-tjanstekontrakt.html#deleteehrextractstatus) | 1.0 | Tar emot status för ett tidigare DeleteEhrExtract-anrop |

**Om källan:** TKB:n är ett remissutkast (utgåva PA1) i det äldre Word-formatet (.doc). Källan saknar versionstaggar;
IG:n bygger på senaste commit på `master` (2013-10-11). Källan innehåller också ett utkast till en version 2 av domänen,
som återges i [bilaga 9](9-bilaga-utkast-version-2.html).

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [9 Bilaga: utkast version 2](9-bilaga-utkast-version-2.html)
* [Artefakter](artifacts.html)
