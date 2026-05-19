# clinicalprocess: healthcond: certificate

## Översikt

FHIR Implementation Guide för tjänstedomänen **clinicalprocess: healthcond: certificate** version 4.1-RC1.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen hanterar digitala intyg och tillhörande kommunikation inom hälso- och sjukvården. Den
inkluderar tjänstekontrakt för att registrera, hämta, makulera och skicka intyg samt ärendekommunikation
kring intyg.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetCertificate](7-tjanstekontrakt.html#getcertificate) | 2.1 | Hämtar ett enskilt intyg och tillhörande metadata |
| [ListCertificatesForCare](7-tjanstekontrakt.html#listcertificatesforcare) | 3.1 | Listar intyg för en patient på en eller flera enheter (vård) |
| [ListCertificatesForCitizen](7-tjanstekontrakt.html#listcertificatesforcitizan) | 4.0 | Listar intyg för en patient (invånartjänst) |
| [RegisterCertificate](7-tjanstekontrakt.html#registercertificate) | 3.1 | Registrerar ett intyg i en intygstjänst |
| [RevokeCertificate](7-tjanstekontrakt.html#revokecertificate) | 2.1 | Makulerar ett registrerat intyg |
| [SendCertificateToRecipient](7-tjanstekontrakt.html#sendcertificatetorecipient) | 2.1 | Skickar ett intyg till en intygsmottagare |
| [SendMessageToCare](7-tjanstekontrakt.html#sendmessagetocare) | 2.0 | Skickar meddelande från intygsmottagare till vården |
| [SendMessageToRecipient](7-tjanstekontrakt.html#sendmessagetorecipient) | 2.1 | Skickar meddelande från vården till intygsmottagare |
| [SetCertificateStatus](7-tjanstekontrakt.html#setcertificatestatus) | 2.0 | Sätter status för ett intyg |
| [CreateDraftCertificate](7-tjanstekontrakt.html#createdraftcertificate) | 3.2 | Skapar ett intygsutkast i en intygsapplikation |
| [CertificateStatusUpdateForCare](7-tjanstekontrakt.html#certificatestatusupdateforcare) | 3.1 | Skickar uppdateringar om ett intyg och ärendekommunikation |
| [ListCertificatesForCareWithQA](7-tjanstekontrakt.html#listcertificatesforcarewithqa) | 3.2 | Listar intyg med händelser och ärendekommunikation |
| [ListSickLeavesForCare](7-tjanstekontrakt.html#listsickleavesforcare) | 1.0 | Listar pågående sjukfall på en enhet |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
