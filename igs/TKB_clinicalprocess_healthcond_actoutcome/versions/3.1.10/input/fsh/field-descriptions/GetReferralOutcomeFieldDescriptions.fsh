// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: GetReferralOutcomeFieldDescriptions
* referralOutcome ^definition = "Returnerar en patients konsultationsremissvar."
* referralOutcome ^comment = "TKB-fält: `referralOutcome` (`ReferralOutcomeType`, kardinalitet 0..*)."
* referralOutcome.referralOutcomeHeader ^definition = "Innehåller basinformation om dokumentet"
* referralOutcome.referralOutcomeHeader ^comment = "TKB-fält: `../referralOutcomeHeader` (`PatientSummaryHeaderType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.documentId ^definition = "Dokumentets identitet som är unik inom källsystemet

Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter.

Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen."
* referralOutcome.referralOutcomeHeader.documentId ^comment = "TKB-fält: `../../documentId` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.sourceSystemHSAId ^definition = "HSAid för det system som dokumentet är skapat i."
* referralOutcome.referralOutcomeHeader.sourceSystemHSAId ^comment = "TKB-fält: `../../sourceSystemHSAId` (`HSAIdType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.documentTitle ^definition = "Titel som beskriver den information som sänds i dokumentet."
* referralOutcome.referralOutcomeHeader.documentTitle ^comment = "TKB-fält: `../../documentTitle` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.documentTime ^definition = "Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem."
* referralOutcome.referralOutcomeHeader.documentTime ^comment = "TKB-fält: `../../documentTime` (`TimeStampType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.patientId ^definition = "Identifierare för patient."
* referralOutcome.referralOutcomeHeader.patientId ^comment = "TKB-fält: `../../patientId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Identifierare för patient.
RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
Delelement enligt TKB:
- id (string, 1..1): Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck.
- type (string, 1..1): OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3)"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional ^definition = "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional ^comment = "TKB-fält: `../../accountableHealthcareProfessional` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime ^definition = "Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.authorTime ^comment = "TKB-fält: `../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^definition = "HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalName ^comment = "TKB-fält: `../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText.
RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
Delelement enligt TKB:
- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^definition = "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../orgUnitname` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenhet."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^definition = "HSA-id för Vårdenhet som hälso-och sjukvårdsperson är uppdragstagare för. Ska anges om tillgänglig. [Regel 2]"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^definition = "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 2]"
* referralOutcome.referralOutcomeHeader.accountableHealthcareProfessional.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../healthcareProfessionalCareGiverHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.legalAuthenticator ^definition = "Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn."
* referralOutcome.referralOutcomeHeader.legalAuthenticator ^comment = "TKB-fält: `../../legalAuthenticator` (`LegalAuthenticatorType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime ^definition = "Tidpunkt för signering"
* referralOutcome.referralOutcomeHeader.legalAuthenticator.signatureTime ^comment = "TKB-fält: `../../../signatureTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkt för signering
RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId ^definition = "HSA-id för person som signerat dokumentet."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorHSAId ^comment = "TKB-fält: `../../../legalAuthenticatorHSAid` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName ^definition = "Namnen i klartext för signerande person"
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorName ^comment = "TKB-fält: `../../../legalAuthenticatorName` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeHeader.legalAuthenticator.legalAuthenticatorRoleCode ^comment = "TKB-fält: `../../../legalAuthenticatorRoleCode` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeHeader.approvedForPatient ^definition = "Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false."
* referralOutcome.referralOutcomeHeader.approvedForPatient ^comment = "TKB-fält: `../../approvedForPatient` (`boolean`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeHeader.careContactId ^definition = "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet."
* referralOutcome.referralOutcomeHeader.careContactId ^comment = "TKB-fält: `../../careContactId` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeHeader.nullified ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeHeader.nullified ^comment = "TKB-fält: `../../nullified` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeHeader.nullifiedReason ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeHeader.nullifiedReason ^comment = "TKB-fält: `../../nullifiedReason` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeBody ^comment = "TKB-fält: `../referralOutcomeBody` (`ReferralOutcomeBodyType`, kardinalitet 1..1).

**Modellanteckning:** RIV-TA-typ: ReferralOutcomeBodyType. Kardinalitet i TKB: 1..1."
* referralOutcome.referralOutcomeBody.referralOutcomeTypeCode ^definition = "Anger typ av svar.

Giltiga koder:

SR, svar på remissfråga

SS, slutsvar på remissfråga"
* referralOutcome.referralOutcomeBody.referralOutcomeTypeCode ^comment = "TKB-fält: `../../referralOutcomeTypeCode` (`referralOutcomeTypeCodeEnum`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referralOutcomeTitle ^definition = "Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text.

Exempel:

Patologi

Klinisk fysik

