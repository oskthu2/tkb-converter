// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: SaveFormPage v2.1
// Genererad: 2026-05-19

Logical: SaveFormPage
Id: saveformpage
Title: "SaveFormPage"
Description: """
  Logisk modell för tjänstekontraktet SaveFormPage
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:SaveFormPage:2).
  Representerar responsens informationsstruktur — returnerar nästa sida med frågor, eller felindikation.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formulär (FormType)" "Formuläret med nästa sida eller felindikation. Null indikerar att formuläret är färdigifyllt."
  * formID 1..1 Identifier "Formulär-id" "Formulärets unika ID (GUID)."
  * formStatus 1..1 CodeableConcept "Formulärstatus" "Formulärets status."
  * formStatus from FormStatusVS (required)
  * currentPage 0..1 BackboneElement "Aktuell sida (PageType)" "Nästa sida att presentera, eller den aktuella sidan vid fel."
    * pageNumber 1..1 integer "Sidnummer" "Sidans nummer."
    * lastPage 1..1 boolean "Sista sidan" "Indikerar om detta är den sista sidan."
* comment 0..1 string "Kommentar" "Attribut för felsignalering. Skall kunna visas för slutanvändaren."
* resultCode 1..1 CodeableConcept "Resultatkod" "Status på operationen."
* resultCode from ResultCodeVS (required)

Logical: SaveFormPageRequest
Id: saveformpage-request
Title: "SaveFormPage — Request"
Description: "Logisk modell för requestparametrar i SaveFormPage."
Characteristics: #can-be-target

* formID 1..1 Identifier "Formulär-id" "Formulärets unika id."
* pageAnswers 1..1 BackboneElement "Svar på sida (PageAnswerType)" "Invånarens besvarade frågor för aktuell sida."
* subjectOfCare 0..1 Identifier "Personnummer" "Starkt autentiserad användares personnummer."
* temporarySave 0..1 boolean "Temporärspara" "True = temporär sparning (utan validering), False/utelämnad = normal hantering."
* actor 0..1 BackboneElement "Aktör" "Aktören kan vara invånaren/patienten själv, vårdnadshavare eller vårdpersonal."
  * actorType 1..1 string "Aktörstyp" "Typ av aktör."
  * actorId 0..1 Identifier "Aktörs-id" "Identifierare för aktören."
