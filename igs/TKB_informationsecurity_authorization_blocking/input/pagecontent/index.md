# informationsecurity: authorization: blocking

## Översikt

FHIR Implementation Guide för tjänstedomänen **informationsecurity: authorization: blocking** (Spärrtjänst) version 4.0.4.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 4.0.4 (2024-10-18), och domänens WSDL- och XSD-filer (tagg 4.0.4).

Domänen hanterar patienters spärrar mot direktåtkomst till journalinformation enligt patientdatalagen: registrering, hävning (permanent eller tillfällig), makulering, replikering till den nationella spärrtjänsten och kontroll av om information är spärrad.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetBlocks](7-tjanstekontrakt.html#getblocks) | 4.0 | Tjänst som hämtar registrerade spärrar för en patient och/eller vårdgivare. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns. |
| [GetExtendedBlocksForPatient](7-tjanstekontrakt.html#getextendedblocksforpatient) | 4.0 | Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns. |
| [GetPatientIds](7-tjanstekontrakt.html#getpatientids) | 4.0 | Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras. |
| [CheckBlocks](7-tjanstekontrakt.html#checkblocks) | 4.0 | Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som gäller mot andra vårdgivare/vårdenheter som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad. |
| [RegisterBlock](7-tjanstekontrakt.html#registerblock) | 4.0 | Tjänst som registrerar en ny spärr i den nationella spärrtjänsten (den aggregerade/replikerade spärrinformationen). |
| [UnregisterBlock](7-tjanstekontrakt.html#unregisterblock) | 4.0 | Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns. |
| [RegisterTemporaryRevoke](7-tjanstekontrakt.html#registertemporaryrevoke) | 4.0 | Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns. |
| [UnregisterTemporaryRevoke](7-tjanstekontrakt.html#unregistertemporaryrevoke) | 4.0 | Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns. |
| [RegisterExtendedBlock](7-tjanstekontrakt.html#registerextendedblock) | 4.0 | Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten. |
| [RevokeExtendedBlock](7-tjanstekontrakt.html#revokeextendedblock) | 4.0 | Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas. |
| [DeleteExtendedBlock](7-tjanstekontrakt.html#deleteextendedblock) | 4.0 | Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas. |
| [RegisterTemporaryExtendedRevoke](7-tjanstekontrakt.html#registertemporaryextendedrevoke) | 4.0 | Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal). |
| [CancelTemporaryExtendedRevoke](7-tjanstekontrakt.html#canceltemporaryextendedrevoke) | 4.0 | Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas. |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
