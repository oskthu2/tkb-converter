# 3 Tjänstedomänens arkitektur

// SAKNAS I KÄLLDOKUMENT — TKB:n för `population.residentmaster` saknar ett separat
kapitel om tjänstedomänens arkitektur. Domänen är strukturellt enkel: den innehåller
ett enda tjänstekontrakt-mönster, `LookupResidentFor<Profile>`, där `<Profile>` är
namnet på en publicerad delmängd (profil) av fält i den gemensamma datatypen
`ResidentType`. För närvarande finns endast en publicerad profil,
**FullProfile** (kontraktet `LookupResidentForFullProfile`), verifierad mot den
faktiska WSDL-/XSD-filen i källpaketet.

Arkitekturellt fungerar tjänsten som en uppslagstjänst (fråga-svar) mot en
producents lokala personuppgiftsregister, vilket i sin tur normalt hämtar sitt
underlag från Skatteverkets folkbokföringsregister via periodiska aviseringar
(Navet/SPAR) eller online-slagning. Se avsnitt 1 (Inledning) för bakgrund och
avsnitt 5 (Meddelandemodeller) för den fullständiga informationsmodellen
(`ResidentType`).