Logopedi"
* referralOutcome.referralOutcomeBody.referralOutcomeTitle ^comment = "TKB-fält: `../../referralOutcomeTitle` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referralOutcomeText ^definition = "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet."
* referralOutcome.referralOutcomeBody.referralOutcomeText ^comment = "TKB-fält: `../../referralOutcomeText` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.clinicalInformation ^definition = "Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret."
* referralOutcome.referralOutcomeBody.clinicalInformation ^comment = "TKB-fält: `../../clinicalInformation` (`ClinicalInformationType`, kardinalitet 0..*)."
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode ^definition = "Kod för åtgärd.

Koden anges i code.

Kodverkets OID i codeSystem."
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationCode ^comment = "TKB-fält: `../../../clinicalInformationCode` (`ClinicalInformationCodeType`, kardinalitet 1..1).

**Modellanteckning:** Kod för åtgärd. / Koden anges i code. / Kodverkets OID i codeSystem.
RIV-TA-typ: ClinicalInformationCodeType. Kardinalitet i TKB: 1..1.
Delelement enligt TKB:
- code (string, 1..1): Kod.
- codeSystem (string, 1..1): Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan  förekomma."
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText ^definition = "Beskrivning av klinisk information"
* referralOutcome.referralOutcomeBody.clinicalInformation.clinicalInformationText ^comment = "TKB-fält: `../../../clinicalInformationText` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.act ^definition = "Utförd åtgärd"
* referralOutcome.referralOutcomeBody.act ^comment = "TKB-fält: `../../act` (`ActType`, kardinalitet 0..*).

**Modellanteckning:** Utförd åtgärd
RIV-TA-typ: ActType. Kardinalitet i TKB: 0..*."
* referralOutcome.referralOutcomeBody.act.actId ^definition = "Åtgärdens identitet som är unik inom det lokala avsändande systemet"
* referralOutcome.referralOutcomeBody.act.actId ^comment = "TKB-fält: `../../../actId` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.act.actCode ^definition = "Kod för åtgärd.

Koden anges i code.

Kodverkets OID anges i codeSystem."
* referralOutcome.referralOutcomeBody.act.actCode ^comment = "TKB-fält: `../../../actCode` (`ActCodeType`, kardinalitet 0..1).

**Modellanteckning:** Kod för åtgärd. / Koden anges i code. / Kodverkets OID anges i codeSystem.
RIV-TA-typ: ActCodeType. Kardinalitet i TKB: 0..1.
Delelement enligt TKB:
- code (string, 1..1): Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i `<actText>`.
- codeSystem (string, 1..1): Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma."
* referralOutcome.referralOutcomeBody.act.actText ^definition = "Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod."
* referralOutcome.referralOutcomeBody.act.actText ^comment = "TKB-fält: `../../../actText` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.act.actTime ^definition = "Tidpunkt då åtgärd genomfördes"
* referralOutcome.referralOutcomeBody.act.actTime ^comment = "TKB-fält: `../../../actTime` (`TimeStampType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.act.actResult ^definition = "Resultat av åtgärd. Data i form av bifogade bilder eller liknande"
* referralOutcome.referralOutcomeBody.act.actResult ^comment = "TKB-fält: `../../../actResult` (`MultimediaType`, kardinalitet 0..*)."
* referralOutcome.referralOutcomeBody.act.actResult.actResultId ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeBody.act.actResult.actResultId ^comment = "TKB-fält: `../../../../id` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeBody.act.actResult.mediaType ^definition = "Typ av multimedia"
* referralOutcome.referralOutcomeBody.act.actResult.mediaType ^comment = "TKB-fält: `../../../../mediaType` (`MediaTypeEnum`, kardinalitet 1..1).

**Modellanteckning:** Typ av multimedia
RIV-TA-typ: MediaTypeEnum. Kardinalitet i TKB: 1..1."
* referralOutcome.referralOutcomeBody.act.actResult.actResultValue ^definition = "Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges."
* referralOutcome.referralOutcomeBody.act.actResult.actResultValue ^comment = "TKB-fält: `../../../../value` (`base64Binary`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.act.actResult.reference ^definition = "Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges."
* referralOutcome.referralOutcomeBody.act.actResult.reference ^comment = "TKB-fält: `../../../../reference` (`anyURI`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.attested ^definition = "Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar."
* referralOutcome.referralOutcomeBody.attested ^comment = "TKB-fält: `../../attested` (`AttestedType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.attested.attestedTime ^definition = "Tidpunkten för vidimering"
* referralOutcome.referralOutcomeBody.attested.attestedTime ^comment = "TKB-fält: `../../../attestedTime` (`TimeStampType`, kardinalitet 1..1).

**Modellanteckning:** Tidpunkten för vidimering
RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1."
* referralOutcome.referralOutcomeBody.attested.attesterHSAId ^definition = "HSA-id för person som vidimerat"
* referralOutcome.referralOutcomeBody.attested.attesterHSAId ^comment = "TKB-fält: `../../../attesterHSAId` (`HSAIdType`, kardinalitet 0..1).

