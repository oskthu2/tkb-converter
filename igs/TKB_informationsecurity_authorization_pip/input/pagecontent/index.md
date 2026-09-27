# informationsecurity: authorization: pip

## Översikt

FHIR Implementation Guide för tjänstedomänen **informationsecurity: authorization: pip** (Behörighetsinformation) version 1.0.
Genererad från Ineras Tjänstekontraktsbeskrivning (TKB), version 1.0_RC1 (2017-06-28), och domänens WSDL- och XSD-filer (senaste commit på master, 729301865b83).

Tjänstedomänen tillhandahåller beslutsunderlag för åtkomstkontroll. Producenter har rollen som *policy information point*. Tjänstekontraktet GetSeals ger e-tjänster invånarens förseglingar, så att förseglad journalinformation kan filtreras bort innan den visas för invånaren.

Domänen innehåller följande tjänstekontrakt:

| Kontrakt | Version | Beskrivning |
|----------|---------|-------------|
| [GetSeals](7-tjanstekontrakt.html#getseals) | 1.0 | Tjänstekontraktet GetSeals används för att vårdgivare skall kunna försegla invånarens åtkomst till sin egen information. Invånarens information blir då ej tillgänglig för invånaren via självbetjäningstjänster. Används då det finns risk att invånaren befinner sig i vanmaktssituation eller då invånaren ej önskar åtkomst alls till sin journalinformation. Beslut om att försegla journalinformation ligger hos invånaren. Efter taget beslut kan försegling göras av invånaren själv (endast full försegling) eller av vårdpersonal hos vårdgivare som hjälper invånaren att försegla delar av (vårdgivarförsegling eller enhetsförsegling) alternativt all journalinformation (full försegling). |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [3 Tjänstedomänens arkitektur](3-tjanstedomanens-arkitektur.html)
* [4 Tjänstedomänens krav och regler](4-tjanstedomanens-krav-och-regler.html)
* [5 Tjänstedomänens meddelandemodeller](5-tjanstedomanens-meddelandemodeller.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
