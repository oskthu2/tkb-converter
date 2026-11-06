// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetFunctionalStatusFieldDescriptions
* functionalStatusAssessment ^definition = "De funktionsstatusbedömningar som matchar begäran."
* functionalStatusAssessment ^comment = "TKB-fält: `functionalStatusAssessment` (`FunctionalStatusAssessmentTime`, kardinalitet 0..*)."
* functionalStatusAssessment.functionalStatusAssessmentHeader ^definition = "Innehåller basinformation om dokumentet"
* functionalStatusAssessment.functionalStatusAssessmentHeader ^comment = "TKB-fält: `../functionalStatusAssessmentHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentId ^definition = "Funktionsbedömningens identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId ^definition = "HSA-id för det system som dokumentet är skapat i."
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTitle ^definition = "N/A"
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: string. Kardinalitet: 0..0."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime ^definition = "Bedömningstidpunkt/händelsetidpunkt."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Bedömningstidpunkt/händelsetidpunkt. TKB-typ: TimeStampType. Kardinalitet: 1..1."
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId ^definition = "Identifierare för patient."
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3), [R14]."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** Författarens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13].

I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället.

Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13]. / I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället. / Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1).

**Modellanteckning:** HSA-id för organisationsenhet. TKB-typ: HSAIdType. Kardinalitet: 1..1."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenhet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som författaren är uppdragstagare på."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet. (Regel:1)"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för vårdenhet. (Regel:1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1)"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime ^definition = "Signaturtidpunkt.

Tid vid vilken funktionsstatusbedömningen signeras."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode ^definition = "Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode ^comment = "TKB-fält: `../../../legalAuthenticatorRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges. OBS: elementet finns inte i LegalAuthenticatorType i XSD:n (clinicalprocess_healthcond_description_2.1.xsd); det kan bara skickas via xs:any."
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId ^definition = "Vårdkontakts-id.

Id för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts."
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullified ^definition = "N/A"
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullified ^comment = "TKB-fält: `../../nullified` (`boolean`, kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: boolean. Kardinalitet: 0..0."
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullifiedReason ^definition = "N/A"
* functionalStatusAssessment.functionalStatusAssessmentHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (`string`, kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: string. Kardinalitet: 0..0."
* functionalStatusAssessment.functionalStatusAssessmentBody ^comment = "TKB-fält: `../functionalStatusAssessmentBody` (`FunctionalStatusAssessmentBodyType`, kardinalitet 1..1).

**Modellanteckning:** functionalStatusAssessmentBody. TKB-typ: FunctionalStatusAssessmentBodyType. Kardinalitet: 1..1."
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory ^definition = "Bedömningskategori.

Beskriver vilken kategori av bedömning som är gjord. Tillåtna värden är \"pad-pad\" (för PADL-bedömning) och \"fun-fun\" (för funktionsnedsättningsbedömningar).

Värdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI."
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory ^comment = "TKB-fält: `../../assessmentCategory` (`AssessmentCategoryEnum`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentBody.comment ^definition = "Kommentar.

Text som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad."
* functionalStatusAssessment.functionalStatusAssessmentBody.comment ^comment = "TKB-fält: `../../comment` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl ^definition = "Beskriver gjorda PADL-bedömningar.

Får enbart anges samtidigt som assessmentCategory = pad-pad."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl ^comment = "TKB-fält: `../../padl` (`PADLType`, kardinalitet 0..*)."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment ^definition = "Typ av PADL-bedömning. Kan anges med lämpligt kodsystem.

(Regel:2)"
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment ^comment = "TKB-fält: `../../../typeOfAssessment` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** Typ av PADL-bedömning. Kan anges med lämpligt kodsystem. / (Regel:2) TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod för PADL-bedömning. / Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för PADL-bedömning. / Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för PADL-bedömning. | codeSystemVersion (string, 0..1): Version på kodsystem för PADL-bedömning. | displayName (string, 0..1): PADL-bedömningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om PADL-bedömning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i typeOfAssessment anges."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment ^definition = "Den textuella PADL-bedömning som gjorts i kategorin av bedömningar som beskrivs i typeOfAssessment."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.assessment ^comment = "TKB-fält: `../../../assessment` (`string`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability ^definition = "Beskriver gjord funktionsnedsättningsbedömning.

Får endast anges om assessmentCategory = fun-fun."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability ^comment = "TKB-fält: `../../disability` (`DisabilityType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment ^definition = "Angivelse av kod för den funktion som bedömts nedsatt.

Om funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare.

Om ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText

Kontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.disabilityAssessment ^comment = "TKB-fält: `../../../disabilityAssessment` (`CVType`, kardinalitet 1..1).

**Modellanteckning:** Angivelse av kod för den funktion som bedömts nedsatt. / Om funktionen anges strukturerat ska kod från ICF [R13] användas. Koden ska anges utan bedömningsfaktor och detta ska tolkas som att det är den funktion som ICF-koden representerar som är nedsatt från normal funktion. I attributet kommentar kan nedsättningen vid behov textuellt graderas och specificeras ytterligare. / Om ICF-kod inte kan anges kan den nedsatta funktionen anges i attributet originalText / Kontraktet har i denna version inte stöd för ICFs numeriska bedömningsfaktor. TKB-typ: CVType. Kardinalitet: 1..1. Underelement i CVType: code (string, 0..1): Kod för den funktion som bedömts nedsatt. Exempelvis ICF kod: b3101 / Om code anges ska också codeSystem  samt displayName anges, men ej originalText. | codeSystem (string, 0..1): OID för ICF: 1.2.752.116.1.1.3 | codeSystemName (string, 0..0): Namn på kodsystem för funktionsnedsättning. | codeSystemVersion (string, 0..0): Version på kodsystem för funktionsnedsättning. | displayName (string, 0..1): ICF-kodens klartextbenämning, exempelvis ”röstkvalitet” . | originalText (string, 0..1): Om ICF-kod saknas, kan en funktionsnedsättningen beskrivas i text i detta attribut. / Om originalText anges ska inget annat värde i disabilityAssessment anges."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment ^definition = "Kommentar.

Text som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment ^comment = "TKB-fält: `../../../comment` (`string`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.subcode ^definition = "Inga subkoder är specificerade."
* result.subcode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1).

**Modellanteckning:** Inga subkoder är specificerade. TKB-typ: string. Kardinalitet: 0..1. OBS: elementet heter subCode i XSD:n."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
