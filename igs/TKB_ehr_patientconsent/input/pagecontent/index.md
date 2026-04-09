# ehr: patientconsent — Samtyckeshantering

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: patientconsent** version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen avser samtyckeshantering för direktåtkomst till patientuppgifter mellan vårdgivare inom sammanhållen journalföring enligt Patientdatalagen (PDL).

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|-----------|-------------|
| [GetConsentsForPatient](7-tjanstekontrakt.html#getconsentsforpatient) | 1.0 | querying | Hämta giltiga samtycken för en specifik patient |
| [GetConsentsForCareProvider](7-tjanstekontrakt.html#getconsentsforcareprovider) | 1.0 | querying | Hämta alla giltiga samtycken för en vårdgivare |
| [GetExtendedConsentsForPatient](7-tjanstekontrakt.html#getextendedconsentsforpatient) | 1.0 | administration | Hämta samtycken med utökad information för en patient |
| [CheckConsent](7-tjanstekontrakt.html#checkconsent) | 1.0 | accesscontrol | Kontrollera om giltigt samtycke finns för en aktör |
| [RegisterExtendedConsent](7-tjanstekontrakt.html#registerextendedconsent) | 1.0 | administration | Registrera ett samtyckesintyg |
| [CancelExtendedConsent](7-tjanstekontrakt.html#cancelextendedconsent) | 1.0 | administration | Återkalla ett samtyckesintyg |
| [DeleteExtendedConsent](7-tjanstekontrakt.html#deleteextendedconsent) | 1.0 | administration | Makulera ett samtyckesintyg |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [10 Datatyper](10-datatyper.html)
* [Artefakter](artifacts.html)
