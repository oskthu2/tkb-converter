// Elementen genereras ur SokDosmottagareResponder_1.0.xsd av scripts/xsd_logical_models.py — redigera inte för hand.
// Grunddatatyper refereras till RIV-TA:s gemensamma datatyper (inera.rivta.datatypes).

// Genererad från XSD för se.apotekensservice.expo v2.0 (ingen TKB finns i källan; scripts/xsd_to_ig.py)
// Kontrakt: SokDosmottagare v1.0
// Genererad: 2026-09-26

Logical: SokDosmottagare
Id: sokdosmottagare
Title: "SokDosmottagare — Response"
Description: """
  Logisk modell för svaret i SokDosmottagare
  (urn:riv:se.apotekensservice:expo:SokDosmottagareResponder:1, SokDosmottagareResponseType).
"""
Characteristics: #can-be-target

* ^version = "1.0"
* resultat 0..* Base "SokDosmottagareResultatResponse" "Lista med apotek och kopplade dosmottagare som utdata"
* resultat.apotek 0..1 Base "HamtaApoteksInfoResponse" "Apoteksinformation för dosproducenten."
* resultat.apotek.apoteksinformationLista 1..* Base "ApoteksinformationResponse" "Lista innehållande ett eller flera Apoteksinformation."
* resultat.apotek.apoteksinformationLista.aktorsnamn 0..1 string "Officiellt namn för aktör" "Officiellt namn för aktör"
* resultat.apotek.apoteksinformationLista.aktorsorgnr 0..1 string "Aktörens organisationsnummer." "Aktörens organisationsnummer."
* resultat.apotek.apoteksinformationLista.allmantelefon 0..1 string "Telefonnummer för allmänheten" "Telefonnummer för allmänheten"
* resultat.apotek.apoteksinformationLista.besoksadress 0..1 string "Expeditionsställets besöksadress" "Expeditionsställets besöksadress"
* resultat.apotek.apoteksinformationLista.eReceptDjur 1..1 boolean "Markering gällande om apoteket kan expediera elektroniska djurrecept." "Markering gällande om apoteket kan expediera elektroniska djurrecept."
* resultat.apotek.apoteksinformationLista.fax 0..1 string "Expeditionsställets faxnummer" "Expeditionsställets faxnummer"
* resultat.apotek.apoteksinformationLista.glnKod 1..1 string "Expeditionsställets GLN-kod" "Expeditionsställets GLN-kod"
* resultat.apotek.apoteksinformationLista.huvudtypkod 0..1 string "Kod som beskriver huvudverksamheten för expeditionsstället" "Kod som beskriver huvudverksamheten för expeditionsstället"
* resultat.apotek.apoteksinformationLista.namn 0..1 string "Expeditionsställets officiella namn" "Expeditionsställets officiella namn"
* resultat.apotek.apoteksinformationLista.ort 0..1 string "Expeditionsställets besöksort" "Expeditionsställets besöksort"
* resultat.apotek.apoteksinformationLista.slutdatum 0..1 dateTime "Datum för stängning av verksamhet" "Datum för stängning av verksamhet"
* resultat.apotek.apoteksinformationLista.startdatum 1..1 dateTime "Datum för start av verksamhet" "Datum för start av verksamhet"
* resultat.dosmottagare 0..* Base "DosmottagareResponse" "dosmottagare"
* resultat.dosmottagare.adress 0..1 string "Adress till dosmottagare. Obligatorisk om typ = 'D'." "Adress till dosmottagare. Obligatorisk om typ = 'D'."
* resultat.dosmottagare.apoteksIdDosmottagare 0..1 string "Apoteks-id för dosmottagare om dosmottagare är av typen apotek." "Apoteks-id för dosmottagare om dosmottagare är av typen apotek."
* resultat.dosmottagare.arbetsplatskod 0..1 string "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning." "Arbetsplatskod till dosmottagare. Är aktuellt om dosmottagare t ex är en distriktsläkarmottagning."
* resultat.dosmottagare.avdelning 0..1 string "Avdelning inom dosmottagare." "Avdelning inom dosmottagare."
* resultat.dosmottagare.dosmottagarId 1..1 string "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket." "Dosmottagarens identitet, dosproducentens identitet för dosmottagaren t ex kundnummer, GLN-kod. Unikt inom dosapoteket."
* resultat.dosmottagare.kommunkod 0..1 string "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB." "Kommunkod till vilken dosmottagarens tillhör. Kod enligt SCB."
* resultat.dosmottagare.lanskod 0..1 string "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB." "Länskod till vilken dosmottagaren tillhör. Kod enligt SCB."
* resultat.dosmottagare.mottagarnamn 1..1 string "Namn på dosmottagare." "Namn på dosmottagare."
* resultat.dosmottagare.postnummer 0..1 string "Postnummer till dosmottagare." "Postnummer till dosmottagare."
* resultat.dosmottagare.postort 0..1 string "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'." "Arbetsplatsort till dosmottagare. Obligatorisk om typ = 'D'."
* resultat.dosmottagare.typ 1..1 string "typ" "Typ av dosmottagare, kan antingen vara Apotek (där dospatienterna kan hämta sina dosleveranser) eller direktleverans, t ex vårdboende, distriktssköterska. Giltiga värden: D (direktleverans) eller A (apotek)."

// Fältbeskrivningar från TKB:ns fälttabell (scripts/sync_field_descriptions.py)
* insert SokDosmottagareFieldDescriptions

// Invarianter för TKB:ns regler (tkb-fsh-model, Fältregler → FHIRPath-invarianter)
* resultat.dosmottagare obeys sokdosmottagare-dosmottagare-adress-when-d

Invariant: sokdosmottagare-dosmottagare-adress-when-d
Description: "adress och postort ska anges när typ = 'D' (direktleverans)."
Expression: "typ = 'D' implies (adress.exists() and postort.exists())"
Severity: #error
