// Genererad från TKB clinicalprocess:healthcond:description 2.1.18 (Bitbucket-tagg 2.1.19)
// Kontrakt: GetCareDocumentation v2.1
// Namespace: urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2
// Källa: fältreglerna i TKB avsnitt 7 (svar), typer verifierade mot XSD:n i taggen
// Genererad: 2026-10-08


Invariant: getcaredocumentation-notetext-or-multimedia
Description: "Dokumentets innehåll får inte skickas både i clinicalDocumentNoteText och multimediaEntry (TKB 7.1.4)."
Expression: "(clinicalDocumentNoteText.exists() and multimediaEntry.exists()).not()"
Severity: #error

Invariant: getcaredocumentation-notecode-or-typecode
Description: "clinicalDocumentNoteCode är obligatoriskt om clinicalDocumentTypeCode saknas och får annars inte anges samtidigt (TKB 7.1.4)."
Expression: "clinicalDocumentNoteCode.exists() xor clinicalDocumentTypeCode.exists()"
Severity: #error

Invariant: getcaredocumentation-multimedia-value-xor-reference
Description: "Ett och endast ett av value och reference ska anges i multimediaEntry (TKB 7.1.4)."
Expression: "value.exists() xor reference.exists()"
Severity: #error

Logical: GetCareDocumentation
Id: getcaredocumentation
Title: "GetCareDocumentation"
Description: "Logisk modell för svaret i tjänstekontraktet GetCareDocumentation version 2.1 (RIV-TA urn:riv:clinicalprocess:healthcond:description:GetCareDocumentationResponder:2), enligt fältreglerna i TKB clinicalprocess:healthcond:description 2.1.18. Representerar svarets informationsstruktur: hälso- och sjukvårdsdokument för en patient samt resultat."
Characteristics: #can-be-target

