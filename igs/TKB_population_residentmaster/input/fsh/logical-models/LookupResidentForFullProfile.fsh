// Elementen genereras ur LookupResidentForFullProfileResponder_1.2.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från TKB population:residentmaster v1.2
// Kontrakt: LookupResidentForFullProfile v1.2
// Genererad: 2026-09-17

Logical: LookupResidentForFullProfile
Id: lookupresidentforfullprofile
Title: "LookupResidentForFullProfile"
Description: """
  Logisk modell för svaret från tjänstekontraktet LookupResidentForFullProfile
  (RIV-TA urn:riv:population:residentmaster:LookupResidentForFullProfileResponder:1).
  Representerar en post (ResidentType, fullständig profil "Full") i svarets lista av
  träffar. Svaret som helhet innehåller 0..* sådana poster, en per efterfrågat och
  matchat personnummer (se avsnitt 7). Fält som inte ingår i den aktuella profilen
  utelämnas normalt inte i denna modell (den täcker hela ResidentType-bruttolistan),
  men kan i ett faktiskt svar sakna värde eftersom endast Full-profilens fält (se
  avsnitt 6.1) faktiskt populeras av producenten.
"""
Characteristics: #can-be-target

* ^version = "1.2"
* resident 0..* Base "ResidentType" "resident"
* resident.Sekretessmarkering 1..1 code "Sekretessmarkering" "Sekretessmarkering Tillåtna värden: J, N."
* resident.SenasteAndringFolkbokforing 0..1 string "SenasteAndringFolkbokforing" "SenasteAndringFolkbokforing"
* resident.SenasteAndringFolkbokforing only DT
* resident.Personpost 1..1 Base "PersonpostTYPE" "Personpost"
* resident.Personpost.PersonId 1..1 string "PersonId" "PersonId"
* resident.Personpost.Kon 0..1 code "Kon" "Kon Tillåtna värden: K, M."
* resident.Personpost.Fodelsetid 0..1 string "Fodelsetid" "Fodelsetid"
* resident.Personpost.Fodelsetid only DT
* resident.Personpost.Avregistrering 0..1 Base "AvregistreringTYPE" "Avregistrering"
* resident.Personpost.Avregistrering.AvregistreringsorsakKod 0..1 code "AvregistreringsorsakKod" "AvregistreringsorsakKod Tillåtna värden: AV, GN, OO."
* resident.Personpost.Avregistrering.Avregistreringsdatum 0..1 string "Avregistreringsdatum" "Avregistreringsdatum"
* resident.Personpost.Avregistrering.AvregistreringsorsakKodKomplett 0..1 code "AvregistreringsorsakKodKomplett" "AvregistreringsorsakKodKomplett Tillåtna värden: AV, UV, GN, AN, AS, GS, OB, TA."
* resident.Personpost.Namn 0..1 Base "NamnTYPE" "Namn"
* resident.Personpost.Namn.Tilltalsnamnsmarkering 0..1 string "Tilltalsnamnsmarkering" "Tilltalsnamnsmarkering"
* resident.Personpost.Namn.Fornamn 0..1 string "Fornamn" "Fornamn"
* resident.Personpost.Namn.Mellannamn 0..1 string "Mellannamn" "Mellannamn"
* resident.Personpost.Namn.Efternamn 0..1 string "Efternamn" "Efternamn"
* resident.Personpost.Namn.Aviseringsnamn 0..1 string "Aviseringsnamn" "Aviseringsnamn"
* resident.Personpost.Folkbokforingsadress 0..1 Base "SvenskAdressTYPE" "Folkbokforingsadress"
* resident.Personpost.Folkbokforingsadress.LanKod 0..1 string "LanKod" "LanKod"
* resident.Personpost.Folkbokforingsadress.KommunKod 0..1 string "KommunKod" "KommunKod"
* resident.Personpost.Folkbokforingsadress.ForsamlingKod 0..1 string "ForsamlingKod" "ForsamlingKod"
* resident.Personpost.Folkbokforingsadress.Fastighetsbeteckning 0..1 string "Fastighetsbeteckning" "Fastighetsbeteckning"
* resident.Personpost.Folkbokforingsadress.CareOf 0..1 string "CareOf" "CareOf"
* resident.Personpost.Folkbokforingsadress.Utdelningsadress1 0..1 string "Utdelningsadress1" "Utdelningsadress1"
* resident.Personpost.Folkbokforingsadress.Utdelningsadress2 0..1 string "Utdelningsadress2" "Utdelningsadress2"
* resident.Personpost.Folkbokforingsadress.PostNr 0..1 string "PostNr" "PostNr"
* resident.Personpost.Folkbokforingsadress.Postort 0..1 string "Postort" "Postort"
* resident.Personpost.Folkbokforingsadress.Folkbokforingsdatum 0..1 string "Folkbokforingsdatum" "Folkbokforingsdatum"
* resident.Personpost.Folkbokforingsadress.SCB_Nyckelkod 0..1 string "SCB_Nyckelkod" "SCB_Nyckelkod"
* resident.Personpost.SarskildPostadress 0..1 Base "SvenskAdressTYPE" "SarskildPostadress"
* resident.Personpost.SarskildPostadress.LanKod 0..1 string "LanKod" "LanKod"
* resident.Personpost.SarskildPostadress.KommunKod 0..1 string "KommunKod" "KommunKod"
* resident.Personpost.SarskildPostadress.ForsamlingKod 0..1 string "ForsamlingKod" "ForsamlingKod"
* resident.Personpost.SarskildPostadress.Fastighetsbeteckning 0..1 string "Fastighetsbeteckning" "Fastighetsbeteckning"
* resident.Personpost.SarskildPostadress.CareOf 0..1 string "CareOf" "CareOf"
* resident.Personpost.SarskildPostadress.Utdelningsadress1 0..1 string "Utdelningsadress1" "Utdelningsadress1"
* resident.Personpost.SarskildPostadress.Utdelningsadress2 0..1 string "Utdelningsadress2" "Utdelningsadress2"
* resident.Personpost.SarskildPostadress.PostNr 0..1 string "PostNr" "PostNr"
* resident.Personpost.SarskildPostadress.Postort 0..1 string "Postort" "Postort"
* resident.Personpost.SarskildPostadress.Folkbokforingsdatum 0..1 string "Folkbokforingsdatum" "Folkbokforingsdatum"
* resident.Personpost.SarskildPostadress.SCB_Nyckelkod 0..1 string "SCB_Nyckelkod" "SCB_Nyckelkod"
* resident.Personpost.HanvisningsPersonNr 0..1 string "HanvisningsPersonNr" "HanvisningsPersonNr"
* resident.Personpost.Utlandsadress 0..1 Base "UtlandsadressTYPE" "Utlandsadress"
* resident.Personpost.Utlandsadress.Utdelningsadress1 0..1 string "Utdelningsadress1" "Utdelningsadress1"
* resident.Personpost.Utlandsadress.Utdelningsadress2 0..1 string "Utdelningsadress2" "Utdelningsadress2"
* resident.Personpost.Utlandsadress.Utdelningsadress3 0..1 string "Utdelningsadress3" "Utdelningsadress3"
* resident.Personpost.Utlandsadress.Land 0..1 string "Land" "Land"
* resident.Personpost.Utlandsadress.Utlandsadressdatum 0..1 string "Utlandsadressdatum" "Utlandsadressdatum"
* resident.Personpost.Utlandsadress.Rostrattsdatum 0..1 string "Rostrattsdatum" "Rostrattsdatum"
* resident.Personpost.Civilstand 0..1 Base "CivilstandTYPE" "Civilstand"
* resident.Personpost.Civilstand.CivilstandKod 0..1 code "CivilstandKod" "CivilstandKod Tillåtna värden: OG, G, A, S, RP, SP, EP."
* resident.Personpost.Civilstand.Civilstandsdatum 0..1 string "Civilstandsdatum" "Civilstandsdatum"
* resident.Personpost.Fodelse 0..1 Base "FodelseTYPE" "Fodelse"
* resident.Personpost.Fodelse.HemortSverige 0..1 Base "HemortSverigeTYPE" "HemortSverige"
* resident.Personpost.Fodelse.HemortSverige.FodelselanKod 0..1 string "FodelselanKod" "FodelselanKod"
* resident.Personpost.Fodelse.HemortSverige.Fodelseforsamling 0..1 string "Fodelseforsamling" "Fodelseforsamling"
* resident.Personpost.Fodelse.OrtUtlandet 0..1 Base "OrtUtlandetTYPE" "OrtUtlandet"
* resident.Personpost.Fodelse.OrtUtlandet.FodelseortUtland 0..1 string "FodelseortUtland" "FodelseortUtland"
* resident.Personpost.Fodelse.OrtUtlandet.Styrkt 0..1 code "Styrkt" "Styrkt Tillåtna värden: J, N."
* resident.Personpost.Fodelse.OrtUtlandet.Fodelseland 0..1 string "Fodelseland" "Fodelseland"
* resident.Personpost.Invandring 0..1 Base "InvandringTYPE" "Invandring"
* resident.Personpost.Invandring.Invandringsdatum 0..1 string "Invandringsdatum" "Invandringsdatum"
* resident.Personpost.Relationer 1..1 Base "RelationerTYPE" "Relationer"
* resident.Personpost.Relationer.Relation 0..* Base "(anonym typ)" "Relation"
* resident.Personpost.Relationer.Relation.RelationId 1..1 Base "RelationPersonIdTYPE" "RelationId"
* resident.Personpost.Relationer.Relation.RelationId.PersonNr 0..1 string "PersonNr" "PersonNr"
* resident.Personpost.Relationer.Relation.RelationId.FodelsetidNr 0..1 string "FodelsetidNr" "FodelsetidNr"
* resident.Personpost.Relationer.Relation.Relationstyp 1..1 code "Relationstyp" "Relationstyp Tillåtna värden: B, MO, FA, F, V, VF, M, P."
* resident.Personpost.Relationer.Relation.RelationFromdatum 0..1 string "RelationFromdatum" "RelationFromdatum"
* resident.Personpost.Relationer.Relation.RelationTomdatum 0..1 string "RelationTomdatum" "RelationTomdatum"
* resident.Personpost.Relationer.Relation.Namn 0..1 Base "NamnTYPE" "Namn"
* resident.Personpost.Relationer.Relation.Namn.Tilltalsnamnsmarkering 0..1 string "Tilltalsnamnsmarkering" "Tilltalsnamnsmarkering"
* resident.Personpost.Relationer.Relation.Namn.Fornamn 0..1 string "Fornamn" "Fornamn"
* resident.Personpost.Relationer.Relation.Namn.Mellannamn 0..1 string "Mellannamn" "Mellannamn"
* resident.Personpost.Relationer.Relation.Namn.Efternamn 0..1 string "Efternamn" "Efternamn"
* resident.Personpost.Relationer.Relation.Namn.Aviseringsnamn 0..1 string "Aviseringsnamn" "Aviseringsnamn"
* resident.Personpost.Relationer.Relation.Avregistrering 0..1 Base "AvregistreringTYPE" "Avregistrering"
* resident.Personpost.Relationer.Relation.Avregistrering.AvregistreringsorsakKod 0..1 code "AvregistreringsorsakKod" "AvregistreringsorsakKod Tillåtna värden: AV, GN, OO."
* resident.Personpost.Relationer.Relation.Avregistrering.Avregistreringsdatum 0..1 string "Avregistreringsdatum" "Avregistreringsdatum"
* resident.Personpost.Relationer.Relation.Avregistrering.AvregistreringsorsakKodKomplett 0..1 code "AvregistreringsorsakKodKomplett" "AvregistreringsorsakKodKomplett Tillåtna värden: AV, UV, GN, AN, AS, GS, OB, TA."
* resident.Personpost.Relationer.Relation.Status 0..1 code "Status" "Status Tillåtna värden: NY, PB, RD, AS, AV, IV, AN."
* resident.Personpost.Distriktskod 0..1 integer "Distriktskod" "Distriktskod"

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* resident.Personpost.Relationer.Relation.RelationId obeys lookupresidentforfullprofile-relation-id-xor

Invariant: lookupresidentforfullprofile-relation-id-xor
Description: "Exakt ett av relationPersonNr och relationFodelsetidNr ska anges för en relation (enligt kommentar i källschemat: 'ett av värdena måste vara satta, men inte båda')."
Expression: "PersonNr.exists() xor FodelsetidNr.exists()"
Severity: #error
