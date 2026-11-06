// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetCareDocumentationFieldDescriptions
* careDocumentation ^definition = "De hälso- och sjukvårdsdokument som matchar begäran."
* careDocumentation ^comment = "TKB-fält: `careDocumentation` (`CareDocumentationType`, kardinalitet 0..*)."
* careDocumentation.careDocumentationHeader ^definition = "Innehåller basinformation om dokumentet"
* careDocumentation.careDocumentationHeader ^comment = "TKB-fält: `../careDocumentationHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet.

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* careDocumentation.careDocumentationHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.sourceSystemHSAid ^definition = "HSA-id för det system som dokumentet är skapat i.

Notera att elementnamnet i de andra kontrakten är sourceSystemHSAId (med ett versalt I). Skälet till avvikelsen här är p.g.a. behovet av detta kontrakts bakåtkompatibilitet med kontraktet i version 2.0."
* careDocumentation.careDocumentationHeader.sourceSystemHSAid ^comment = "TKB-fält: `../../sourceSystemHSAid` (`HSAIdType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* careDocumentation.careDocumentationHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.documentTime ^definition = "Händelsetidpunkt. Tidsangivelse för den händelse dokumentet gäller."
* careDocumentation.careDocumentationHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.patientId ^definition = "Identifierare för patient."
* careDocumentation.careDocumentationHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som ansvarar för informationen i dokumentet, nedan kallas författare."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt då informationen registrerades."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "Författarens HSA-id"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** Författarens HSA-id. TKB-typ: HSAIdType. Kardinalitet: 0..1."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om personens befattning. Om möjligt ska kodverket Befattning (OID 1.2.752.129.2.2.1.4), [R13]. TKB-typ: CVType. Kardinalitet: 0..1. Underelement i CVType: code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges. | codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges. | codeSystemName (string, 0..1): Namn på kodsystem för befattningskod. | codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod. | displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. | originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som författaren är uppdragstagare på. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. I de fall då HSA-id inte finns tillgängligt i systemet ska lokalt id anges (unikt inom källsystemet)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namnet på den organisation som författaren är uppdragstagare på"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitName` (`string`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till enhet"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för Vårdenhet

(Regel: 1)"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för Vårdenhet / (Regel: 1) TKB-typ: HSAIdType. Kardinalitet: 0..1."
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för.

(Regel: 1)"
* careDocumentation.careDocumentationHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet."
* careDocumentation.careDocumentationHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering"
* careDocumentation.careDocumentationHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering. TKB-typ: TimeStampType. Kardinalitet: 1..1."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet"
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAId` (`HSAIdType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person."
* careDocumentation.careDocumentationHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* careDocumentation.careDocumentationHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* careDocumentation.careDocumentationHeader.careContactId ^definition = "Identitetet för den hälso- och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet"
* careDocumentation.careDocumentationHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationHeader.nullified ^definition = "N/A"
* careDocumentation.careDocumentationHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* careDocumentation.careDocumentationHeader.nullifiedReason ^definition = "N/A"
* careDocumentation.careDocumentationHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0."
* careDocumentation.careDocumentationBody ^comment = "TKB-fält: `../careDocumentationBody` (`CareDocumentationBodyType`, kardinalitet 1..1).

**Modellanteckning:** careDocumentationBody. TKB-typ: CareDocumentationBodyType. Kardinalitet: 1..1."
* careDocumentation.careDocumentationBody.clinicalDocumentNote ^definition = "Dokument/anteckning."
* careDocumentation.careDocumentationBody.clinicalDocumentNote ^comment = "TKB-fält: `../../clinicalDocumentNote` (`ClinicalDocumentNoteType`, kardinalitet 1..1).

**Modellanteckning:** Dokument/anteckning. TKB-typ: ClinicalDocumentNoteType. Kardinalitet: 1..1."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode ^definition = "Obligatoriskt om clinicalDocumentTypeCode saknas. Får annars inte anges samtidigt med clinicalDocumentTypeCode.

Typ av hälso- och sjukvårdsdokument. Kod tas från KV Anteckningstyp (1.2.752.129.2.2.2.11).

Tillåtna värden är:

utr = Utredning,

atb = åtgärd/Behandling,

sam = Sammanfattning,

sao = Samordning,

ins = Inskrivning,

slu = Slutanteckning,

auf = Anteckning utan fysiskt möte,

sva = Slutenvårdsanteckning,

bes = Besöksanteckning."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteCode ^comment = "TKB-fält: `../../../clinicalDocumentNoteCode` (`ClinicalDocumentNoteCodeEnum`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode ^definition = "Obligatoriskt om clinicalDocumentNoteCode saknas. Får annars inte anges samtidigt med clinicalDocumentNoteCode.

Epikris = epi

Intagninganteckning = int

Daganteckning = dag

Öppenvårdsanteckning = ova Öppenvårdssammanfattning = ovs

Övrigt document = ovr"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentTypeCode ^comment = "TKB-fält: `../../../clinicalDocumentTypeCode` (`ClinicalDocumentTypeCodeEnum`, kardinalitet 0..0)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle ^definition = "Titel på dokument"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteTitle ^comment = "TKB-fält: `../../../clinicalDocumentNoteTitle` (`string`, kardinalitet 0..1).

**Modellanteckning:** Titel på dokument. TKB-typ: string. Kardinalitet: 0..1."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText ^definition = "Dokumentets innehåll i text.

Texten kan antingen skickas som vanlig text eller formaterat enligt DocBook-standarden, se 7.1.3.

Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml (schematron) under katalogen test-suites och kan valideras med testsviten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.clinicalDocumentNoteText ^comment = "TKB-fält: `../../../clinicalDocumentNoteText` (`string`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry ^definition = "Dokumentets innehåll i form av en multimediaobjekt, i form av antingen ett inbäddat objekt eller en länk till objektet.

Obs Man kan välja att skicka dokumentets innehåll i elementet clinicalDocumentNoteText eller i multimediaEntry enligt respektive elements regler, man får inte skicka med båda elementen. Regeln finns med i constraints.xml(schematron) under katalogen test-suites och kan valideras med testsviten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry ^comment = "TKB-fält: `../../../multimediaEntry` (`MultimediaType`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.multimediaId ^definition = "N/A"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.multimediaId ^comment = "TKB-fält: `../../../../id` (kardinalitet 0..0).

**Modellanteckning:** Används ej. TKB-typ: -. Kardinalitet: 0..0. TKB-namn: id (används ej, 0..0). Döpt om eftersom id är reserverat i FHIR."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType ^definition = "Typ av multimedia (enligt HL7)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.mediaType ^comment = "TKB-fält: `../../../../ mediaType` (`MediaTypeEnum`, kardinalitet 1..1).

**Modellanteckning:** Typ av multimedia (enligt HL7). TKB-typ: MediaTypeEnum. Kardinalitet: 1..1."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value ^definition = "Value är binärdata som representerar objektet. Ett och endast ett av attributen value och reference ska anges."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.value ^comment = "TKB-fält: `../../../../value` (`base64Binary`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference ^definition = "Referens till extern bild i form av en URL. Ett och endast ett av attributen value och reference ska anges."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.multimediaEntry.reference ^comment = "TKB-fält: `../../../../reference` (`anyURI`, kardinalitet 0..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion ^definition = "Om patienten eller någon för denna ansvarig person (exempelvis förälder eller god man) har lämnat en avvikande åsikt till journalnotatet."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion ^comment = "TKB-fält: `../../../dissentingOpinion` (`DissentingOpinionType`, kardinalitet 0..*)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.opinionId ^definition = "En universellt unik identifierare för den avvikande åsikten. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.opinionId ^comment = "TKB-fält: `../../../../opinionId` (`IIType`, kardinalitet 0..1).

**Modellanteckning:** En universellt unik identifierare för den avvikande åsikten. Identifieraren ska vara beständig, i betydelsen att upprepade frågemeddelanden ger samma värde i svarsmeddelanden som rör samma journalnotat. TKB-typ: IIType. Kardinalitet: 0..1. Underelement i IIType: root (string, 1..1): En universellt unik identifierare för den avvikande åsikten eller en identifierare som tillsammans med värdet för ”extension” ger en universellt unik identifierare. | extension (string, 0..1): Om värdet på root inte universellt unikt ska detta fält innehålla ett kompletterande värde som tillsammans med värdet för root ger en universellt unik identifierare."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.authorTime ^definition = "Tidpunkten då den avvikande åsikten författades."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.opinion ^definition = "Text som innehåller själva den avvikande åsikten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.opinion ^comment = "TKB-fält: `../../../../opinion` (`string`, kardinalitet 1..1)."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.personId ^definition = "Id för författaren av den avvikande åsikten"
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.personId ^comment = "TKB-fält: `../../../../personId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Id för författaren av den avvikande åsikten. TKB-typ: PersonIdType. Kardinalitet: 1..1. Underelement i PersonIdType: id (string, 1..1): Sätts till personens identifierare. Anges med 12 tecken utan avskiljare. | type (string, 1..1): Sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1) ), [R14]. / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3) ), [R14]. / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3) ), [R14]."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.personName ^definition = "Namnet på författaren av den avvikande åsikten."
* careDocumentation.careDocumentationBody.clinicalDocumentNote.dissentingOpinion.personName ^comment = "TKB-fält: `../../../../personName` (`string`, kardinalitet 1..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej, en P av 2.1 måste skicka med resultType, för kompabilitet mellan K 2.1 och P 2.0 är den satt till icke obligatorisk i wsdl."
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
