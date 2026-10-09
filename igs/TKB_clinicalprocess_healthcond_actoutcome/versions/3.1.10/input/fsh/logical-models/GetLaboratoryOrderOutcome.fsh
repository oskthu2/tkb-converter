// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetLaboratoryOrderOutcome 3.1 (avsnitt 7.3)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetLaboratoryOrderOutcome
Id: getlaboratoryorderoutcome
Title: "GetLaboratoryOrderOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetLaboratoryOrderOutcome 3.1
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetLaboratoryOrderOutcomeResponder:3).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.3.
"""
Characteristics: #can-be-target

* ^version = "3.1"
* laboratoryOrderOutcome 0..* BackboneElement "Returnerar en patients laboratoriesvar."
  """
  Returnerar en patients laboratoriesvar.
  RIV-TA-typ: LaboratoryOrderOutcomeType. Kardinalitet i TKB: 0..*.
  """
  * laboratoryOrderOutcomeHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
    """
    Innehåller basinformation om dokumentet
    RIV-TA-typ: PatientSummaryHeaderType. Kardinalitet i TKB: 1..1.
    """
    * documentId 1..1 string "Unik identifierare för undersökningsresultatet"
      """
      Unik identifierare för undersökningsresultatet. Identitet ska vara unik inom källsystemet / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * sourceSystemHSAId 1..1 Identifier "HSAid för det system som dokumentet är skapat i."
      """
      HSAid för det system som dokumentet är skapat i.
      RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
      """
    * documentTitle 0..0 string "Ska ej anges."
      """
      Ska ej anges.
      RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
      """
    * documentTime 1..1 instant "Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem"
      """
      Tidpunkten då laboratoriesvaret inkom till beställarens vårdinformationssystem
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
      """
    * patientId 1..1 Identifier "Id för patienten."
      """
      Id för patienten.
      RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
      Delelement enligt TKB:
      - id (string, 1..1): Sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.
      - type (string, 1..1): Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
      """
    * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, ned"
      """
      Information om den hälso- och sjukvårdsperson som framställt vårdbegäran som ligger till grund för svaret, nedan kallad författare.
      RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
      """
      * authorTime 1..1 instant "Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet."
        """
        Tidpunkt vid vilken laboratoriesvaret skapades eller senast uppdaterades i laboratoriesystemet.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalHSAId 0..1 Identifier "Författarens HSA-id"
        """
        Författarens HSA-id
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalName 0..1 string "Namn på författaren"
        """
        Namn på författaren. Om tillgängligt ska detta anges.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning"
        """
        Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.
        - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
        - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
        - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
        - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
        - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
        """
      * healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som författaren är uppdragstagare på"
        """
        Den organisation som författaren är uppdragstagare på
        RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 1..1.
        """
        * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet."
          """
          HSA-id för organisationsenhet.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
          """
        * orgUnitName 1..1 string "Namnet på den organisation som författaren är uppdragstagare på (TKB: orgUnitname)"
          """
          Namnet på den organisation som författaren är uppdragstagare på
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
          """
          Telefon till organisationsenhet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitEmail 0..1 string "Epost till enhet"
          """
          Epost till enhet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitAddress 0..1 string "Postadress för den organisation som författaren är uppdragstagare på"
          """
          Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitLocation 0..1 string "Text som anger namnet påplats eller ort för organisationens fysiska placering"
          """
          Text som anger namnet påplats eller ort för organisationens fysiska placering
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för Vårdenhet"
        """
        HSA-id för Vårdenhet. Ska anges om tillgänglig. [Regel 1]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för"
        """
        HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. Ska anges om tillgänglig. [Regel 1]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet"
      """
      Information om vem som signerat informationen i dokumentet. Det är normalt laboratorieläkeren som signerar laboratoriesvar. / Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn.
      RIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.
      """
      * signatureTime 1..1 instant "Tidpunkt för signering av svaret."
        """
        Tidpunkt för signering av svaret.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet"
        """
        HSA-id för person som signerat dokumentet
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * legalAuthenticatorName 0..1 string "Namnen i klartext för signerande person."
        """
        Namnen i klartext för signerande person.
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
  * laboratoryOrderOutcomeBody 1..1 BackboneElement "laboratoryOrderOutcomeBody"
    """
    RIV-TA-typ: LaboratoryOrderOutcomeBodyType. Kardinalitet i TKB: 1..1.
    """
    * resultType 1..1 string "Text som anger vilken typ av svar som avses"
      """
      Text som anger vilken typ av svar som avses. / DEF = Definitivsvar / TILL = Tilläggssvar / Den senaste statusen är den som ska skickas med.
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * registrationTime 1..1 instant "Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då"
      """
      Tidpunkt då informationen om undersökningsresultatet lagrades i källsystemet.Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades.
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
      """
    * discipline 1..1 string "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från"
      """
      Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. / Tillåtet värde är "Klinisk kemi"
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * resultReport 0..1 string "Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet"
      """
      Text som beskriver det sammanfattande utlåtandet kring undersökningsresultatet
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * resultComment 0..1 string "Text som innehåller en kommentar avseende hela det lämnade svaret"
      """
      Text som innehåller en kommentar avseende hela det lämnade svaret
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * accountableHealthcareProfessional 0..1 BackboneElement "Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresult"
      """
      Information om den hälso-och sjukvårdspersonal som är ansvarig (”ansvarig labbläkare”) för undersökningsresultatet (svaret).
      RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 0..1.
      """
      * authorTime 1..1 instant "Tidpunkt då svaret skickas från laboratoriesystemet."
        """
        Tidpunkt då svaret skickas från laboratoriesystemet.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalHSAId 0..1 Identifier "hälso-och sjukvårdspersonens HSA-id"
        """
        hälso-och sjukvårdspersonens HSA-id
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalName 0..1 string "Namn på ansvarig hälso-och sjukvårdsperson"
        """
        Namn på ansvarig hälso-och sjukvårdsperson. Om tillgängligt ska detta anges.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om personens befattning"
        """
        Information om personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.
        - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
        - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
        - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
        - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges. Om displayName anges ska även code samt codeSystem anges.
        - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
        """
      * healthcareProfessionalOrgUnit 1..1 BackboneElement "Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på"
        """
        Den enhet som hälso-och sjukvårdspersonen är uppdragstagare på
        RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 1..1.
        """
        * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet."
          """
          HSA-id för organisationsenhet.
          RIV-TA-typ: HDAIdType. Kardinalitet i TKB: 1..1.
          """
        * orgUnitName 1..1 string "Namnet på den organisation som författaren är uppdragstagare på"
          """
          Namnet på den organisation som författaren är uppdragstagare på
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
          """
          Telefon till organisationsenhet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitEmail 0..1 string "Epost till enhet"
          """
          Epost till enhet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitAddress 0..1 string "Postadress för den organisation som författaren är uppdragstagare på"
          """
          Postadress för den organisation som författaren är uppdragstagare på
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
    * analysis 0..* BackboneElement "Information om analystjänster som ligger till grund för ett undersökningsresultat"
      """
      Information om analystjänster som ligger till grund för ett undersökningsresultat
      RIV-TA-typ: AnalysisType. Kardinalitet i TKB: 0..*.
      """
      * analysisId 1..1 Identifier "Unik identifierare för analystjänsten"
        """
        Unik identifierare för analystjänsten
        RIV-TA-typ: IIType. Kardinalitet i TKB: 1..1.
        Delelement enligt TKB:
        - root (string, 1..1): En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren.
        - extension (string, 0..1): En textsträng som tillsammans med root bildar en unik identifierare.
        """
      * analysisTime 0..1 Period "Tidsangivelse för åtgärdens utförande"
        """
        Tidsangivelse för åtgärdens utförande. Här anges tiden för provtagningen. / Om start eller end saknas, ska det vid tidsurval tolkas som att båda är satta till samma tidpunkt.
        RIV-TA-typ: TimePeriodType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - start (TimeStampType, 0..1): Periodens starttid. Minst ett av start och end ska anges.
        - end (TimeStampType, 0..1): Periodens sluttid. Minst ett av start och end ska anges.
        """
      * analysisCode 0..1 CodeableConcept "Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU"
        """
        Kod och klartext som anger vilken åtgärd som avses, enligt kodverket NPU. Ett av attributen analysisCode och analysisText ska anges.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 1..1): Kod från kodsystemet NPU.
        - codeSystem (string, 1..1): OID för NPU-kodsystemet (1.2.752.108.1).
        - displayName (string, 1..1): Kodens klartext.
        """
      * analysisText 0..1 string "Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU"
        """
        Text som anger vilken åtgärd som avses, om analysen ej finns kodad enligt NPU. Attributet åtgärdskod text används endast för svar som ej kan kodas enligt NPU. I åtgärdskod text anges endast analysens namn i klartext, dvs inga lokala koder. Ett av attributen analysisCode och analysisText ska anges.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * analysisStatus 0..1 string "Text som anger åtgärdens status"
        """
        Text som anger åtgärdens status. Då det är möjligt ska KV åtgärdsstatus följas. Exempel från KV åtgärdsstatus: / Planerad, Pågående, Avklarad
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * analysisComment 0..1 string "Text som innehåller en kommentar som avser den utförda analysen."
        """
        Text som innehåller en kommentar som avser den utförda analysen.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * specimen 0..1 string "Text som beskriver vilket typ av material som användes vid analysen"
        """
        Text som beskriver vilket typ av material som användes vid analysen. Ange provmaterial i klartext. Exempel: Plasma / Både provmaterial och lokalisation bör anges i klartext när så är lämpligt för aktuell undersökning. Exempel: Var höger fot".
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * method 0..1 string "Text som beskriver den metod som använts i analystjänsten."
        """
        Text som beskriver den metod som använts i analystjänsten.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * relationToAnalysis 0..* BackboneElement "Anger samband med annan utförd analystjänst."
        """
        Anger samband med annan utförd analystjänst.
        RIV-TA-typ: RelationToAnalysisType. Kardinalitet i TKB: 0..*.
        """
        * analysisId 1..1 Identifier "Unik identifierare för analystjänsten."
          """
          Unik identifierare för analystjänsten.
          RIV-TA-typ: IIType. Kardinalitet i TKB: 1..1.
          Delelement enligt TKB:
          - root (string, 1..1): En unik identifierare i form av en UID som garanterar global unikhet för instansidentifieraren. Root kan enskilt utgöra hela den unika identifieraren.
          - extension (string, 0..1): En textsträng som tillsammans med root bildar en unik identifierare.
          """
      * analysisOutcome 0..1 BackboneElement "Information om ett resultatet/utfallet av en analystjänst."
        """
        Information om ett resultatet/utfallet av en analystjänst.
        RIV-TA-typ: AnalysisOutcomeType. Kardinalitet i TKB: 0..1.
        """
        * outcomeValue 1..1 string "Det specifika värdet för resultatet/utfallet."
          """
          Det specifika värdet för resultatet/utfallet.
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * outcomeUnit 0..1 string "Text som anger i förekommande fall enheten för det angivna värdet"
          """
          Text som anger i förekommande fall enheten för det angivna värdet
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * observationTime 0..1 instant "Tidpunkt då iakttagelsen av resultatet gjordes"
          """
          Tidpunkt då iakttagelsen av resultatet gjordes
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.
          """
        * pathologicalFlag 1..1 boolean "Kod som anger om resultatet ligger utanför referensintervall"
          """
          Kod som anger om resultatet ligger utanför referensintervall. Sant = Ja, resultatet ligger utanför referens-intervall / Falskt = Nej, resultatet ligger inte utanför referens-intervall.
          RIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.
          """
        * outcomeDescription 0..1 string "Text som innehåller en kommentar avseende resultatet/utfallet."
          """
          Text som innehåller en kommentar avseende resultatet/utfallet.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * referenceInterval 0..1 string "Text som innehåller det referensintervall som använts i analysen."
          """
          Text som innehåller det referensintervall som använts i analysen.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * referencePopulation 0..1 string "Text som beskriver den population som referensintervallet gäller för."
          """
          Text som beskriver den population som referensintervallet gäller för.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * attested 0..1 BackboneElement "Information om vidimering av enskild analys med tillhörande resultat"
        """
        Information om vidimering av enskild analys med tillhörande resultat. Finns attested är analysen vidimerad. Med vidimerad menas att information om analysen har lästs och den som läst har tagit ansvar.
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
    * order 1..1 BackboneElement "Information om en vårdbegäran som ligger till grund för svaret"
      """
      Information om en vårdbegäran som ligger till grund för svaret
      RIV-TA-typ: OrderType. Kardinalitet i TKB: 1..1.
      """
      * orderId 1..1 string "Unik identifierare för laboratorieremiss"
        """
        Unik identifierare för laboratorieremiss. Om laboratorieremiss (och således även unik identifierare) saknas, exempelvis då analys utförts på vårdavdelning anges en tom sträng.
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
      * orderReason 0..1 string "Text som anger aktuell frågeställning."
        """
        Text som anger aktuell frågeställning.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
* result 1..1 BackboneElement "Innehåller information om begäran gick bra eller ej."
  """
  Innehåller information om begäran gick bra eller ej.
  RIV-TA-typ: ResultType. Kardinalitet i TKB: 1..1.
  """
  * resultCode 1..1 code "Kan endast vara OK, INFO eller ERROR."
    """
    Kan endast vara OK, INFO eller ERROR.
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
