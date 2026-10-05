# supportprocess: personalresources: interpretation — Tolkförmedling

<!-- tkb-version -->
**TKB-version:** 1.0 · **IG-version:** 1.0.0-snapshot · **Källa:** Bitbucket-commit `010d6f367f37` (ingen tagg)
<!-- /tkb-version -->

## Översikt

<!-- landningssida:fakta — genererad av scripts/build_portal.py, redigera inte för hand -->

<table class="grid">
<tr><th>Svenskt kortnamn</th><td>tolkförmedling</td></tr>
<tr><th>Svenskt namn</th><td>operativt processtöd:personalresurser:tolkförmedlning</td></tr>
<tr><th>Typ</th><td>Extern tjänstedomän</td></tr>
<tr><th>Förvaltare</th><td>SLL</td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.personalresources.interpretation/src">Bitbucket</a></td></tr>
<tr><th>Ärenden</th><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.personalresources.interpretation/issues">Bitbucket issues</a></td></tr>
<tr><th>Underlag för denna IG</th><td>Version 1.0 · <a href="https://bitbucket.org/rivta-domains/riv.supportprocess.personalresources.interpretation/src/010d6f367f37f3b2969e577e570518b2c11408ec">commit 010d6f367f37</a> · <a href="https://bitbucket.org/rivta-domains/riv.supportprocess.personalresources.interpretation/get/010d6f367f37.zip">zip</a></td></tr>
<tr><th>RIV-TA-portalen</th><td><a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstedomaner.html">Alla tjänstedomäner</a> · <a href="https://oskthu2.github.io/tkb-converter/rivta-portal/tjanstekontrakt.html">Alla tjänstekontrakt</a></td></tr>
</table>

<!-- /landningssida:fakta -->

FHIR Implementation Guide för tjänstedomänen **supportprocess: personalresources: interpretation** ("Operativt processtöd: personalresurser: tolkförmedling") version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB).

Domänen låter tolkförmedlingars system hämta och besvara förfrågningar om tolkuppdrag samt skapa, hämta och uppdatera beställningar i Tolkportalen (Stockholms läns landsting).

RIV-TA namnrymd: `urn:riv:supportprocess:personalresources:interpretation`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [AnswerInquiry](7-tjanstekontrakt.html#answerinquiry) | 1.0 | Besvarar en förfrågan om tolkuppdrag |
| [ListBookings](7-tjanstekontrakt.html#listbookings) | 1.0 | Hämtar tolkförmedlingens beställningar från Tolkportalen |
| [ListInquiries](7-tjanstekontrakt.html#listinquiries) | 1.0 | Hämtar förfrågningar om tolkuppdrag från Tolkportalen |
| [UpdateBooking](7-tjanstekontrakt.html#updatebooking) | 1.0 | Uppdaterar beställningsinformation i Tolkportalen |
| [CreateBooking](7-tjanstekontrakt.html#createbooking) | 1.0 | Registrerar en inringd beställning i Tolkportalen |

**Källa:** TKB-dokumentet (`TKB_supportprocess_personalresources_interpretation.docx`, version 1.0_RC1, 2017-07-10) från Bitbucket `rivta-domains/riv.supportprocess.personalresources.interpretation`, commit `010d6f367f37` på `master` (repot har inga taggar).

<!-- landningssida:versioner — genererad av scripts/build_portal.py, redigera inte för hand -->

### Versioner och granskningar

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>trunk</td><td>TKB, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.supportprocess.personalresources.interpretation/src/master">källkod</a></td></tr>
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
