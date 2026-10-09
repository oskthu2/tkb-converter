# informationsecurity: authorization: consent

<!-- tkb-version -->
**TKB-version:** 2.0.4 · **IG-version:** 2.0.4 · **Källa:** Bitbucket-tagg `2.0.4`
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>För att vårdpersonalen ska få åtkomst till patientens information hos andra vårdgivare krävs patientens samtycke. Samtyckeshantering registrerar och lagrar information om patientens samtycke, och innehåller uppgifter om vilken tidsperiod samtycket ska gälla, och för vilken vårdpersonal/vårdenhet som samtycket ska gälla.Tjänstekontrakten för Samtyckeshantering gör det möjligt för vårdpersonal att genom sina vårdsystem på ett flexibelt sätt hantera sina &quot;egna&quot; samtycken, samtidigt som samverkan möjliggörs med nationella e-tjänster som erbjuder direktåtkomst till patientuppgifter. Inga dubbelregistreringar ska behöva göras. Tjänstekontrakten gör det också möjligt att åberopa nödsituation, så att inte ett oregistrerat samtycke kan äventyra patientens liv och hälsa. *OBSERVERA: I releasepaketet nedan finns testsviter för tre av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</td></tr>
<tr><th>Svenskt kortnamn</th><td>samtyckestjänst</td></tr>
<tr><th>Svenskt namn</th><td>informationssäkerhet:säkerhetstjänster:samtyckestjänst</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src">Bitbucket</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 2.0.4 · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0.4">tagg 2.0.4</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/get/2.0.4.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

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

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>2.0.2</td><td>IS, AB, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning%20-%20informationsecurity_authorization_consent_2.0.2.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/VIS_granskning%20-%20informationsecurity_authorization_consent_2.0.2.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/T-granskning%20-%20%20informationsecurity.authorization.consent%202.0.2.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0.2/ServiceContracts_informationsecurity_authorization_consent_2.0.2.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0.2">källkod</a></td></tr>
<tr><td>2.0</td><td>AB, IS, TKB, TKB</td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/VIS_granskning_informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Säkerhet: Delvis Godkänd</a><br/><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/T-granskning%20-%20informationsecurity_authorization_consent_2.0.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//informationsecurity_authorization_consent/2.0/ServiceContracts_informationsecurity_authorization_consent_2.0.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.consent/src/2.0">källkod</a></td></tr>
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
