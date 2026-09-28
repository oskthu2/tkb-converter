# informationsecurity: authorization: consent

## Översikt

FHIR Implementation Guide för tjänstedomänen **informationsecurity: authorization: consent** (Samtyckestjänst) version 2.0.4.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 2.0.4, och domänens WSDL- och XSD-filer (tagg 2.0.4, 2025-12-09).

Domänen hanterar patientens eller brukarens samtycke till direktåtkomst inom sammanhållen vård- och omsorgsdokumentation, och registrering av nödsituationer där samtycke inte kan inhämtas: registrering, avslut, makulering, kontroll och läsning av samtycken.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetConsentsForPatient](7-tjanstekontrakt.html#getconsentsforpatient) | 2.0 | Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation. |
| [GetConsentsForCareProvider](7-tjanstekontrakt.html#getconsentsforcareprovider) | 2.0 | Tjänst som läser alla giltiga samtyckesintyg för en viss vård-/omsorgsgivare med grundinformation. |
| [GetExtendedConsentsForPatient](7-tjanstekontrakt.html#getextendedconsentsforpatient) | 2.0 | Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information. |
| [CheckConsent](7-tjanstekontrakt.html#checkconsent) | 2.0 | Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare). |
| [RegisterExtendedConsent](7-tjanstekontrakt.html#registerextendedconsent) | 2.0 | Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens/brukarens information från andra vårdgivare enligt PDL. |
| [CancelExtendedConsent](7-tjanstekontrakt.html#cancelextendedconsent) | 2.0 | Tjänst som avslutar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som avslutat (ej längre giltig) för historikens skull. Ett avslutat samtycke kan ej återtas. |
| [DeleteExtendedConsent](7-tjanstekontrakt.html#deleteextendedconsent) | 2.0 | Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken. |
| [GetAllExtendedConsentsForPatient](7-tjanstekontrakt.html#getallextendedconsentsforpatient) | 1.0 | Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information. |
| [EndConsentByPatient](7-tjanstekontrakt.html#endconsentbypatient) | 1.0 | Tjänst som ger patient/brukare möjlighet att avsluta ett tidigare givet samtycke i förtid. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
