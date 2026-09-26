# interoperability: headers — Gemensamma huvudelement

## Översikt

FHIR Implementation Guide för RIV-TA-domänen **interoperability: headers** version 1.1.

RIV-TA namnrymd: `urn:riv:interoperability:headers:1`

Domänen är ingen tjänstedomän i vanlig mening. Den innehåller inga tjänstekontrakt, utan ett delat schema med huvudelement (`Actor` och `ProcessingStatus`) som andra tjänstedomäner kan använda i sina anrop och svar. `ProcessingStatus` används av aggregerande tjänster för att tala om för konsumenten hur aktuella de returnerade uppgifterna är per källsystem.

**Källa:** Domänen saknar publicerad Tjänstekontraktsbeskrivning (TKB). IG:n är därför byggd direkt från schemat `interoperability_headers_1.1.xsd` (Bitbucket `rivta-domains/riv.interoperability.headers`, tagg `interoperability_headers_1.1`) och dess inbyggda dokumentation. Avsnitt som i andra IG:er kommer från TKB-dokumentet saknas här.

## Gemensamma informationskomponenter

| Komponent | XSD-typ | Beskrivning |
|-----------|---------|-------------|
| [Actor](6-gemensamma-informationskomponenter.html#actor) | `ActorType` | Aktören som anropet görs för räkning av (invånare eller ombud) |
| [ProcessingStatus](6-gemensamma-informationskomponenter.html#processingstatus) | `ProcessingStatusType` | Status per logisk adress från en aggregerande tjänst |

## Innehåll

* [1 Inledning](1-inledning.html)
* [2 Versionsinformation](2-versionsinformation.html)
* [6 Gemensamma informationskomponenter](6-gemensamma-informationskomponenter.html)
* [7 Tjänstekontrakt](7-tjanstekontrakt.html)
* [Artefakter](artifacts.html)
