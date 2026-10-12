# informationsecurity: authorization: blocking

<!-- tkb-version -->
**TKB-version:** 4.0.4 · **IG-version:** 4.0.4 · **Källa:** Bitbucket-tagg `4.0.4`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Spärrhantering registrerar spärrar och kontrollerar om en patient har spärrat tillgång till patientinformation från IT-system inom och mellan vårdgivare. Tjänstekontrakten för Spärrhantering gör det möjligt för vårdpersonal att genom sina egna vårdsystem registrera lokala spärrar. Tjänstekontrakten gör det också möjligt att replikera de lokala spärrarna till den nationella spärrtjänsten. Detta är nödvändigt för att lokalt spärrad information även ska vara spärrad i nationella tjänster som har åtkomst till patientinformation, till exempel NPÖ. *OBSERVERA: I releasepaketet nedan finns testsviter för två av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</td></tr>
<tr><th>Svenskt kortnamn</th><td>spärrhantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:säkerhetstjänster:spärrhantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 4.0.4 · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.4">tagg 4.0.4</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/get/4.0.4.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

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

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>4.0.3</td><td>AB, TKB, IS</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/T-granskning%20-%20%20informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning%20-%20informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/VIS_granskning%20-%20informationsecurity_authorization_blocking_4.0.3.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.3/ServiceContracts_informationsecurity_authorization_blocking_4.0.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.3">källkod</a></td></tr>
<tr><td>4.0.1</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/T-Granskning-riv.informationsecurity.authorization.blocking_4_0_1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_blocking/4.0.1/ServiceContracts_informationsecurity_authorization_blocking_4.0.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.blocking/src/4.0.1">källkod</a></td></tr>
<tr><td>trunk</td><td></td><td></td><td></td></tr>
</tbody>
</table>

<p><i>Källa: ögonblicksbild av DOMDB från 2021-08-24, via RIV-TA-portalen.</i></p>

<!-- /landningssida:versioner -->

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
