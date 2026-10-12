# informationsecurity: authorization: pip

<!-- tkb-version -->
**TKB-version:** 1.0_RC1 · **IG-version:** 1.0.0-rc1.snapshot · **Källa:** Bitbucket-commit `729301865b83` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Beskrivning</th><td>Tjänstedomänens ändamål är att förse övriga tjänster med kvalitetssäkrad och aktuell behörighetsgrundande information. Användningsområden utgörs främst av sökningar efter behörighetsgrundande egenskaper i form av information om personers uppdrag kopplade till organisation samt anställningsrelaterade och personliga egenskaper av betydelse för åtkomst till information, vilket ofta, men inte alltid, är relaterat till Patientdatalagen, PDL.</td></tr>
<tr><th>Svenskt kortnamn</th><td>behörighetshantering</td></tr>
<tr><th>Svenskt namn</th><td>infrastruktur:katalogtjänster:behörighetshantering</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>Anmärkning</th><td>dold på rivta.se</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0_RC1 · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/src/729301865b83463d7ae96302329aac91301921df">commit 729301865b83</a> · <a href="https://bitbucket.org/rivta-domains/riv.informationsecurity.authorization.pip/get/729301865b83.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **informationsecurity: authorization: pip** (Behörighetsinformation) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0_RC1 (2017-06-28), och domänens WSDL- och XSD-filer (senaste commit på master, 729301865b83).

Tjänstedomänen tillhandahåller beslutsunderlag för åtkomstkontroll. Producenter har rollen som *policy information point*. Tjänstekontraktet GetSeals ger e-tjänster invånarens förseglingar, så att förseglad journalinformation kan filtreras bort innan den visas för invånaren.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetSeals](7-tjanstekontrakt.html#getseals) | 1.0 | Tjänstekontraktet GetSeals används för att vårdgivare skall kunna försegla invånarens åtkomst till sin egen information. Invånarens information blir då ej tillgänglig för invånaren via självbetjäningstjänster. Används då det finns risk att invånaren befinner sig i vanmaktssituation eller då invånaren ej önskar åtkomst alls till sin journalinformation. Beslut om att försegla journalinformation ligger hos invånaren. Efter taget beslut kan försegling göras av invånaren själv (endast full försegling) eller av vårdpersonal hos vårdgivare som hjälper invånaren att försegla delar av (vårdgivarförsegling eller enhetsförsegling) alternativt all journalinformation (full försegling). |

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
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
