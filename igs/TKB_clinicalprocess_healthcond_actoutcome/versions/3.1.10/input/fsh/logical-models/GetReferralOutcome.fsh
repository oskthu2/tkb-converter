// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetReferralOutcome 3.1 (avsnitt 7.1)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetReferralOutcome
Id: getreferraloutcome
Title: "GetReferralOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetReferralOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetReferralOutcomeResponder:3).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.1.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* referralOutcome 0..* BackboneElement "Returnerar en patients konsultationsremissvar."
  """
  Returnerar en patients konsultationsremissvar.
  RIV-TA-typ: ReferralOutcomeType. Kardinalitet i TKB: 0..*.
  """
  * referralOutcomeHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
    """
    Innehåller basinformation om dokumentet
    RIV-TA-typ: PatientSummaryHeaderType. Kardinalitet i TKB: 1..1.
    """
    * documentId 1..1 string "Dokumentets identitet som är unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan"
      """
      Dokumentets identitet som är unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * sourceSystemHSAId 1..1 Identifier "HSAid för det system som dokumentet är skapat i."
      """
      HSAid för det system som dokumentet är skapat i.
      RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
      """
    * documentTitle 0..1 string "Titel som beskriver den information som sänds i dokumentet."
      """
      Titel som beskriver den information som sänds i dokumentet.
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * documentTime 1..1 instant "Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem."
      """
      Tidpunkten då remissvaret inkom till remittentens vårdinformationssystem.
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
      """
    * patientId 1..1 Identifier "Identifierare för patient."
      """
      Identifierare för patient.
      RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
      Delelement enligt TKB:
      - id (string, 1..1): Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck.
      - type (string, 1..1): OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
      """
    * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare"
      """
      Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen
      RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
      """
      * authorTime 1..1 instant "Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem."
        """
        Tidpunkt vid vilken remissvaret skapades eller senast uppdaterades i remissmottagarens vårdinformationssystem.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalHSAId 0..1 Identifier "HSA-id för hälso-och sjukvårdspersonal"
        """
        HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalName 0..1 string "Namn på författaren"
        """
        Namn på författaren. Om tillgängligt ska detta anges.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning"
        """
        Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas, se referens [R 5]. Om kodverk saknas anges befattning i originalText.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
        - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
        - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
        - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
        - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
        - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
        """
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på"
        """
        Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
        RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 0..1.
        """
        * orgUnitHSAId 0..1 Identifier "HSA-id för organisationsenhet"
          """
          HSA-id för organisationsenhet. Om tillgängligt ska detta anges.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * orgUnitName 0..1 string "Namn på organisationsenhet (TKB: orgUnitname)"
          """
          Namn på organisationsenhet. Om tillgängligt ska detta anges.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
          """
          Telefon till organisationsenhet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitEmail 0..1 string "Epost till organisationsenhet."
          """
          Epost till organisationsenhet.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
          """
          Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering"
          """
          Text som anger namnet på plats eller ort för organisationens fysiska placering
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för Vårdenhet som hälso-och sjukvårdsperson är uppdragstagare för"
        """
        HSA-id för Vårdenhet som hälso-och sjukvårdsperson är uppdragstagare för. Ska anges om tillgänglig. [Regel 2]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för"
        """
        HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 2]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet"
      """
      Information om vem som signerat informationen i dokumentet. Signering = signering av remissvar. Information om vidimering sker i attributet attested i bodyn.
      RIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.
      """
      * signatureTime 1..1 instant "Tidpunkt för signering"
        """
        Tidpunkt för signering
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet. (TKB: legalAuthenticatorHSAid)"
        """
        HSA-id för person som signerat dokumentet.
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * legalAuthenticatorName 0..1 string "Namnen i klartext för signerande person"
        """
        Namnen i klartext för signerande person
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * legalAuthenticatorRoleCode 0..0 string "Ska ej anges."
        """
        Ska ej anges.
        RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
        """
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient"
      """
      Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
      RIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.
      """
    * careContactId 0..1 string "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet"
      """
      Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet.
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * nullified 0..0 string "Ska ej anges."
      """
      Ska ej anges.
      RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
      """
    * nullifiedReason 0..0 string "Ska ej anges."
      """
      Ska ej anges.
      RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
      """
  * referralOutcomeBody 1..1 BackboneElement "referralOutcomeBody"
    """
    RIV-TA-typ: ReferralOutcomeBodyType. Kardinalitet i TKB: 1..1.
    """
    * referralOutcomeTypeCode 1..1 code "Anger typ av svar"
      """
      Anger typ av svar. / Giltiga koder: / SR, svar på remissfråga / SS, slutsvar på remissfråga
      RIV-TA-typ: referralOutcomeTypeCodeEnum. Kardinalitet i TKB: 1..1.
      """
    * referralOutcomeTitle 1..1 string "Text som beskriver vilken specialitet som utlåtandet gäller"
      """
      Text som beskriver vilken specialitet som utlåtandet gäller. Typen av specialitet som anlitats anges i text. / Exempel: / Patologi / Klinisk fysik / Logopedi
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * referralOutcomeText 1..1 string "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet."
      """
      Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet.
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * clinicalInformation 0..* BackboneElement "Klinisk information för remissvaret"
      """
      Klinisk information för remissvaret. Dessa kliniska data är direkt kopplat till svaret.
      RIV-TA-typ: ClinicalInformationType. Kardinalitet i TKB: 0..*.
      """
      * clinicalInformationCode 1..1 CodeableConcept "Kod för åtgärd"
        """
        Kod för åtgärd. / Koden anges i code. / Kodverkets OID i codeSystem.
        RIV-TA-typ: ClinicalInformationCodeType. Kardinalitet i TKB: 1..1.
        Delelement enligt TKB:
        - code (string, 1..1): Kod.
        - codeSystem (string, 1..1): Kod kan komma från kodverket ICD-10 (1.2.752.116.1.1.1.1.3) men andra kodverk kan  förekomma.
        """
      * clinicalInformationText 1..1 string "Beskrivning av klinisk information"
        """
        Beskrivning av klinisk information
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
    * act 0..* BackboneElement "Utförd åtgärd"
      """
      Utförd åtgärd
      RIV-TA-typ: ActType. Kardinalitet i TKB: 0..*.
      """
      * actId 0..1 string "Åtgärdens identitet som är unik inom det lokala avsändande systemet"
        """
        Åtgärdens identitet som är unik inom det lokala avsändande systemet
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * actCode 0..1 CodeableConcept "Kod för åtgärd"
        """
        Kod för åtgärd. / Koden anges i code. / Kodverkets OID anges i codeSystem.
        RIV-TA-typ: ActCodeType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 1..1): Nullvärde är tillåtet om kod ej är tillgänglig, och åtgärdskodstext ska då skrivas i `<actText>`.
        - codeSystem (string, 1..1): Lämpliga kodverk kan vara: KVÅ (1.2.752.116.1.3.2.1.4) men andra kodverk kan förekomma.
        """
      * actText 1..1 string "Text som anger namnet på den kod som anges i attributet åtgärdskod"
        """
        Text som anger namnet på den kod som anges i attributet åtgärdskod. Beskrivning av åtgärd anges här om ingen kod har angetts i attributet åtgärdskod.
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
      * actTime 0..1 instant "Tidpunkt då åtgärd genomfördes"
        """
        Tidpunkt då åtgärd genomfördes
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.
        """
      * actResult 0..* BackboneElement "Resultat av åtgärd"
        """
        Resultat av åtgärd. Data i form av bifogade bilder eller liknande
        RIV-TA-typ: MultimediaType. Kardinalitet i TKB: 0..*.
        """
        * actResultId 0..0 string "Ska ej anges. (RIV-TA: id)"
          """
          Ska ej anges.
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
        * mediaType 1..1 code "Typ av multimedia"
          """
          Typ av multimedia
          RIV-TA-typ: MediaTypeEnum. Kardinalitet i TKB: 1..1.
          """
        * mediaType from MediaTypeVS (required)
        * actResultValue 0..1 base64Binary "Value är binärdata som representerar objektet (RIV-TA: value)"
          """
          Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges.
          RIV-TA-typ: base64Binary. Kardinalitet i TKB: 0..1.
          """
        * reference 0..1 uri "Referens till extern bild i form av en URL"
          """
          Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges.
          RIV-TA-typ: anyURI. Kardinalitet i TKB: 0..1.
          """
        * obeys getreferraloutcome-actresult-value-xor-reference
    * attested 0..1 BackboneElement "Information om vidimering av enskild utförd åtgärd med tillhörande resultat"
      """
      Information om vidimering av enskild utförd åtgärd med tillhörande resultat. Finns attester är åtgärden vidimerad. Med vidimerat menas att information om åtgärden har lästs och den som läst har tagit ansvar.
      RIV-TA-typ: AttestedType. Kardinalitet i TKB: 0..1.
      """
      * attestedTime 1..1 instant "Tidpunkten för vidimering"
        """
        Tidpunkten för vidimering
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * attesterHSAId 0..1 Identifier "HSA-id för person som vidimerat"
        """
        HSA-id för person som vidimerat
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * attesterName 0..1 string "Namn på person som vidimerat"
        """
        Namn på person som vidimerat
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
    * referral 1..1 BackboneElement "Information om den vårdbegäran som ligger till grund för svaret"
      """
      Information om den vårdbegäran som ligger till grund för svaret
      RIV-TA-typ: ReferralType. Kardinalitet i TKB: 1..1.
      """
      * referralId 1..1 string "Remissens identitet som är unik inom det lokala avsändade systemet"
        """
        Remissens identitet som är unik inom det lokala avsändade systemet
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
      * referralReason 1..1 string "Text som anger aktuell frågeställning."
        """
        Text som anger aktuell frågeställning.
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
      * referralTime 0..1 instant "Tid då vårdbegäran framställdes."
        """
        Tid då vårdbegäran framställdes.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.
        """
      * referralAuthor 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, ned"
        """
        Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallas författare.
        RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
        """
        * authorTime 1..1 instant "Tidpunkt då vårdbegäran registrerades i systemet."
          """
          Tidpunkt då vårdbegäran registrerades i systemet.
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
          """
        * healthcareProfessionalHSAId 0..1 Identifier "HSA-id för hälso-och sjukvårdspersonal"
          """
          HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalName 0..1 string "Namn på författaren"
          """
          Namn på författaren. Om tillgängligt ska detta anges.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning"
          """
          Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Se referens [R 5]. Om kodverk saknas anges befattning i originalText.
          RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
          Delelement enligt TKB:
          - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
          - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
          - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
          - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
          - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
          - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
          """
        * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på"
          """
          Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
          RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 0..1.
          """
          * orgUnitHSAId 0..1 Identifier "HSA-id för organisationsenhet"
            """
            HSA-id för organisationsenhet. Om tillgängligt ska detta anges.
            RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
            """
          * orgUnitName 0..1 string "Namn på organisationsenhet (TKB: orgUnitname)"
            """
            Namn på organisationsenhet. Om tillgängligt ska detta anges.
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
          * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
            """
            Telefon till organisationsenhet
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
          * orgUnitEmail 0..1 string "Epost till organisationsenhet."
            """
            Epost till organisationsenhet.
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
          * orgUnitAddress 0..1 string "Postadress till organisationsenhet"
            """
            Postadress till organisationsenhet. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
          * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering"
            """
            Text som anger namnet på plats eller ort för organisationens fysiska placering
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
        * healthcareProfessionalCareUnitHSAId 0..0 string "Ska ej anges."
          """
          Ska ej anges.
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
        * healthcareProfessionalCareGiverHSAId 0..0 string "Ska ej anges."
          """
          Ska ej anges.
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
      * careContactId 0..1 string "Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet"
        """
        Identitet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet. Detta ID kan användas för att genom tjänstekontaktet GetCareContacts (annan tjänstedomän) hämta kompletterandekontaktinformation.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej."
  """
  Innehåller information om begäran gick bra eller ej.
  RIV-TA-typ: ResultType. Kardinalitet i TKB: 1..1.
  """
  * resultCode 1..1 code "Kan endast vara OK, INFO eller ERROR"
    """
    Kan endast vara OK, INFO eller ERROR
    RIV-TA-typ: ResultCodeEnum. Kardinalitet i TKB: 1..1.
    """
  * resultCode from ResultCodeVS (required)
  * errorCode 0..1 code "Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information."
    """
    Sätts endast om resultCode är ERROR, se kapitel 4.4 för mer information.
    RIV-TA-typ: ErrorCodeEnum. Kardinalitet i TKB: 0..1.
    """
  * errorCode from ErrorCodeVS (required)
  * subCode 0..1 string "Inga subkoder är specificerade. (TKB: subcode)"
    """
    Inga subkoder är specificerade.
    RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
    """
  * logId 1..1 string "En UUID som kan användas vid felanmälan för att användas vid felsökning av producent."
    """
    En UUID som kan användas vid felanmälan för att användas vid felsökning av producent.
    RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
    """
  * message 0..1 string "En beskrivande text som kan visas för användaren."
    """
    En beskrivande text som kan visas för användaren.
    RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
    """

Invariant: getreferraloutcome-actresult-value-xor-reference
Description: "actResult: ett och endast ett av value och reference ska anges."
Expression: "actResultValue.exists() xor reference.exists()"
Severity: #error
