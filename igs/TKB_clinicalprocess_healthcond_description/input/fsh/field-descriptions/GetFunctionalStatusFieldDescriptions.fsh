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
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId ^definition = "HSA-id för det system tillgängliggör informationen."
* functionalStatusAssessment.functionalStatusAssessmentHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime ^definition = "Bedömningstidpunkt/händelsetidpunkt."
* functionalStatusAssessment.functionalStatusAssessmentHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Bedömningstidpunkt/händelsetidpunkt. Format: YYYYMMDDhhmmss."
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId ^definition = "Identifierare för patient."
* functionalStatusAssessment.functionalStatusAssessmentHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. id = patientens identifierare (12 tecken).
type = OID för typ av identifierare."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för funktionsstatusbedömninge, nedan kallas författare."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1).

**Modellanteckning:** Namn på hälso- och sjukvårdspersonal."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4) användas, [R13].

I de fall kodverket Befattning ej kan användas, men information om befattning finns tillgänglig, måste vårdgivaren ange en OID på det organisationsinterna kodverk som används istället.

Information som finns kan inte utelämnas på grund av att mappning till kodverket Befattning inte är möjlig"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1).

**Modellanteckning:** Den organisation som hälso- och sjukvårdspersonalen är uppdragstagare i."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för vårdenhet. (Regel:1)"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. (Regel:1)"
* functionalStatusAssessment.functionalStatusAssessmentHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime ^definition = "Signaturtidpunkt.

Tid vid vilken funktionsstatusbedömningen signeras."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Signaturtidpunkt. Format: YYYYMMDDhhmmss."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode ^definition = "Signerande persons befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]"
* functionalStatusAssessment.functionalStatusAssessmentHeader.legalAuthenticator.legalAuthenticatorRoleCode ^comment = "TKB-fält: `../../../legalAuthenticatorRoleCode` (`CVType`, kardinalitet 0..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* functionalStatusAssessment.functionalStatusAssessmentHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId ^definition = "Vårdkontakts-id.

Id för den vårdkontakt vid vilken funktionsstatusbedömningen gjorts."
* functionalStatusAssessment.functionalStatusAssessmentHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1).

**Modellanteckning:** Id för den vårdkontakt vid vilken bedömningen genomfördes."
* functionalStatusAssessment.functionalStatusAssessmentBody ^comment = "TKB-fält: `../functionalStatusAssessmentBody` (`FunctionalStatusAssessmentBodyType`, kardinalitet 1..1).

**Modellanteckning:** FunctionalStatusAssessmentBodyType — bedömningens informationsinnehåll."
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory ^definition = "Bedömningskategori.

Beskriver vilken kategori av bedömning som är gjord. Tillåtna värden är \"pad-pad\" (för PADL-bedömning) och \"fun-fun\" (för funktionsnedsättningsbedömningar).

Värdet här ska stämma överens med elementet categorization i den Update som tjänsteproducent skickar till EI."
* functionalStatusAssessment.functionalStatusAssessmentBody.assessmentCategory ^comment = "TKB-fält: `../../assessmentCategory` (`AssessmentCategoryEnum`, kardinalitet 1..1).

**Modellanteckning:** Bedömningskategori. 'pad-pad' = PADL-bedömning, 'fun-fun' = funktionsnedsättningsbedömning.
OBS: tjänsteproducent måste använda samma värde som categorization i engagemangsindex.
Se AssessmentCategoryCS/AssessmentCategoryVS."
* functionalStatusAssessment.functionalStatusAssessmentBody.comment ^definition = "Kommentar.

Text som innehåller kommentar till totaliten av bedömningarna. Får endast användas om assessmentCategory = pad-pad."
* functionalStatusAssessment.functionalStatusAssessmentBody.comment ^comment = "TKB-fält: `../../comment` (`string`, kardinalitet 0..1).

**Modellanteckning:** Kommentar till total bedömning."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl ^definition = "Beskriver gjorda PADL-bedömningar.

Får enbart anges samtidigt som assessmentCategory = pad-pad."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl ^comment = "TKB-fält: `../../padl` (`PADLType`, kardinalitet 0..*)."
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment ^definition = "Typ av PADL-bedömning. Kan anges med lämpligt kodsystem.

(Regel:2)"
* functionalStatusAssessment.functionalStatusAssessmentBody.padl.typeOfAssessment ^comment = "TKB-fält: `../../../typeOfAssessment` (`CVType`, kardinalitet 1..1)."
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

**Modellanteckning:** Angivelse av kod för den funktion som bedömts nedsatt.
Kodsystem: ICF, OID 1.2.752.116.1.1.3.
Exempelkod: b310 = röst- och talfunktioner."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment ^definition = "Kommentar.

Text som innehåller ytterligare information om funktionsnedsättningen. Exempelvis: ”uttalssvårigheter och tillfälligt bortfall av röststyrka”."
* functionalStatusAssessment.functionalStatusAssessmentBody.disability.comment ^comment = "TKB-fält: `../../../comment` (`string`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1).

**Modellanteckning:** Sätts endast om resultCode är ERROR. Tillåtna värden: INVALID_REQUEST."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
