// Elementen genereras ur HamtaApoteksinfoEgetResponder_5.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: HamtaApoteksinfoEget v5.0
// Genererad: 2026-09-26

Logical: HamtaApoteksinfoEget
Id: hamtaapoteksinfoeget
Title: "HamtaApoteksinfoEget — Response"
Description: """
  Logisk modell för svaret i HamtaApoteksinfoEget
  (urn:riv:se.apotekensservice:expo:HamtaApoteksinfoEgetResponder:5, HamtaApoteksinfoEgetResponseType).
"""
Characteristics: #can-be-target

* ^version = "5.0"
* expeditionsstalleLista 1..* Base "ExpeditionsstalleEgetResponse" "Lista innehållande en eller flera expeditionsstallen."
* expeditionsstalleLista.aktorsnamn 1..1 string "Aktörens namn." "Aktörens namn."
* expeditionsstalleLista.allmTelefon 1..1 string "Expeditionsställets allmänna telefonnummer." "Expeditionsställets allmänna telefonnummer."
* expeditionsstalleLista.apoteksId 1..1 string "GLN-kod för unik identifiering av apotek." "GLN-kod för unik identifiering av apotek."
* expeditionsstalleLista.besoksAdress 1..1 string "Expeditionsställets besöksadress." "Expeditionsställets besöksadress."
* expeditionsstalleLista.besoksort 1..1 string "Expeditionsställets ort (besöksort)." "Expeditionsställets ort (besöksort)."
* expeditionsstalleLista.dosmottagareLista 0..* Base "DosmottagareResponse" "Information om dosmottagare."
* expeditionsstalleLista.dosmottagareLista.adress 0..1 string "Adress till dosmottagare. Obligatorisk om typ = 'D'." "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* expeditionsstalleLista.dosmottagareLista.apoteksIdDosmottagare 0..1 string "Apoteks-id för dosmottagare om dosmottagare är av typen apotek." "Apoteks-id för dosmottagare om dosmottagare är av typen apotek."
* expeditionsstalleLista.dosmottagareLista.arbetsplatskod 0..1 string "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning." "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* expeditionsstalleLista.dosmottagareLista.avdelning 0..1 string "Avdelning inom dosmottagare." "Avdelning inom dosmottagare."
* expeditionsstalleLista.dosmottagareLista.dosmottagarId 1..1 string "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket." "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* expeditionsstalleLista.dosmottagareLista.kommunkod 0..1 string "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB." "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* expeditionsstalleLista.dosmottagareLista.lanskod 0..1 string "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB." "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* expeditionsstalleLista.dosmottagareLista.mottagarnamn 1..1 string "Namn på dosmottagare." "Namn på dosmottagare."
* expeditionsstalleLista.dosmottagareLista.postnummer 0..1 string "Postnummer till dosmottagare." "Postnummer till dosmottagare."
* expeditionsstalleLista.dosmottagareLista.postort 0..1 string "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'." "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
* expeditionsstalleLista.dosmottagareLista.typ 1..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek)."
* expeditionsstalleLista.eRecept 1..1 boolean "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer." "Flagga som anger om expeditionsstället är ett apotek som kan hantera e-recept för besökande privat personer."
* expeditionsstalleLista.eReceptDjur 1..1 boolean "Markering gällande om apoteket kan expediera elektroniska djurrecept." "Markering gällande om apoteket kan expediera elektroniska djurrecept."
* expeditionsstalleLista.faxnummer 0..1 string "Expeditionsställets faxnummer." "Expeditionsställets faxnummer."
* expeditionsstalleLista.huvudOrgTypKod 0..1 string "huvudOrgTypKod" "Möjliga värden: ADM, AP, DIAP, DJUR, DX, OAP, SA, TVAP ADM En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter. AP Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet. DIAP Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner DJUR Ett apotek som har utökat djursortiment. DX Dosapotek - enhet för produktion av dosdispenserade läkemedel. OAP Övriga apotek - gammal definition av apotek. Bör ej användas. SA Sjukhusapotek - apotek som ger service till slutenvårdsenheter TVAP Enhet som på beställning tillverkar specifika individanpassade läkemedel."
* expeditionsstalleLista.kommun 1..1 integer "Expeditionsställets kommuntillhörighet, kod enligt SCB." "Expeditionsställets kommuntillhörighet, kod enligt SCB."
* expeditionsstalleLista.kortNamn 0..1 string "Kortversion på apoteksnamn. Behövs i bla i vårdsystem." "Kortversion på apoteksnamn. Behövs i bla i vårdsystem."
* expeditionsstalleLista.lan 1..1 integer "Expeditionsställets länstillhörighet, kod enligt SCB." "Expeditionsställets länstillhörighet, kod enligt SCB."
* expeditionsstalleLista.namn 1..1 string "Expeditionsställets officiella namn." "Expeditionsställets officiella namn."
* expeditionsstalleLista.oppetHallandeLista 0..* Base "OppethallandeResponse" "När expeditionsstället har öppet."
* expeditionsstalleLista.oppetHallandeLista.dagBenamning 0..1 string "Exempelvis \"Nyårsafton\"." "Exempelvis \"Nyårsafton\"."
* expeditionsstalleLista.oppetHallandeLista.lunchFrom 0..1 string "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-24) m=Minut" "Om lunchstängt, \"stänger för lunch\". Format: HHmm H=Timme (0-24) m=Minut"
* expeditionsstalleLista.oppetHallandeLista.lunchTom 0..1 string "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-24) m=Minut" "Om lunchstängt, \"Öppnar igen efter lunch kl\". Format: HHmm H=Timme (0-24) m=Minut"
* expeditionsstalleLista.oppetHallandeLista.oppnar 0..1 string "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut" "Öppningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut"
* expeditionsstalleLista.oppetHallandeLista.slutDatum 0..1 dateTime "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum." "Sista dagen i en period vid typ N, P eller S. Obligatorisk vid typ P, S eller D. Om typ D är slutdatum = startdatum."
* expeditionsstalleLista.oppetHallandeLista.stanger 0..1 string "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut" "Stängningstid vardagar/vekodagnr. Format: HHmm H=Timme (0-24) m=Minut"
* expeditionsstalleLista.oppetHallandeLista.startDatum 1..1 dateTime "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24." "Första dagen i en period vid typ N, P eller S. Vid typ D anges datum för aktuell dag exv 2010-12-24."
* expeditionsstalleLista.oppetHallandeLista.tfStangtOrsak 0..1 string "Orsak till tillfällig stängning." "Orsak till tillfällig stängning."
* expeditionsstalleLista.oppetHallandeLista.typ 1..1 string "typ" "Typ av öppethållande. N = Normalt P = avvikande under angiven period D = avvikande under angiven dag S = tillfälligt stängt under angiven period"
* expeditionsstalleLista.oppetHallandeLista.veckodagnr 0..1 string "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar." "Ett nummer för veckodagen 1-7 för Måndag till Söndag, V för vardagar."
* expeditionsstalleLista.orgNr 1..1 string "Aktörens organisationsnummer" "Aktörens organisationsnummer"
* expeditionsstalleLista.orgTypADM 1..1 boolean "orgTypADM" "Kod ADM som beskriver typ av expeditionsställe. En organisatiorisk enhet inom ett företag som har rent administrativa uppgifter."
* expeditionsstalleLista.orgTypDIST 1..1 boolean "orgTypDIST" "Kod DIST som beskriver typ av expeditionsställe. Distansapotek - Större apoteksenhet med ansvar att kunna distribuera apoteksvaror direkt till avtalskunder, apoteksombud eller privatpersoner"
* expeditionsstalleLista.orgTypDJAP 1..1 boolean "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment." "Kod DJAP som beskriver typ av expeditionsställe. Ett apotek som har utökat djursortiment."
* expeditionsstalleLista.orgTypDOS 1..1 boolean "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel." "Kod DOS som beskriver typ av expeditionsställe. Dosapotek - enhet för produktion av dosdispenserade läkemedel."
* expeditionsstalleLista.orgTypEA 1..1 boolean "orgTypEA" "Kod EA som beskriver typ av expeditionsställe. Apotek för allmänheten - enhet för detaljhandel med läkemedel med farmaceutisk bemanning under öppethållandet."
* expeditionsstalleLista.orgTypEH 1..1 boolean "orgTypEH" "Kod EH som beskriver typ av expeditionsställe. En enhet som som kan lämna ut e-handel, dit man kan skicka e-handelspacket."
* expeditionsstalleLista.orgTypGSL 1..1 boolean "orgTypGSL" "Kod GSL som beskriver typ av expeditionsställe. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt. \"General Sales list\" - även kallad för \"80-listan\", enbart varor som ej är receptbelagda och som ingår i 80-sortimentet. Alla expeditionställen som säljer sortimentet på 80-listan (t ex shopar) ska ha flaggan satt."
* expeditionsstalleLista.orgTypSA 1..1 boolean "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter." "Kod SA som beskriver typ av expeditionsställe. Sjukhusapotek - apotek som ger service till slutenvårdsenheter."
* expeditionsstalleLista.orgTypTILV 1..1 boolean "orgTypTILV" "Kod TILV som beskriver typ av expeditionsställe. Enhet som på beställning tillverkar individanpassade specifika läkemedel."
* expeditionsstalleLista.postAdress 1..1 string "Expeditionsställets postAdress." "Expeditionsställets postAdress."
* expeditionsstalleLista.postNr 1..1 string "Expeditionsställets postNr." "Expeditionsställets postNr."
* expeditionsstalleLista.postort 1..1 string "Expeditionsställets postort." "Expeditionsställets postort."
* expeditionsstalleLista.recepturtelefon 0..1 string "Expeditionsställets receptur telefonnummer." "Expeditionsställets receptur telefonnummer."
* expeditionsstalleLista.slutDatum 0..1 dateTime "Datum för avslut av verksamhet." "Datum för avslut av verksamhet."
* expeditionsstalleLista.startDatum 1..1 dateTime "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket." "Datum för start av verksamhet. Det datum som allmänheten kan använda Apoteket."
* expeditionsstalleLista.statusDate 0..1 dateTime "Expeditionsställets tillståndsstatus ändringsdatum." "Expeditionsställets tillståndsstatus ändringsdatum."
* expeditionsstalleLista.tidigareGlnKod 0..1 string "Expeditionsställets tidigare ägares GLN." "Expeditionsställets tidigare ägares GLN."
* expeditionsstalleLista.tillstandsstatus 0..1 string "Expeditionsställets tillståndsstatus." "Expeditionsställets tillståndsstatus."
* expeditionsstalleLista.webbadress 0..1 string "webbadress" "Webbadress till apotekets webbtjänster. Apotekens Service använder adressen för att skicka notifieringsmeddelanden. Används endast av dosproducenter."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert HamtaApoteksinfoEgetFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* expeditionsstalleLista.dosmottagareLista obeys hamtaapoteksinfoeget-dosmottagare-adress-when-d

Invariant: hamtaapoteksinfoeget-dosmottagare-adress-when-d
Description: "adress och postort ska anges när typ = 'D' (direktleverans)."
Expression: "typ = 'D' implies (adress.exists() and postort.exists())"
Severity: #error
