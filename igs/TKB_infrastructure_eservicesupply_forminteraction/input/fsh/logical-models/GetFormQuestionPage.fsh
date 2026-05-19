// Genererad från TKB infrastructure:eservicesupply:forminteraction v2.1
// Kontrakt: GetFormQuestionPage v2.0
// Genererad: 2026-05-19

Logical: GetFormQuestionPage
Id: getformquestionpage
Title: "GetFormQuestionPage"
Description: """
  Logisk modell för tjänstekontraktet GetFormQuestionPage
  (RIV-TA urn:riv:infrastructure:eservicesupply:forminteraction:GetFormQuestionPage:2).
  Representerar responsens informationsstruktur — returnerar en specifik sida i ett formulär vid navigering.
"""
Characteristics: #can-be-target

* form 0..1 BackboneElement "Formulär (FormType)" "Formuläret med den begärda sidan."
  * formID 1..1 Identifier "Formulär-id" "Formulärets unika ID (GUID)."
  * formStatus 1..1 CodeableConcept "Formulärstatus" "Formulärets status."
  * formStatus from FormStatusVS (required)
  * currentPage 0..1 BackboneElement "Begärd sida (PageType)" "Den begärda sidan i formuläret."
    * pageNumber 1..1 integer "Sidnummer" "Sidans nummer i formuläret."
    * lastPage 1..1 boolean "Sista sidan" "Indikerar om detta är den sista sidan."

Logical: GetFormQuestionPageRequest
Id: getformquestionpage-request
Title: "GetFormQuestionPage — Request"
Description: "Logisk modell för requestparametrar i GetFormQuestionPage."
Characteristics: #can-be-target

* formID 1..1 Identifier "Formulär-id" "Ett unikt id (GUID) för ett formulär."
* pageNumber 1..1 integer "Sidnummer" "Nummer på sidan som navigering utgår ifrån. Ange 0 för att navigera till första/sista sidan."
* direction 1..1 CodeableConcept "Riktning" "Kodverk: FORWARD = framåt, BACK = bakåt."
* direction from QuestionNavigationDirectionVS (required)
* subjectOfCare 0..1 Identifier "Personnummer" "Invånarens personnummer."
