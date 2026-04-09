# ehr: commission

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: commission** version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB) — dokument `TKB_ehr_commission_1.0_RC1.docx`.

Den svenska benämningen för denna tjänstedomän är **Uppdragsvalstjänsten**. Tjänstekontraktet är baserat på RIV TA 2.1 och hanterar val av medarbetaruppdrag vid autentisering från rik klient eller tunn klient.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCommissionsForPerson](7-tjanstekontrakt.html#getcommissionsforperson) | 1.0 | Hämtar lista med de aktuella medarbetaruppdrag som en användare har samt det senaste valda medarbetaruppdraget. |
| [SetSelectedCommissionForPerson](7-tjanstekontrakt.html#setselectedcommissionforperson) | 1.0 | Sätter vilket medarbetaruppdrag som valdes aktivt av användaren. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
