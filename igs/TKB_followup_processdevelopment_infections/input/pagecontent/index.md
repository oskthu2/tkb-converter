# followup: processdevelopment: infections

## Översikt

FHIR Implementation Guide för tjänstedomänen **followup: processdevelopment: infections** version 1.0.2.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen innehåller tjänstekontrakt för registrering och radering av infektioner, antibiotikaanvändning, mikrolaboratoriesvar, åtgärder, tillstånd samt vårdtillfällen i Infektionsverktyget.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [ProcessPrescriptionReason](7-tjanstekontrakt.html#processprescriptionreason) | 1.0 | Registrerar en ordinationsorsak med information om patient, organisatorisk enhet och ordination |
| [DeletePrescriptionReason](7-tjanstekontrakt.html#deleteprescriptionreason) | 1.0 | Raderar information som tidigare registrerats via ProcessPrescriptionReason |
| [DeletePrescription](7-tjanstekontrakt.html#deleteprescription) | 1.0 | Raderar information om en ordination som registrerats via ProcessPrescriptionReason |
| [ProcessLaboratoryReport](7-tjanstekontrakt.html#processlaboratoryreport) | 1.0 | Registrerar ett nytt laboratoriesvar med tillhörande information |
| [DeleteLaboratoryReport](7-tjanstekontrakt.html#deletelaboratoryreport) | 1.0 | Raderar information som tidigare registrerats via ProcessLaboratoryReport |
| [ProcessCareEncounter](7-tjanstekontrakt.html#processcareencounter) | 1.0 | Skriver vårdkontaktsdata till Infektionsverktyget |
| [DeleteCareEncounter](7-tjanstekontrakt.html#deletecareencounter) | 1.0 | Raderar information som tidigare registrerats via ProcessCareEncounter |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