**Modellanteckning:** HSA-id för person som vidimerat
RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1."
* referralOutcome.referralOutcomeBody.attested.attesterName ^definition = "Namn på person som vidimerat"
* referralOutcome.referralOutcomeBody.attested.attesterName ^comment = "TKB-fält: `../../../attesterName` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral ^definition = "Information om den vårdbegäran som ligger till grund för svaret"
* referralOutcome.referralOutcomeBody.referral ^comment = "TKB-fält: `../../referral` (`ReferralType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referral.referralId ^definition = "Remissens identitet som är unik inom det lokala avsändade systemet"
* referralOutcome.referralOutcomeBody.referral.referralId ^comment = "TKB-fält: `../../../referralId` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referral.referralReason ^definition = "Text som anger aktuell frågeställning."
* referralOutcome.referralOutcomeBody.referral.referralReason ^comment = "TKB-fält: `../../../referralReason` (`string`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referral.referralTime ^definition = "Tid då vårdbegäran framställdes."
* referralOutcome.referralOutcomeBody.referral.referralTime ^comment = "TKB-fält: `../../../referralTime` (`TimeStampType`, kardinalitet 0..1).

**Modellanteckning:** Tid då vårdbegäran framställdes.
RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1."
* referralOutcome.referralOutcomeBody.referral.referralAuthor ^definition = "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare."
* referralOutcome.referralOutcomeBody.referral.referralAuthor ^comment = "TKB-fält: `../../../referralAuthor` (`HealthcareProfessionalType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime ^definition = "Tidpunkt då vårdbegäran registrerades i systemet."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.authorTime ^comment = "TKB-fält: `../../../../authorTime` (`TimeStampType`, kardinalitet 1..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId ^definition = "HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName ^definition = "Namn på författaren. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalName ^comment = "TKB-fält: `../../../../healthcareProfessionalName` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode ^definition = "Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalRoleCode ^comment = "TKB-fält: `../../../../healthcareProfessionalRoleCode` (`CVType`, kardinalitet 0..1).

**Modellanteckning:** Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText.
RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
Delelement enligt TKB:
- code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
- codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
- codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
- codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
- displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
- originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit ^definition = "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit ^comment = "TKB-fält: `../../../../healthcareProfessionalOrgUnit` (`OrgUnitType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitHSAId ^definition = "HSA-id för organisationsenhet. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitHSAId ^comment = "TKB-fält: `../../../../../orgUnitHSAId` (`HSAIdType`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitName ^definition = "Namn på organisationsenhet. Om tillgängligt ska detta anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitName ^comment = "TKB-fält: `../../../../../orgUnitname` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitTelecom ^definition = "Telefon till organisationsenhet"
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitTelecom ^comment = "TKB-fält: `../../../../../orgUnitTelecom` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitEmail ^definition = "Epost till organisationsenhet."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitEmail ^comment = "TKB-fält: `../../../../../orgUnitEmail` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitAddress ^definition = "Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis:

”Storgatan 12

468 91 Lilleby”"
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitAddress ^comment = "TKB-fält: `../../../../../orgUnitAddress` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitLocation ^definition = "Text som anger namnet på plats eller ort för organisationens fysiska placering"
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalOrgUnit.orgUnitLocation ^comment = "TKB-fält: `../../../../../orgUnitLocation` (`string`, kardinalitet 0..1)."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareUnitHSAId ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareUnitHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareUnitHSAId` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareGiverHSAId ^definition = "Ska ej anges."
* referralOutcome.referralOutcomeBody.referral.referralAuthor.healthcareProfessionalCareGiverHSAId ^comment = "TKB-fält: `../../../../healthcareProfessionalCareGiverHSAId` (kardinalitet 0..0).

**Modellanteckning:** Ska ej anges.
RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0."
* referralOutcome.referralOutcomeBody.referral.careContactId ^definition = "Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation."
* referralOutcome.referralOutcomeBody.referral.careContactId ^comment = "TKB-fält: `../../../careContactId` (`string`, kardinalitet 0..1)."
* result ^definition = "Innehåller information om begäran gick bra eller ej."
* result ^comment = "TKB-fält: `result` (`ResultType`, kardinalitet 1..1)."
* result.resultCode ^definition = "Kan endast vara OK, INFO eller ERROR"
* result.resultCode ^comment = "TKB-fält: `../resultCode` (`ResultCodeEnum`, kardinalitet 1..1)."
* result.errorCode ^definition = "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
* result.errorCode ^comment = "TKB-fält: `../errorCode` (`ErrorCodeEnum`, kardinalitet 0..1)."
* result.subCode ^definition = "Inga subkoder är specificerade."
* result.subCode ^comment = "TKB-fält: `../subcode` (`string`, kardinalitet 0..1)."
* result.logId ^definition = "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
* result.logId ^comment = "TKB-fält: `../logId` (`string`, kardinalitet 1..1)."
* result.message ^definition = "En beskrivande text som kan visas för användaren."
* result.message ^comment = "TKB-fält: `../message` (`string`, kardinalitet 0..1)."
