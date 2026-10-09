// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetMaternityMedicalHistory 2.0 (avsnitt 7.2)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetMaternityMedicalHistory
Id: getmaternitymedicalhistory
Title: "GetMaternityMedicalHistory"
Description: """
  Logisk modell för tjänstekontraktet GetMaternityMedicalHistory 2.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetMaternityMedicalHistoryResponder:2).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.2.
"""
Characteristics: #can-be-target

* ^version = "2.0"
* maternityMedicalRecord 0..* BackboneElement "En moders mödravårdsjournal."
  """
  En moders mödravårdsjournal.
  RIV-TA-typ: MaternityMedicalRecordType. Kardinalitet i TKB: 0..*.
  """
  * maternityMedicalRecordHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet."
    """
    Innehåller basinformation om dokumentet.
    RIV-TA-typ: PatientSummaryHeaderType. Kardinalitet i TKB: 1..1.
    """
    * documentId 1..1 string "Dokumentets identitet som är unik inom källsystemet"
      """
      Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
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
    * documentTime 1..1 instant "Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten."
      """
      Första tidpunkten då denna journalinformation skapades hos tjänsteproducenten.
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
      """
    * patientId 1..1 Identifier "Id för modern"
      """
      Id för modern. / id sätts till patientens identifierare, anges med 12 siffror utan avskiljare. / Type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
      RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
      Delelement enligt TKB:
      - id (string, 1..1): Sätts till moderns identifierare. Anges med 12 tecken utan avskiljare.
      - type (string, 1..1): type sätts till OID för typ av identifierare. / För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). / För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). / För reservnummer används lokalt definierade reservnummet, exempelvis SLL reservnummer (1.2.752.97.3.1.3).
      """
    * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare"
      """
      Information om den hälso- och sjukvårdsperson som skapat informationen i dokumentet, nedan kallas författare. Vid uppdatering av tidigare skapade dokument avses den hälso- och sjukvårdsperson som senast uppdaterade informationen.
      RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
      """
      * authorTime 1..1 instant "Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten"
        """
        Tidpunkt vid vilken journalinformationen skapades eller senast uppdaterades hos tjänsteproducenten. I de fall då journalinformationen skapats i ett annat informationssystem (t.ex. laboratoriesystem eller annan remittents journalsystem) är det tidpunkten då journalinformationen ursprungligen skapades som ska anges.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalHSAId 1..1 Identifier "Författarens HSA-id."
        """
        Författarens HSA-id.
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalName 0..1 string "Författarens namn."
        """
        Författarens namn.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om författarens befattning"
        """
        Information om författarens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem samt displayName anges.
        - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
        - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
        - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
        - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
        - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
        """
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som författaren är uppdragstagare på."
        """
        Den organisation som författaren är uppdragstagare på.
        RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 0..1.
        """
        * orgUnitHSAId 1..1 Identifier "HSA-id för den organisation som författaren är uppdragstagare på."
          """
          HSA-id för den organisation som författaren är uppdragstagare på.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
          """
        * orgUnitName 1..1 string "Namnet på den organisation som författaren är uppdragstagare på."
          """
          Namnet på den organisation som författaren är uppdragstagare på.
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet."
          """
          Telefon till organisationsenhet.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitEmail 0..1 string "Epost till enhet."
          """
          Epost till enhet.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitAddress 0..1 string "Postadress för den organisation som författaren är uppdragstagare på"
          """
          Postadress för den organisation som författaren är uppdragstagare på. Skrivs på ett så naturligt sätt som möjligt, exempelvis: / ”Storgatan 12 / 468 91 Lilleby”
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering."
          """
          Text som anger namnet på plats eller ort för enhetens eller funktionens fysiska placering.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * healthcareProfessionalCareUnitHSAId 1..1 Identifier "HSA-id för Vårdenhet"
        """
        HSA-id för Vårdenhet. [Regel 1]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalCareGiverHSAId 1..1 Identifier "HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för"
        """
        HSA-id för vårdgivaren, som är vårdgivare för den enhet som författaren är uppdragstagare för. [Regel 1]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
        """
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet."
      """
      Information om vem som signerat informationen i dokumentet.
      RIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.
      """
      * signatureTime 1..1 instant "Tidpunkt för signering."
        """
        Tidpunkt för signering.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet."
        """
        HSA-id för person som signerat dokumentet.
        RIV-TA-typ: HSAIDType. Kardinalitet i TKB: 0..1.
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
    * nullified 0..0 string "Ska ej anges"
      """
      Ska ej anges
      RIV-TA-typ: string. Kardinalitet i TKB: 0..0.
      """
    * nullifiedReason 0..0 string "Ska ej anges"
      """
      Ska ej anges
      RIV-TA-typ: string. Kardinalitet i TKB: 0..0.
      """
  * maternityMedicalRecordBody 1..1 BackboneElement "Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord."
    """
    Kan bestå av antingen en registrationRecord, en pregnancyCheckupRecord eller en postDeliveryRecord.
    RIV-TA-typ: MaternityMedicalRecordBodyType. Kardinalitet i TKB: 1..1.
    """
    * registrationRecord 0..1 BackboneElement "Information som registreras vid inskrivningsbesöket."
      """
      Information som registreras vid inskrivningsbesöket.
      RIV-TA-typ: RegistrationRecordType. Kardinalitet i TKB: 0..1.
      """
      * lastMenstrualPeriod 0..1 date "Datum för senaste menstruation"
        """
        Datum för senaste menstruation
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * indicationPregnancy 0..1 date "Datum för graviditetsindikation"
        """
        Datum för graviditetsindikation
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * contraceptiveDiscontinued 0..1 date "Datum för när moder upphört med preventivtablett"
        """
        Datum för när moder upphört med preventivtablett
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * expectedDayOfDeliveryFromLastMenstrualPeriod 0..1 date "Beräknad förlossning enligt sista menstruation"
        """
        Beräknad förlossning enligt sista menstruation
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * expectedDayOfDeliveryFromUltrasoundScan 0..1 date "Beräknad förlossning enligt ultraljud"
        """
        Beräknad förlossning enligt ultraljud
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * expectedDayOfDeliveryFromEmbryonicTransfer 0..1 date "Beräknad förlossning enligt embryonik transfer"
        """
        Beräknad förlossning enligt embryonik transfer
        RIV-TA-typ: DateType. Kardinalitet i TKB: 0..1.
        """
      * length 0..1 Quantity "Längd vid inskrivning"
        """
        Längd vid inskrivning
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * weight 0..1 Quantity "Vikt vid inskrivning [massa]"
        """
        Vikt vid inskrivning [massa]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * bodyMassIndex 0..1 Quantity "BMI vid inskrivning [massa/yta]"
        """
        BMI vid inskrivning [massa/yta]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * infertility 0..1 decimal "Antal år med ofrivillig barnlöshet (decimaltal)"
        """
        Antal år med ofrivillig barnlöshet (decimaltal)
        RIV-TA-typ: decimal. Kardinalitet i TKB: 0..1.
        """
      * previousGravidityAndParity 0..* BackboneElement "Tidigare graviditeter och förlossningar"
        """
        Tidigare graviditeter och förlossningar
        RIV-TA-typ: PreviousGravidityAndParityType. Kardinalitet i TKB: 0..*.
        """
        * year 1..1 integer "År för tidigare graviditet eller förlossning"
          """
          År för tidigare graviditet eller förlossning
          RIV-TA-typ: int. Kardinalitet i TKB: 1..1.
          """
        * month 1..1 integer "Månad för tidigare graviditet eller förlossning"
          """
          Månad för tidigare graviditet eller förlossning
          RIV-TA-typ: int. Kardinalitet i TKB: 1..1.
          """
        * delivery 0..1 code "Graviditet förlossning enligt kodverk:"
          """
          Graviditet förlossning enligt kodverk:
          RIV-TA-typ: DeliveryCodeEnum. Kardinalitet i TKB: 0..1.
          """
        * delivery from DeliveryCodeVS (required)
        * healthcareFacility 0..1 string "Sjukhus"
          """
          Sjukhus
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * progress 0..1 string "Förlopp"
          """
          Förlopp
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * sex 0..1 code "Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: / 0 = okänt, / 1 = man, / 2 = kvin"
          """
          Kön, giltiga värden 0,1,2 och 9 enligt kodverk med OID 1.2.752.129.2.2.1.1: / 0 = okänt, / 1 = man, / 2 = kvinna, / 9 = ej tillämpligt
          RIV-TA-typ: SexCodeEnum. Kardinalitet i TKB: 0..1.
          """
        * sex from SexCodeVS (required)
        * weightOfChild 0..1 Quantity "Barnets vikt [massa]"
          """
          Barnets vikt [massa]
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * gestation 0..1 integer "Graviditetsvecka."
          """
          Graviditetsvecka.
          RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
          """
      * diseasesThrombosis 0..1 boolean "Trombos (true/false)"
        """
        Trombos (true/false)
        RIV-TA-typ: bool. Kardinalitet i TKB: 0..1.
        """
      * diseasesEndocineDiseases 0..1 boolean "Endokrina sjukdomar (true/false)"
        """
        Endokrina sjukdomar (true/false)
        RIV-TA-typ: bool. Kardinalitet i TKB: 0..1.
        """
      * diseasesRecurrentUrinaryTractInfections 0..1 boolean "Upprepade urinvägsinfektioner (true/false)"
        """
        Upprepade urinvägsinfektioner (true/false)
        RIV-TA-typ: bool. Kardinalitet i TKB: 0..1.
        """
      * diseasesDiabetesMellitus 0..1 boolean "Diabetes mellitus (true/false)"
        """
        Diabetes mellitus (true/false)
        RIV-TA-typ: bool. Kardinalitet i TKB: 0..1.
        """
      * medicationDuringPregnacy 0..* BackboneElement "Före inskrivning under graviditet: medicinering"
        """
        Före inskrivning under graviditet: medicinering
        RIV-TA-typ: MedicationType. Kardinalitet i TKB: 0..*.
        """
        * medicament 1..1 string "Preparat"
          """
          Preparat
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * dosage 0..1 string "Dosering i beskrivande text"
          """
          Dosering i beskrivande text
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * assessmentAtFirstContactStandardCare 0..1 boolean "Bedömning vid 1:a besök: basprogram (true/false)"
        """
        Bedömning vid 1:a besök: basprogram (true/false)
        RIV-TA-typ: bool. Kardinalitet i TKB: 0..1.
        """
    * pregnancyCheckupRecord 0..1 BackboneElement "Graviditetskontroll"
      """
      Graviditetskontroll
      RIV-TA-typ: PregnancyCheckupRecordType. Kardinalitet i TKB: 0..1.
      """
      * completeWeeksOfGestation 0..1 integer "Fullgångna graviditetsveckor"
        """
        Fullgångna graviditetsveckor
        RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
        """
      * weight 0..1 Quantity "Moderns vikt [massa]"
        """
        Moderns vikt [massa]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * symphysisFundalHeight 0..1 Quantity "Symfys-fundus mått [längd]"
        """
        Symfys-fundus mått [längd]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * haemoglobin 0..1 Quantity "Hb (Hemoglobin) [massa / volym]"
        """
        Hb (Hemoglobin) [massa / volym]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * bloodPressureSystolic 0..1 Quantity "Systoliskt blodtryck [tryck]"
        """
        Systoliskt blodtryck [tryck]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * bloodPressureDiastolic 0..1 Quantity "Diastoliskt blodtryck [tryck]"
        """
        Diastoliskt blodtryck [tryck]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * proteinuria 0..1 Quantity "Proteinuri - Protein i urinet [massa / volym] / Mängden protein ska alltså anges i g/l eller motsvarande"
        """
        Proteinuri - Protein i urinet [massa / volym] / Mängden protein ska alltså anges i g/l eller motsvarande. Använd INTE mätstickans kodning (0, 1+, 2+…)
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * glycosuria 0..1 Quantity "Glucosuri - Glucos i urinet [antal / volym] / Förväntad enhet är mmol/l"
        """
        Glucosuri - Glucos i urinet [antal / volym] / Förväntad enhet är mmol/l. Använd INTE mätstickans kodning (0, 1+, 2+…) / OBS! U på svenska men y på engelska (ICD10).
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * fetalPosition 0..* code "Fosterläge enligt kodverk: / 0 = head (huvud ) / 1 = breech (säte) / 2 = oblique (snedläge) / 3 = transverse ("
        """
        Fosterläge enligt kodverk: / 0 = head (huvud ) / 1 = breech (säte) / 2 = oblique (snedläge) / 3 = transverse (tvärläge)
        RIV-TA-typ: FetalPositionCodeEnum. Kardinalitet i TKB: 0..*.
        """
      * fetalPosition from FetalPositionCodeVS (required)
      * fetalPresentation 0..* code "Föregående fosterdel enligt kodverk: / 0= mobile (rörligt), / 1 = movable (ruckbart), / 2 = fixed (fix)"
        """
        Föregående fosterdel enligt kodverk: / 0= mobile (rörligt), / 1 = movable (ruckbart), / 2 = fixed (fix)
        RIV-TA-typ: FetalPresentationCodeEnum. Kardinalitet i TKB: 0..*.
        """
      * fetalPresentation from FetalPresentationCodeVS (required)
      * fetalHeartRate 0..* Quantity "Fosterljud, hjärtslag, ex"
        """
        Fosterljud, hjärtslag, ex. bpm [frekvens]
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..*.
        """
      * typeOfLeave 0..* code "Typ av ledighet enligt kodverk / 0 = Sjukskrivning, / 1 = Havandekapsledighet, / 2 = Föräldrarledighet"
        """
        Typ av ledighet enligt kodverk / 0 = Sjukskrivning, / 1 = Havandekapsledighet, / 2 = Föräldrarledighet
        RIV-TA-typ: TypeOfLeaveCodeEnum. Kardinalitet i TKB: 0..*.
        """
      * typeOfLeave from TypeOfLeaveCodeVS (required)
      * medicationSinceRegistration 0..* BackboneElement "Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”."
        """
        Läkemedel (även kostpreparat) som administrerats sedan registreringen / föregående ”checkup”.
        RIV-TA-typ: MedicationType. Kardinalitet i TKB: 0..*.
        """
        * medicament 1..1 string "Preparat"
          """
          Preparat
          RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
          """
        * dosage 0..1 string "Dosering i beskrivande text"
          """
          Dosering i beskrivande text
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
    * postDeliveryRecord 0..1 BackboneElement "Efterskötning"
      """
      Efterskötning
      RIV-TA-typ: PostDeliveryRecordType. Kardinalitet i TKB: 0..1.
      """
      * motherPostDeliveryRecord 1..1 BackboneElement "Efterskötningsjournal, moder"
        """
        Efterskötningsjournal, moder
        RIV-TA-typ: MotherPostDeliveryRecordType. Kardinalitet i TKB: 1..1.
        """
        * breastfeeding 0..1 boolean "Ammar (true/false)"
          """
          Ammar (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * bloodPressureSystolic 0..1 Quantity "Systoliskt blodtryck [tryck]"
          """
          Systoliskt blodtryck [tryck]
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * bloodPressureDiastolic 0..1 Quantity "Diastoliskt blodtryck [tryck]"
          """
          Diastoliskt blodtryck [tryck]
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * haemoglobin 0..1 Quantity "Haemoglobin, t.ex"
          """
          Haemoglobin, t.ex. g/L [massa / volym]
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * bodyTemperature 0..1 decimal "Kroppstemperatur"
          """
          Kroppstemperatur
          RIV-TA-typ: decimal. Kardinalitet i TKB: 0..1.
          """
        * scarsOK 0..1 boolean "Sår/bristningar/klipp utan anmärkning (true/false)"
          """
          Sår/bristningar/klipp utan anmärkning (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * sutureRemoved 0..1 boolean "Suturer borttagna (true/false)"
          """
          Suturer borttagna (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * perineumComfortable 0..1 boolean "Bäckenbotten utan anmärkning (true/false)"
          """
          Bäckenbotten utan anmärkning (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * vulvaVaginaPortioOK 0..1 boolean "vulvaVaginaPortio utan anmärkning (true/false)"
          """
          vulvaVaginaPortio utan anmärkning (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * uterusContracted 0..1 boolean "Uterus utan anmärkning (true/false)"
          """
          Uterus utan anmärkning (true/false)
          RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
          """
        * uterusNote 0..1 string "Kommentar till uterus med anmärkning"
          """
          Kommentar till uterus med anmärkning. Kan endast anges då uterusContracted = false
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * childPostDeliveryRecord 1..* BackboneElement "Efterskötningsjournal, för barn ur samma graviditet"
        """
        Efterskötningsjournal, för barn ur samma graviditet
        RIV-TA-typ: ChildPostDeliveryRecordTypeType. Kardinalitet i TKB: 1..*.
        """
        * ordinalNumber 1..1 integer "Ordningstal för barnet, med start på 1"
          """
          Ordningstal för barnet, med start på 1. Ju äldre barn desto lägre siffra.
          RIV-TA-typ: integer. Kardinalitet i TKB: 1..1.
          """
        * weight 0..1 Quantity "Barnets vikt [massa]"
          """
          Barnets vikt [massa]
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * apgarScore1 0..1 integer "Apgar (0..10) efter 1 minut"
          """
          Apgar (0..10) efter 1 minut
          RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
          """
        * apgarScore5 0..1 integer "Apgar (0..10) efter 5 minuter"
          """
          Apgar (0..10) efter 5 minuter
          RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
          """
        * apgarScore10 0..1 integer "Apgar (0..10) efter 10 minuter"
          """
          Apgar (0..10) efter 10 minuter
          RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
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
