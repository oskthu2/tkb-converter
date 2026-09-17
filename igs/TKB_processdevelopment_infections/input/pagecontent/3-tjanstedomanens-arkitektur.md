## Tjänstedomänens arkitektur

// SAKNAS I KÄLLDOKUMENT — kontrollera manuellt

Källdokumentet innehåller ingen separat sektion om tjänstedomänens arkitektur. Domänens syfte framgår av avsnitt 1 (Inledning): tjänsterna används för att registrera och radera information om infektioner, antibiotikaanvändning, mikrobiologiska laboratoriesvar, åtgärder, tillstånd samt vårdtillfällen i det nationella Infektionsverktyget, med data från anslutna vårdgivares vårddatakällor.

Ett särdrag för denna domän (se avsnitt 4, "Mallar för transaktionsfiler") är att tjänstekontrakten ursprungligen utformades enligt openEHR med Nationella Arketyper, men att detta senare övergavs till förmån för fördefinierade transaktionsmallar med statisk data och variabla fält (märkta med prefixet "$$") — ett mönster unikt för just denna tjänstedomän jämfört med Ineras övriga tjänstedomäner.