* ^version = "2.1"
* careDocumentation 0..* BackboneElement "De hälso- och sjukvårdsdokument som matchar begäran" "De hälso- och sjukvårdsdokument som matchar begäran. TKB-typ: CareDocumentationType. Kardinalitet: 0..*."
  * careDocumentationHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet" "Innehåller basinformation om dokumentet. TKB-typ: PatientSummaryHeaderType. Kardinalitet: 1..1."
    * documentId 1..1 string "Dokumentets identitet som är unik inom källsystemet" "Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen. TKB-typ: string. Kardinalitet: 1..1."
    * sourceSystemHSAid 1..1 Identifier "HSA-id för det system som dokumentet är skapat i" "HSA-id för det system som dokumentet är skapat i. / Notera att elementnamnet i de andra kontrakten är sourceSystemHSAId (med ett versalt I). Skälet till avvikelsen här är p.g.a. behovet av detta kontrakts bakåtkompatibilitet med kontraktet i version 2.0. TKB-typ: HSAIdType. Kardinalitet: 1..1."
    * documentTitle 0..1 string "Titel som beskriver den information som sänds i dokumentet" "Titel som beskriver den information som sänds i dokumentet. TKB-typ: string. Kardinalitet: 0..1."
    * documentTime 0..1 dateTime "Händelsetidpunkt" "Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller. TKB-typ: TimeStampType. Kardinalitet: 0..1."
    * patientId 1..1 Identifier "Identifierare för patient" "Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]."
    * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas …" "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare. TKB-typ: HealthcareProfessionalType. Kardinalitet: 1..1."
      * authorTime 1..1 dateTime "Tidpunkt då informationen registrerades" "Tidpunkt då informationen registrerades. TKB-typ: TimeStampType. Kardinalitet: 1..1."
      * healthcareProfessionalHSAId 0..1 Identifier "Författarens HSA-id" "Författarens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * healthcareProfessionalName 0..1 string "Namn på författaren" "Namn på författaren. Om tillgängligt ska detta anges. TKB-typ: string. Kardinalitet: 0..1."
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning" "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
      * healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som författaren är uppdragstagare på" "Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). TKB-typ: OrgUnitType. Kardinalitet: 1..1."
        * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet" "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet). TKB-typ: HSAIdType. Kardinalitet: 1..1."
        * orgUnitName 1..1 string "Namnet på den organisation som författaren är uppdragstagare på" "Namnet på den organisation som författaren är uppdragstagare på. TKB-typ: string. Kardinalitet: 1..1."
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet" "Telefon till organisationsenhet. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitEmail 0..1 string "Epost till enhet" "Epost till enhet. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitAddress 0..1 string "Postadress för den organisation som författaren är uppdragstagare på" "Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”. TKB-typ: string. Kardinalitet: 0..1."
        * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering" "Text som anger namnet på plats eller ort för organisationens fysiska placering. TKB-typ: string. Kardinalitet: 0..1."
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för Vårdenhet" "HSA-id för Vårdenhet / (Regel: 1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för" "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. / (Regel: 1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet" "Information om vem som signerat informationen i dokumentet. TKB-typ: LegalAuthenticatorType. Kardinalitet: 0..1."
      * signatureTime 1..1 dateTime "Tidpunkt för signering" "Tidpunkt för signering. TKB-typ: TimeStampType. Kardinalitet: 1..1."
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet" "HSA-id för person som signerat dokumentet. TKB-typ: HSAIdType. Kardinalitet: 0..1."
      * legalAuthenticatorName 0..1 string "Namnen i klartext för signerande person" "Namnen i klartext för signerande person. TKB-typ: string. Kardinalitet: 0..1."
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient" "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false. TKB-typ: boolean. Kardinalitet: 1..1."
    * careContactId 0..1 string "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet" "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. TKB-typ: string. Kardinalitet: 0..1."
    * nullified 0..0 boolean "nullified" "Används ej. TKB-typ: -. Kardinalitet: 0..0."
    * nullifiedReason 0..0 string "nullifiedReason" "Används ej. TKB-typ: -. Kardinalitet: 0..0."
  * careDocumentationBody 1..1 BackboneElement "careDocumentationBody" "careDocumentationBody. TKB-typ: CareDocumentationBodyType. Kardinalitet: 1..1."
    * clinicalDocumentNote 1..1 BackboneElement "Dokument/anteckning" "Dokument/anteckning. TKB-typ: ClinicalDocumentNoteType. Kardinalitet: 1..1."
      * obeys getcaredocumentation-notetext-or-multimedia
      * obeys getcaredocumentation-notecode-or-typecode
      * clinicalDocumentNoteCode 0..1 code "Obligatoriskt om clinicalDocumentTypeCode saknas" "Obligatoriskt om clinicalDocumentTypeCode saknas. Får annars inte anges samtidigt med clinicalDocumentTypeCode. / Typ av hälso- och sjukvårdsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11). / Tillåtna värden är: / utr = Utredning, / atb = åtgärd/Behandling, / sam = Sammanfattning, / sao = Samordning, / ins = Inskrivning, / slu = Slutanteckning, / auf = Anteckning utan fysiskt möte, / sva = Slutenvårdsanteckning, / bes = Besöksanteckning. TKB-typ: ClinicalDocumentNoteCodeEnum. Kardinalitet: 0..1."
      * clinicalDocumentNoteCode from ClinicalDocumentNoteCodeVS (required)
      * clinicalDocumentTypeCode 0..0 code "Obligatoriskt om clinicalDocumentNoteCode saknas" "Obligatoriskt om clinicalDocumentNoteCode saknas. Får annars inte anges samtidigt med clinicalDocumentNoteCode. / Epikris = epi / Intagninganteckning = int / Daganteckning = dag / Öppenvårdsanteckning = ova Öppenvårdssammanfattning = ovs / Övrigt document = ovr. TKB-typ: ClinicalDocumentTypeCodeEnum. Kardinalitet: 0..0."
      * clinicalDocumentNoteTitle 0..1 string "Titel på dokument" "Titel på dokument. TKB-typ: string. Kardinalitet: 0..1."
      * clinicalDocumentNoteText 0..1 string "Dokumentets innehåll i text" "Dokumentets innehåll i text. / Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3. / Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml (schematron) under katalogen test-suites och kan valideras med testsviten. TKB-typ: string. Kardinalitet: 0..1."
      * multimediaEntry 0..1 BackboneElement "Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk …" "Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet. / Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml(schematron) under katalogen test-suites och kan valideras med testsviten. TKB-typ: MultimediaType. Kardinalitet: 0..1."
        * obeys getcaredocumentation-multimedia-value-xor-reference
        * multimediaId 0..0 string "id" "Används ej. TKB-typ: -. Kardinalitet: 0..0. TKB-namn: id (används ej, 0..0). Döpt om eftersom id är reserverat i FHIR."
        * mediaType 1..1 code "Typ av multimedia (enligt HL7)" "Typ av multimedia (enligt HL7). TKB-typ: MediaTypeEnum. Kardinalitet: 1..1."
        * value 0..1 base64Binary "Value är binärdata som representerar objektet" "Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges. TKB-typ: base64Binary. Kardinalitet: 0..1."
        * reference 0..1 uri "Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges" "Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges. TKB-typ: anyURI. Kardinalitet: 0..1."
      * dissentingOpinion 0..* BackboneElement "Om patienten eller någon för denna ansvarig person (exempelvis förälder eller god man) har lämnat en …" "Om patienten eller någon för denna ansvarig person (exempelvis förälder eller god man) har lämnat en avvikande åsikt till journalnotatet. TKB-typ: DissentingOpinionType. Kardinalitet: 0..*. OBS: elementet heter dissentintOpinion i XSD:n (GetCareDocumentationResponder_2.1.xsd / clinicalprocess_healthcond_description_2.1.xsd)."
        * opinionId 0..1 Identifier "En universellt unik identifierare för den avvikande åsikten" "En universellt unik identifierare för den avvikande åsikten. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat. TKB-typ: IIType. Kardinalitet: 0..1. Underelement i IIType: root (string, 1..1): En universellt unik identifierare för den avvikande åsikten eller en identifierare som tillsammans med värdet för ”extension” ger en universellt unik identifierare. | extension (string, 0..1): Om värdet på root inte universellt unikt ska detta fält innehålla ett kompletterande värde som tillsammans med värdet för root ger en universellt unik identifierare."
        * authorTime 1..1 dateTime "Tidpunkten då den avvikande åsikten författades" "Tidpunkten då den avvikande åsikten författades. TKB-typ: TimeStampType. Kardinalitet: 1..1."
        * opinion 1..1 string "Text som innehåller själva den avvikande åsikten" "Text som innehåller själva den avvikande åsikten. TKB-typ: string. Kardinalitet: 1..1."
        * personId 1..1 Identifier "Id för författaren av den avvikande åsikten" "Id för författaren av den avvikande åsikten. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till personens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) ), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]."
        * personName 1..1 string "Namnet på författaren av den avvikande åsikten" "Namnet på författaren av den avvikande åsikten. TKB-typ: string. Kardinalitet: 1..1."
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för …" "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl. TKB-typ: ResultType. Kardinalitet: 1..1."
  * resultCode 1..1 code "Kan endast vara OK, INFO eller ERROR" "Kan endast vara OK, INFO eller ERROR. TKB-typ: ResultCodeEnum. Kardinalitet: 1..1."
  * errorCode 0..1 code "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information" "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information. TKB-typ: ErrorCodeEnum. Kardinalitet: 0..1."
  * subcode 0..1 string "Inga subkoder är specificerade" "Inga subkoder är specificerade. TKB-typ: string. Kardinalitet: 0..1. OBS: elementet heter subCode i XSD:n."
  * logId 1..1 string "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent" "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent. TKB-typ: string. Kardinalitet: 1..1."
  * message 0..1 string "En beskrivande text som kan visas för användaren" "En beskrivande text som kan visas för användaren. TKB-typ: string. Kardinalitet: 0..1."
