# druglogistics: dosedispensing — Dosdispensering

## Översikt

FHIR Implementation Guide för tjänstedomänen **druglogistics: dosedispensing** version 1.1.0. Domänen innehåller tjänster mellan vårdsystem och dosapotek (Pascal/IOR-tjänsterna): registrera och uppdatera vårdtagare för dos, hämta vårdtagarinformation, beställa, hämta och avbeställa originalförpackningar, hämta dosapotekets lokala produktsortiment, söka vårdande enhet samt skicka, hämta och uppdatera status på meddelanden mellan vård och dosapotek.

**Observera:** källan innehåller ingen tjänstekontraktsbeskrivning (TKB). Denna IG är därför uppbyggd från domänens scheman (XSD/WSDL) samt de gränssnittsspecifikationer (PDF) som finns för varje tjänstekontrakt och dokumentet *Pascal – Objekt och felhantering*. Avsnitt som i andra IG:er hämtas ur TKB:n är markerade med *SAKNAS I KÄLLDOKUMENT*. Beskrivningar av fält är hämtade ur schemaannoteringarna.

RIV-TA namnrymd: `urn:riv:druglogistics:dosedispensing`

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Typ |
|----------|---------|-----|
| [AvbestallOrginalforpackning](7-tjanstekontrakt.html#avbestallorginalforpackning) | 1.0 | Fråga-svar |
| [BestallOrginalforpackning](7-tjanstekontrakt.html#bestallorginalforpackning) | 1.0 | Fråga-svar |
| [HamtaLokaltProduktsortiment](7-tjanstekontrakt.html#hamtalokaltproduktsortiment) | 1.1 | Fråga-svar |
| [HamtaMeddelanden](7-tjanstekontrakt.html#hamtameddelanden) | 1.0 | Fråga-svar |
| [HamtaOrginalforpackning](7-tjanstekontrakt.html#hamtaorginalforpackning) | 1.0 | Fråga-svar |
| [HamtaVardtagareinformation](7-tjanstekontrakt.html#hamtavardtagareinformation) | 1.0 | Fråga-svar |
| [SkapaVardtagare](7-tjanstekontrakt.html#skapavardtagare) | 1.0 | Fråga-svar |
| [SkickaMeddelanden](7-tjanstekontrakt.html#skickameddelanden) | 1.0 | Fråga-svar |
| [SokVardandeEnhet](7-tjanstekontrakt.html#sokvardandeenhet) | 1.0 | Fråga-svar |
| [UppdateraMeddelandeStatus](7-tjanstekontrakt.html#uppdaterameddelandestatus) | 1.0 | Fråga-svar |
| [UppdateraVardtagareinformation](7-tjanstekontrakt.html#uppdateravardtagareinformation) | 1.0 | Fråga-svar |

**Källa:** Bitbucket `rivta-domains/riv.druglogistics.dosedispensing`, tagg `TD_DRUGLOGISTICS_DOSEDISPENSING_1_1_0` (commit `ff5de62545f2`, 2013-09-30). Taggens innehåll är detsamma som `master`.

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
