// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetFunctionalStatus v2.0
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08


Invariant: getfunctionalstatus-padl-only-pad
Description: "padl får enbart anges samtidigt som assessmentCategory = pad-pad (TKB 7.4.3)."
Expression: "padl.exists() implies assessmentCategory = 'pad-pad'"
Severity: #error

Invariant: getfunctionalstatus-disability-only-fun
Description: "disability får endast anges om assessmentCategory = fun-fun (TKB 7.4.3)."
Expression: "disability.exists() implies assessmentCategory = 'fun-fun'"
Severity: #error

Invariant: getfunctionalstatus-comment-only-pad
Description: "comment får endast användas om assessmentCategory = pad-pad (TKB 7.4.3)."
Expression: "comment.exists() implies assessmentCategory = 'pad-pad'"
Severity: #error

Logical: GetFunctionalStatus
Id: getfunctionalstatus
Title: "GetFunctionalStatus"
Description: "Logisk modell för svaret i tjänstekontraktet GetFunctionalStatus version 2.0 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetFunctionalStatusResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: funktionsstatusbedömningar för en patient samt resultat."
Characteristics: #can-be-target

* ^version = "2.0"
* functionalStatusAssessment 0..* BackboneElement "De funktionsstatusbedömningar som matchar begäran" "De funktionsstatusbedömningar som matchar begäran. TKB-typ: FunctionalStatusAssessmentTime. Kardinalitet: 0..*."
  * functionalStatusAssessmentHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet" "Innehåller basinformation om dokumentet. TKB-typ: PatientSummaryHeaderType. Kardinalitet: 1..1."
    * documentId 1..1 string "Funktionsbedömningens identitet som är unik inom källsystemet" "Funktionsbedömningens identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. TKB-typ: string. Kardinalitet: 1..1."
    * sourceSystemHSAId 1..1 Identifier "HSA-id för det system som dokumentet är skapat i" "HSA-id för det system som dokumentet är skapat i. TKB-typ: HSAIdType. Kardinalitet: 1..1."
    * documentTitle 0..0 string "documentTitle" "Används ej. TKB-typ: string. Kardinalitet: 0..0."
    * documentTime 1..1 dateTime "Bedömningstidpunkt/händelsetidpunkt" "Bedömningstidpunkt/händelsetidpunkt. TKB-typ: TimeStampType. Kardinalitet: 1..1."
    * patientId 1..1 Identifier "Identifierare för patient" "Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]."
    * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas …" "Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare. TKB-typ: HealthcareProfessionalType. Kardinalitet: 1..1."
      * authorTime 1..1 dateTime "Tidpunkt då informationen registrerades" "Tidpunkt då informationen registrerades. TKB-typ: TimeStampType. Kardinalitet: 1..1."
      * healthcareProfessionalHSAId 0..1 Identifier "Författarens HSA-id" "Författarens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * healthcareProfessionalName 0..1 string "Namn på författaren" "Namn på författaren. Om tillgängligt ska detta anges. TKB-typ: string. Kardinalitet: 0..1."
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning" "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]. / I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället. / Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som författaren är uppdragstagare på" "Den organisation som författaren är uppdragstagare på. TKB-typ: OrgUnitType. Kardinalitet: 0..1."
        * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet" "HSA-id för organisationsenhet. TKB-typ: HSAIdType. Kardinalitet: 1..1."
        * orgUnitName 1..1 string "Namnet på den organisation som författaren är uppdragstagare på" "Namnet på den organisation som författaren är uppdragstagare på. TKB-typ: string. Kardinalitet: 1..1."
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet" "Telefon till organisationsenhet. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitEmail 0..1 string "Epost till organisationsenhet" "Epost till organisationsenhet. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitAddress 0..1 string "Postadress för den organisation som författaren är uppdragstagare på" "Postadress för den organisation som författaren är uppdragstagare på. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering" "Text som anger namnet på plats eller ort för organisationens fysiska placering. TKB-typ: string. Kardinalitet: 0..1."
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för vårdenhet" "HSA-id för vårdenhet. (Regel:1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" "Information om vem som signerat informationen i dokumentet. TKB-typ: LegalAuthenticatorType. Kardinalitet: 0..1."
      * signatureTime 1..1 dateTime "Signaturtidpunkt" "Signaturtidpunkt. / Tid vid vilken funktionsstatusbedömningen signeras. TKB-typ: TimeStampType. Kardinalitet: 1..1."
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet" "HSA-id för person som signerat dokumentet. TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * legalAuthenticatorName 0..1 string "Namnen i klartext för signerande person" "Namnen i klartext för signerande person. TKB-typ: string. Kardinalitet: 0..1."
      * legalAuthenticatorRoleCode 0..1 CodeableConcept "Signerande persons befattning" "Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. OBS: elementet finns inte i LegalAuthenticatorType i XSD:n (clinicalprocess_healthcond_description_2.1.xsd); det kan bara skickas via xs:any."
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient" "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. TKB-typ: boolean. Kardinalitet: 1..1."
    * careContactId 0..1 string "Vårdkontakts-id" "Vårdkontakts-id. / Id för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts. TKB-typ: string. Kardinalitet: 0..1."
    * nullified 0..0 boolean "nullified" "Används ej. TKB-typ: boolean. Kardinalitet: 0..0."
    * nullifiedReason 0..0 string "nullifiedReason" "Används ej. TKB-typ: string. Kardinalitet: 0..0."
  * functionalStatusAssessmentBody 1..1 BackboneElement "functionalStatusAssessmentBody" "functionalStatusAssessmentBody. TKB-typ: FunctionalStatusAssessmentBodyType. Kardinalitet: 1..1."
    * obeys getfunctionalstatus-padl-only-pad
    * obeys getfunctionalstatus-disability-only-fun
    * obeys getfunctionalstatus-comment-only-pad
    * assessmentCategory 1..1 code "Bedömningskategori" "Bedömningskategori. / Beskriver vilken kategori av bedömning som är gjord. Tillåtna värden är \"pad-pad\" (för PADL-bedömning) och \"fun-fun\" (för funktionsnedsättningsbedömningar). / Värdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI. TKB-typ: AssessmentCategoryEnum. Kardinalitet: 1..1."
    * assessmentCategory from AssessmentCategoryVS (required)
    * comment 0..1 string "Kommentar" "Kommentar. / Text som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad. TKB-typ: string. Kardinalitet: 0..1."
    * padl 0..* BackboneElement "Beskriver gjorda PADL-bedömningar" "Beskriver gjorda PADL-bedömningar. / Får enbart anges samtidigt som assessmentCategory = pad-pad. TKB-typ: PADLType. Kardinalitet: 0..*."
      * typeOfAssessment 1..1 CodeableConcept "Typ av PADL-bedömning" "Typ av PADL-bedömning. Kan anges med lämpligt kodsystem. / (Regel:2) TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod för PADL-bedömning. / Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för PADL-bedömning. / Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för PADL-bedömning. | codeSystemVersion (string, 0..1): Version på kodsystem för PADL-bedömning. | displayName (string, 0..1): PADL-bedömningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om PADL-bedömning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAssessment anges."
      * assessment 1..1 string "Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment" "Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment. TKB-typ: string. Kardinalitet: 1..1."
    * disability 0..1 BackboneElement "Beskriver gjord funktionsnedsättningsbedömning" "Beskriver gjord funktionsnedsättningsbedömning. / Får endast anges om assessmentCategory = fun-fun. TKB-typ: DisabilityType. Kardinalitet: 0..1."
      * disabilityAssessment 1..1 CodeableConcept "Angivelse av kod för den funktion som bedömts nedsatt" "Angivelse av kod för den funktion som bedömts nedsatt. / Om funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare. / Om ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText / Kontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod för den funktion som bedömts nedsatt. Exempelvis ICF kod: b3101 / Om code anges ska också codeSystem  samt displayName anges, men ej originalText. | codeSystem (string, 0..1): OID för ICF: 1.2.752.116.1.1.3 | codeSystemName (string, 0..0): Namn på kodsystem för funktionsnedsättning. | codeSystemVersion (string, 0..0): Version på kodsystem för funktionsnedsättning. | displayName (string, 0..1): ICF-kodens klartextbenämning, exempelvis ”röstkvalitet” . | originalText (string, 0..1): Om ICF-kod saknas, kan en funktionsnedsättningen beskrivas i text i detta attribut. / Om originalText anges ska inget annat värde i disabilityAssessment anges."
      * comment 0..1 string "Kommentar" "Kommentar. / Text som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”. TKB-typ: string. Kardinalitet: 0..1."
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej" "Innehåller information om begäran gick bra eller ej. TKB-typ: ResultType. Kardinalitet: 1..1."
  * resultCode 1..1 code "Kan endast vara OK, INFO eller ERROR" "Kan endast vara OK, INFO eller ERROR. TKB-typ: ResultCodeEnum. Kardinalitet: 1..1."
  * errorCode 0..1 code "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information" "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. TKB-typ: ErrorCodeEnum. Kardinalitet: 0..1."
  * subcode 0..1 string "Inga subkoder är specificerade" "Inga subkoder är specificerade. TKB-typ: string. Kardinalitet: 0..1. OBS: elementet heter subCode i XSD:n."
  * logId 1..1 string "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent" "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. TKB-typ: string. Kardinalitet: 1..1."
  * message 0..1 string "En beskrivande text som kan visas för användaren" "En beskrivande text som kan visas för användaren. TKB-typ: string. Kardinalitet: 0..1."
