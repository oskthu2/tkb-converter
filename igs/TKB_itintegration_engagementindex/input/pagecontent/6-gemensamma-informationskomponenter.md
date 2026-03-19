# 6 Gemensamma informationskomponenter

## Domänspecifika attribut

Ett antal av attributen i tjänstekontrakten för engagemangsindex definieras endast tekniskt avseende namn, typ och multiplicitet. Användningen av dessa attribut i tjänstekontrakten definieras av den tjänstedomän som informationen avser. Krav och regler beskrivs i respektive tjänstedomäns tjänstekontraktsbeskrivning.

Detta innebär att ett attribut som tekniskt sett är valfritt (multiplicitet 0..1 eller 0..*) kan vara obligatoriskt i en viss tjänstedomän. Kravet kan uttryckas via skrivningar i tjänstekontraktsbeskrivning och ibland kompletterat med schematronfiler.

Notera också att vissa attribut kan vara tekniskt obligatoriska men inte användas inom domänen. I dessa fall sätts attributet till NA (för Not Applicable) för att indikera detta men ändå tekniskt uppfylla tjänstekontraktet.

## Update

**Version:** 1.0

### Fältregler

Nedanstående tabell beskriver varje element i begäran och svar. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i stycket Regler.

**Begäran**

(Se avsnitt [7.2 Update](7-tjanstekontrakt.html#72-update) för detaljerade fältregler.)

**Svar**

(Se avsnitt [7.2 Update](7-tjanstekontrakt.html#72-update) för detaljerade fältregler.)

## FindContent

**Begäran**

(Se avsnitt [7.1 FindContent](7-tjanstekontrakt.html#71-findcontent) för detaljerade fältregler.)

**Svar**

(Se avsnitt [7.1 FindContent](7-tjanstekontrakt.html#71-findcontent) för detaljerade fältregler.)

## ProcessNotification

**Begäran**

(Se avsnitt [7.3 ProcessNotification](7-tjanstekontrakt.html#73-processnotification) för detaljerade fältregler.)

**Svar**

(Se avsnitt [7.3 ProcessNotification](7-tjanstekontrakt.html#73-processnotification) för detaljerade fältregler.)
