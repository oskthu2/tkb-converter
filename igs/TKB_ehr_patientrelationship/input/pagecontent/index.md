# ehr: patientrelationship

## Översikt

FHIR Implementation Guide för tjänstedomänen **ehr: patientrelationship** version 1.0.1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar patientrelationer mellan vårdpersonal och patient i enlighet med Patientdatalagen (PDL).
Namespace: `urn:riv:ehr:patientrelationship`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Underdomän | Beskrivning |
|----------|---------|-----------|-------------|
| [GetPatientRelationsForPatient](7-tjanstekontrakt.html#getpatientrelationsforpatient) | 1.0 | querying | Läs patientrelationer för patient inom vårdgivare |
| [GetPatientRelationsForCareProvider](7-tjanstekontrakt.html#getpatientrelationsforcareprovider) | 1.0 | querying | Läs patientrelationer inom vårdgivare |
| [GetExtendedPatientRelationsForPatient](7-tjanstekontrakt.html#getextendedpatientrelationsforpatient) | 1.0 | administration | Läs patientrelationer för patient med utökad information |
| [CheckPatientRelation](7-tjanstekontrakt.html#checkpatientrelation) | 1.0 | accesscontrol | Kontrollera om patientrelation finns |
| [RegisterExtendedPatientRelation](7-tjanstekontrakt.html#registerextendedpatientrelation) | 1.0 | administration | Registrera patientrelation med utökad information |
| [CancelExtendedPatientRelation](7-tjanstekontrakt.html#cancelextendedpatientrelation) | 1.0 | administration | Återkalla patientrelation med utökad information |
| [DeleteExtendedPatientRelation](7-tjanstekontrakt.html#deleteextendedpatientrelation) | 1.0 | administration | Makulera patientrelation med utökad information |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Generella regler](2-generella-regler.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [8 Datatyper](8-datatyper.html)
* [Artefakter](artifacts.html)
