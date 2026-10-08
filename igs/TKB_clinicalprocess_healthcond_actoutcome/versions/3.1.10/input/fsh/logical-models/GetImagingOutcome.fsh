// Genererad från TKB clinicalprocess:healthcond:actoutcome 3.1.10 (Bitbucket-tagg 3.1.10)
// Kontrakt: GetImagingOutcome 1.0 (avsnitt 7.4)
// Genererad: 2026-10-08 ur fältregeltabellen i TKB:n

Logical: GetImagingOutcome
Id: getimagingoutcome
Title: "GetImagingOutcome"
Description: """
  Logisk modell för tjänstekontraktet GetImagingOutcome 1.0
  (RIV-TA urn:riv:clinicalprocess:healthcond:actoutcome:GetImagingOutcomeResponder:1).
  Representerar svarets (response) informationsstruktur enligt fältreglerna i TKB 3.1.10, avsnitt 7.4.
"""
Characteristics: #can-be-target

* ^version = "1.0"
* imagingOutcome 0..* BackboneElement "De Bild-resultat(dokument) som matchar begäran."
  """
  De Bild-resultat(dokument) som matchar begäran.
  RIV-TA-typ: ImagingOutcomeType. Kardinalitet i TKB: 0..*.
  """
  * imagingOutcomeHeader 1..1 BackboneElement "Innehåller basinformation om dokumentet"
    """
    Innehåller basinformation om dokumentet
    RIV-TA-typ: PatientSummaryHeaderType. Kardinalitet i TKB: 1..1.
    """
    * documentId 1..1 string "Dokumentets identitet som är unik inom källsystemet"
      """
      Dokumentets identitet som är unik inom källsystemet. / Identifieraren ska vara konsistent och beständigt mellan olika majorversioner av ett kontrakt. Ett exempel på detta är att en vårdkontakt ska ha samma identifierare i majorversion 3 och 4 av ett tjänstekontrakt för att läsa vårdkontakter. / Identifieraren ska vara konsistent och beständigt mellan olika kontrakt. Ett exempel på detta är att samma remiss-identitet ska användas i ett tjänstekontrakt för att läsa remisser, samt tjänstekontraktet som läser remissvar som refererar till den ursprungliga remissen.
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * sourceSystemHSAId 1..1 Identifier "HSA-id för det system som dokumentet är skapat i."
      """
      HSA-id för det system som dokumentet är skapat i.
      RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
      """
    * documentTitle 0..1 string "Titel som beskriver den information som sänds i dokumentet."
      """
      Titel som beskriver den information som sänds i dokumentet.
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * documentTime 0..1 instant "Händelsetidpunkt, om sådan finns"
      """
      Händelsetidpunkt, om sådan finns. Tidpunkten bör vara då undersökningen gjordes inte när bilden skapades (t.ex. skannad bild).
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.
      """
    * patientId 1..1 Identifier "Identifierare för patient."
      """
      Identifierare för patient.
      RIV-TA-typ: PersonIdType. Kardinalitet i TKB: 1..1.
      Delelement enligt TKB:
      - id (string, 1..1): Identiteten enligt den identitetstyp (type) som angivits. Anges med 12 tecken utan bindestreck.
      - type (string, 1..1): OID för typ av identifierare. För personnummer ska Skatteverkets personnummer (1.2.752.129.2.1.3.1). För samordningsnummer ska Skatteverkets samordningsnummer (1.2.752.129.2.1.3.3). För reservnummer används lokalt definierade reservnummer, exempelvis SLL reservnummer (1.2.752.97.3.1.3)
      """
    * accountableHealthcareProfessional 1..1 BackboneElement "Ansvarig hälso- och sjukvårdsperson"
      """
      Ansvarig hälso- och sjukvårdsperson. Ansvarig för undersökningsresultatet. Avser person som är ansvarig för det samlade dokumentet.
      RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
      """
      * authorTime 1..1 instant "Tidpunkt då dokumentet skapades"
        """
        Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * healthcareProfessionalHSAId 0..1 Identifier "HSA-id för hälso-och sjukvårdspersonal"
        """
        HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalName 0..1 string "Namn på hälso-och sjukvårdspersonal"
        """
        Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om ansvarige personens befattning"
        """
        Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. Om kodverk saknas anges befattning i originalText.
        RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
        Delelement enligt TKB:
        - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
        - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
        - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
        - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
        - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
        - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
        """
      * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på"
        """
        Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
        RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 0..1.
        """
        * orgUnitHSAId 0..1 Identifier "HSA-id för organisationsenhet"
          """
          HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * orgUnitName 0..1 string "Namn på organisationsenhet"
          """
          Namn på organisationsenhet. Om tillgängligt ska detta anges.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet."
          """
          Telefon till organisationsenhet.
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
        * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering."
          """
          Text som anger namnet på plats eller ort för organisationens fysiska placering.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för informationsägande vårdenhet (pdl-ansvar)"
        """
        HSA-id för informationsägande vårdenhet (pdl-ansvar). Ska anges om tillgänglig. [Regel 2]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för informationsägande vårdgivare (pdl-ansvar)"
        """
        HSA-id för informationsägande vårdgivare (pdl-ansvar). Ska anges om tillgänglig. [Regel 2]
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
    * legalAuthenticator 0..1 BackboneElement "Information om vem som signerat informationen i dokumentet"
      """
      Information om vem som signerat informationen i dokumentet. Det är normalt radiologen som signerar bilddiagnostiska svar. Signering = signering av remissvar. Vidimering anges i attributet attested i bodyn.
      RIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.
      """
      * signatureTime 1..1 instant "Tidpunkt för signering."
        """
        Tidpunkt för signering.
        RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
        """
      * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som signerat dokumentet"
        """
        HSA-id för person som signerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig
        RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
        """
      * legalAuthenticatorName 0..1 string "Namnen i klartext för signerande person."
        """
        Namnen i klartext för signerande person.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * legalAuthenticatorRoleCode 0..0 string "Ska ej anges"
        """
        Ska ej anges
        RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
        """
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient"
      """
      Anger om information får delas till patient. Värdet sätts i sådant fall till true, i annat fall till false.
      RIV-TA-typ: boolean. Kardinalitet i TKB: 1..1.
      """
    * careContactId 0..1 string "Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet"
      """
      Identitetet för den hälso-och sjukvårdskontakt som föranlett den information som omfattas av dokumentet. Identiteten är unik inom källsystemet
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * nullified 0..1 boolean "Anger om dokumentet makulerats i källsystemet"
      """
      Anger om dokumentet makulerats i källsystemet. Sätts i så fall till true annars false. Används bl.a. i statistik-/rapportuttag med hjälp av tjänstekontrakten.
      RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
      """
    * nullifiedReason 0..1 string "Anger orsak till makulering"
      """
      Anger orsak till makulering
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
  * imagingOutcomeBody 1..1 BackboneElement "imagingOutcomeBody"
    """
    RIV-TA-typ: ImagingOutcomeBodyType. Kardinalitet i TKB: 1..1.
    """
    * examinationSpeciality 0..1 CodeableConcept "Undersökningstyp"
      """
      Undersökningstyp. Bör anges med kod enligt SNOMED. / Text som beskriver vilken specialitet som utlåtandet gäller.Exempel: / Typen av specialitet som anlitats anges i text Exempel: Patologi, Klinisk fysiologi, Logopedi
      RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
      """
    * typeOfResult 1..1 code "Svarstyp"
      """
      Svarstyp. / PREL = Preliminärsvar, denna typ är ny och finns ej i NPÖ:s riv-specifikation. / DEF = Definitivsvar, ett svar som har kommit tillbaka till beställaren från utföraren. / TILL = Tilläggssvar, kan avse två typer av svar: / Det fynd som gjorts enligt beställd undersökning, och som beskrivs i definitivsvaret, var så intressant att ytterligare undersökningar gjorts och svaret således behöver kompletteras. / Slutsvaret behöver av någon anledning korrigeras, och skickas således i ett tilläggssvar. / DEF sätts som förvalt värde. Den senaste statusen är den som ska skickas med.
      RIV-TA-typ: TypeOfResultCodeEnum. Kardinalitet i TKB: 1..1.
      """
    * typeOfResult from TypeOfResultCodeVS (required)
    * resultTime 1..1 instant "Svarstidpunkt"
      """
      Svarstidpunkt. Tidpunkt då svar skickas till framställaren av vårdbegäran.
      RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
      """
    * resultReport 1..1 string "Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet"
      """
      Text som beskriver det sammanfattade utlåtandet kring undersökningsresultatet
      RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
      """
    * resultComment 0..1 string "Kommentar till det sammanfattande utlåtandet"
      """
      Kommentar till det sammanfattande utlåtandet
      RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
      """
    * radiationDose 0..* Quantity "Ett dosvärde som härrör till undersökningen"
      """
      Ett dosvärde som härrör till undersökningen. / Dosen kan anges på flera olika sätt (t.ex. som effektiv dos i Sv) eller som KAP. Den totala dosen som härrör till underökningen är summan av alla redovisade radiationDose. Enheten ska vara SI-enhet (eller kombination av sådana). (För KAP ska värdet räknas om till Gy*m² istället för Gy*cm².)
      RIV-TA-typ: PQType. Kardinalitet i TKB: 0..*.
      """
    * patientData 0..1 BackboneElement "Ytterligare information om patienten med relevans för bedömningen"
      """
      Ytterligare information om patienten med relevans för bedömningen. Kan typiskt anges i samband med givande av strukturerad bild-information enligt nedan
      RIV-TA-typ: PatientDataType. Kardinalitet i TKB: 0..1.
      """
      * patientWeight 0..1 Quantity "Patientens vikt i kgvid undersökningstillfället."
        """
        Patientens vikt i kgvid undersökningstillfället.
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
      * patientLength 0..1 Quantity "Patientens längd i cm vid undersökningstillfället."
        """
        Patientens längd i cm vid undersökningstillfället.
        RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
        """
    * imageRecording 0..* BackboneElement "Beskrivning av bild-tagning(ar)"
      """
      Beskrivning av bild-tagning(ar). Bild(er) tas som en eller flera tagningar (noll tillåts i fall då tillgång till bild saknas, utan endast (remiss och) sammanfattande utlåtande finns). / En bildtagning kan i sin tur ha flera bilder
      RIV-TA-typ: ImageRecordingType. Kardinalitet i TKB: 0..*.
      """
      * recordingId 0..1 Identifier "Id för Bild-tagningen som är unikt inom källsystemet."
        """
        Id för Bild-tagningen som är unikt inom källsystemet.
        RIV-TA-typ: IIType. Kardinalitet i TKB: 0..1.
        """
      * examinationActivity 1..1 CodeableConcept "Åtgärdskod för utförd typ av Bild"
        """
        Åtgärdskod för utförd typ av Bild. KRÅ91-kod eller i förekommande fall annat kodverk. Om inget gemensamt kodverk används, anges åtgärdsbeskrivning i originalText. (not. I npö rivspec saknas angivande av typ av övrig bilddiagnostik vilket är en brist eftersom uppföljning av olika slags bilder görs)
        RIV-TA-typ: CVType. Kardinalitet i TKB: 1..1.
        """
      * examinationTimePeriod 1..1 Period "Tidpunkt då Bild-insamlingen startar och slutar"
        """
        Tidpunkt då Bild-insamlingen startar och slutar
        RIV-TA-typ: TimePeriodType. Kardinalitet i TKB: 1..1.
        """
      * examinationStatus 0..1 code "Text som anger åtgärdens status"
        """
        Text som anger åtgärdens status. Kommer från KV åtgärdsstatus i V-TIM 1.0. Tillåtna värden är: Initierad, Planerad (bevakad), Tidbokad, Uppskjuten, Annullerad, Pågående, Avvakta, Avbruten, Avklarad, Inaktuell, Makulerad.
        RIV-TA-typ: ExaminationStatusCodeEnum. Kardinalitet i TKB: 0..1.
        """
      * examinationStatus from ExaminationStatusCodeVS (required)
      * examinationUnit 0..1 string "Text som anger vilken typ av labenhet som undersökningsresultatet härrör från"
        """
        Text som anger vilken typ av labenhet som undersökningsresultatet härrör från. T ex MR-lab, CT inom bild. (not. Generaliserad från npö riv-spec för b&f undersökningar)
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * accountableHealthcareProfessional 0..1 BackboneElement "Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället"
        """
        Hälso- och sjukvårdsperson som är ansvarig för informationen som härstammar från insamlingstillfället. Den person som har den fysiska kontakten med patienten vid insamlandet av data.
        RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 0..1.
        """
        * authorTime 1..1 instant "Tidpunkt då dokumentet skapades"
          """
          Tidpunkt då dokumentet skapades. Det är den senaste tidpunkten då informationen uppdaterats i systemet som ska finnas här i de fall informationen har ändrats efter det att den skapades. Registreringstidpunkt i NPÖ riv-spec 2.2.0 avsnitt 5.3 / Attributet sätts till detsamma som examinationTimePeriod.end, eller .start i de fall som inget .end finns
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
          """
        * healthcareProfessionalHSAId 0..1 Identifier "HSA-id för hälso-och sjukvårdspersonal"
          """
          HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalName 0..1 string "Namn på hälso-och sjukvårdspersonal"
          """
          Namn på hälso-och sjukvårdspersonal. Om tillgängligt ska detta anges.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om ansvarige personens befattning"
          """
          Information om ansvarige personens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4), se referens [R 5]. / Om kodverk saknas anges befattning i originalText.
          RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
          Delelement enligt TKB:
          - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
          - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
          - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
          - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
          - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
          - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText. / Om originalText anges ska inget annat värde i healthcareProfessionalRoleCode anges.
          """
        * healthcareProfessionalOrgUnit 0..1 BackboneElement "Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på"
          """
          Den organisation som angiven hälso-och sjukvårdsperson är uppdragstagare på. Om tillgängligt ska detta anges.
          RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 0..1.
          """
          * orgUnitHSAId 0..1 Identifier "HSA-id för organisationsenhet"
            """
            HSA-id för organisationsenhet. Om tillgängligt ska detta anges. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
            RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
            """
          * orgUnitName 0..1 string "Namn på organisationsenhet"
            """
            Namn på organisationsenhet. Om tillgängligt ska detta anges.
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
          * orgUnitTelecom 0..1 string "Telefon till organisationsenhet."
            """
            Telefon till organisationsenhet.
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
          * orgUnitLocation 0..1 string "Text som anger namnet på plats eller ort för organisationens fysiska placering."
            """
            Text som anger namnet på plats eller ort för organisationens fysiska placering.
            RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
            """
        * healthcareProfessionalCareUnitHSAId 0..0 string "Ska ej anges"
          """
          Ska ej anges
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
        * healthcareProfessionalCareGiverHSAId 0..0 string "Ska ej anges"
          """
          Ska ej anges
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
      * numberOfImages 0..1 integer "Det totala antalet bilder i bildtagningen"
        """
        Det totala antalet bilder i bildtagningen
        RIV-TA-typ: int. Kardinalitet i TKB: 0..1.
        """
      * modalityData 0..1 BackboneElement "Information om bild-utrustningen som använts"
        """
        Information om bild-utrustningen som använts
        RIV-TA-typ: ModalityDataType. Kardinalitet i TKB: 0..1.
        """
        * typeOfModality 0..1 string "Modalitetstyp för bildfångande utrustning."
          """
          Modalitetstyp för bildfångande utrustning.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * manufacturer 0..1 string "Producerande utrustnings tillverkare."
          """
          Producerande utrustnings tillverkare.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * modelName 0..1 string "Producerande utrustnings modellnamn."
          """
          Producerande utrustnings modellnamn.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * equipmentId 0..1 string "Identifierare för utrustningen"
          """
          Identifierare för utrustningen. Kan tex vara serienummer eller inventarienummer.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * softwareVersion 0..1 string "Text som anger tillverkarens version av den bildproducerande mjukvaran"
          """
          Text som anger tillverkarens version av den bildproducerande mjukvaran
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * lineFilter 0..0 string "Ska ej anges."
          """
          Ska ej anges.
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
          """
      * imageDicomData 0..* BackboneElement "DICOM-objekt"
        """
        DICOM-objekt. För att ge renderbar data som kan visas på det sätt som användaren önskar (med hjälp av en viewer/renderare) ges möjligheten att skicka med binärdata eller en URI till ett DICOM-objekt i någon av SOP-klasserna för Bild. / Både imageDicomData och ImageStaticData kan, och om möjligt bör anges för att underlätta för konsument.
        RIV-TA-typ: DicomDataType. Kardinalitet i TKB: 0..*.
        """
        * dicomSOP 1..1 Identifier "SOP UID för DICOM-objektet"
          """
          SOP UID för DICOM-objektet. Beskriver vilken information som kan förväntas i datan (jmf. mediaType nedan för statisk bild). / T.ex. 1.2.840.10008.5.1.4.1.1.1.1 för digital x-ray for presentation
          RIV-TA-typ: IIType. Kardinalitet i TKB: 1..1.
          """
        * dicomValue 0..1 base64Binary "Binärdata som representerar objektet"
          """
          Binärdata som representerar objektet. Ett och endast ett av DicomValue och DicomReference ska anges.
          RIV-TA-typ: base64Binary. Kardinalitet i TKB: 0..1.
          """
        * dicomReference 0..1 uri "Referens till externt DICOM-objekt med åtkomst enligt WADO"
          """
          Referens till externt DICOM-objekt med åtkomst enligt WADO. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient
          RIV-TA-typ: anyURI. Kardinalitet i TKB: 0..1.
          """
      * imageStructuredData 0..* BackboneElement "Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil."
        """
        Strukturerad mätdata för bild-tagningen med statiskt bildobjekt eller referens till bildfil.
        RIV-TA-typ: ImageStructuredDataType. Kardinalitet i TKB: 0..*.
        """
        * aperture 0..1 Quantity "Anges som f/(enhetslöst)."
          """
          Anges som f/(enhetslöst).
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * exposureTime 0..1 Quantity "I sekunder"
          """
          I sekunder
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * imageCreationTime 0..1 instant "Tid då bilden skapats."
          """
          Tid då bilden skapats.
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 0..1.
          """
        * bodyPartExamined 0..1 CodeableConcept "Kroppsdel"
          """
          Kroppsdel. Bör anges med kod ur SNOMED CT (OID: 1.2.752.116.2.1.1). Om kodverk saknas kan kroppsdel anges i originalText.
          RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
          """
        * contrastAgentUsed 0..1 string "Kontrast som använts vid bildtagningen."
          """
          Kontrast som använts vid bildtagningen.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * magneticFieldStrength 0..1 Quantity "Magnetisk fältsyrka i T."
          """
          Magnetisk fältsyrka i T.
          RIV-TA-typ: PQType. Kardinalitet i TKB: 0..1.
          """
        * copyright 0..1 string "Copyright-ägare av bilden"
          """
          Copyright-ägare av bilden
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * imageData 1..1 BackboneElement "Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl"
          """
          Möjlighet att svara med en bild i något av de tillåtna formaten enligt HL7 multimediatyper (inkl. PDF).
          RIV-TA-typ: ImageDataType. Kardinalitet i TKB: 1..1.
          """
          * mediaType 1..1 code "Mediatyper enligt HL7 MediaType."
            """
            Mediatyper enligt HL7 MediaType.
            RIV-TA-typ: MediaTypeEnum. Kardinalitet i TKB: 1..1.
            """
          * mediaType from MediaTypeVS (required)
          * imageDataValue 0..1 base64Binary "Value är binärdata som representerar objektet (RIV-TA: value)"
            """
            Value är binärdata som representerar objektet. Ett och endast ett av value och reference ska anges.
            RIV-TA-typ: base64Binary. Kardinalitet i TKB: 0..1.
            """
          * reference 0..1 uri "Referens till extern bild i form av en URL"
            """
            Referens till extern bild i form av en URL. Ett och endast ett av value och reference ska anges. En tillverkarspecifik länk som är möjlig att via en säker anslutning visa i en webklient
            RIV-TA-typ: anyURI. Kardinalitet i TKB: 0..1.
            """
          * burnedInaAnnotations 0..1 boolean "True om patientdata finns i pixelinformationen. (TKB: burnedInAnnotations)"
            """
            True om patientdata finns i pixelinformationen.
            RIV-TA-typ: boolean. Kardinalitet i TKB: 0..1.
            """
          * obeys getimagingoutcome-imagedata-value-xor-reference
    * referral 0..1 BackboneElement "Information om den vårdbegäran(remiss) som ligger till grund för undersökningen och dess svar"
      """
      Information om den vårdbegäran(remiss) som ligger till grund för undersökningen och dess svar. Måste vara valfri eftersom tagning av Bild inte alltid remitteras
      RIV-TA-typ: ReferralType. Kardinalitet i TKB: 0..1.
      """
      * referralId 1..1 string "Remissens identitet som är unik inom det lokala avsändande systemet"
        """
        Remissens identitet som är unik inom det lokala avsändande systemet. Motsvarar vårdbegäran-id
        RIV-TA-typ: string. Kardinalitet i TKB: 1..1.
        """
      * referralReason 0..1 string "Text som anger frågeställningen"
        """
        Text som anger frågeställningen
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * anamnesis 0..1 string "Text som anger bakgrund till frågeställningen"
        """
        Text som anger bakgrund till frågeställningen
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * careContactId 0..1 string "Identitet för den hälso-och sjukvårdskontakt som föranlett vårdbegäran"
        """
        Identitet för den hälso-och sjukvårdskontakt som föranlett vårdbegäran. Identiteten är unik inom producernade system.
        RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
        """
      * accountableHealthcareProfessional 1..1 BackboneElement "Information om den hälso-och sjukvårdspersonal som framställt vårdbegäran, nedan kallad remittent."
        """
        Information om den hälso-och sjukvårdspersonal som framställt vårdbegäran, nedan kallad remittent.
        RIV-TA-typ: HealthcareProfessionalType. Kardinalitet i TKB: 1..1.
        """
        * authorTime 1..1 instant "Tid då vårdbegäran framställdes"
          """
          Tid då vårdbegäran framställdes
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
          """
        * healthcareProfessionalHSAId 0..1 Identifier "Remittentens HSA-id (TKB: healthcareProfessionalHSAid)"
          """
          Remittentens HSA-id. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalName 0..1 string "Namn på remittenten"
          """
          Namn på remittenten. Om tillgängligt ska detta anges.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * healthcareProfessionalRoleCode 0..1 CodeableConcept "Information om remittentens befattning"
          """
          Information om remittentens befattning. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas. Om kodverk saknas anges befattning i originalText.
          RIV-TA-typ: CVType. Kardinalitet i TKB: 0..1.
          Delelement enligt TKB:
          - code (string, 0..1): Befattningskod. Om code anges ska också codeSystem  samt displayName anges.
          - codeSystem (string, 0..1): Kodsystem för befattningskod. Om codeSystem anges ska också code samt displayName anges.
          - displayName (string, 0..1): Befattningskoden i klartext. Om separat displayName inte finns i producerande system ska samma värde som i code anges.
          - codeSystemName (string, 0..1): Namn på kodsystem för befattningskod.
          - codeSystemVersion (string, 0..1): Version på kodsystem för befattningskod.
          - originalText (string, 0..1): Om befattning är beskriven i ett lokalt kodverk utan OID, eller när kod helt saknas, kan en beskrivande text anges i originalText.
          """
        * healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som remittenten är uppdragstagare på"
          """
          Den organisation som remittenten är uppdragstagare på
          RIV-TA-typ: OrgUnitType. Kardinalitet i TKB: 1..1.
          """
          * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet"
            """
            HSA-id för organisationsenhet. (Enligt NPÖ riv-spec 2.2.0 avsnitt 4.1.6 beslutsregel: I de fall då HSA-id inte finns tillgängligt i systemet kan Orgnr + lokalt id anges.)
            RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 1..1.
            """
          * orgUnitName 1..1 string "Namnet på den organisation som remittenten är uppdragstagare på"
            """
            Namnet på den organisation som remittenten är uppdragstagare på
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
          * orgUnitAddress 0..1 string "Postadress för den organisation som remittenten är uppdragstagare på"
            """
            Postadress för den organisation som remittenten är uppdragstagare på
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
      * attested 0..1 BackboneElement "Information om den som vidimerat mottaget svar på vårdbegäran"
        """
        Information om den som vidimerat mottaget svar på vårdbegäran
        RIV-TA-typ: LegalAuthenticatorType. Kardinalitet i TKB: 0..1.
        """
        * signatureTime 1..1 instant "Tidpunkt för vidimering."
          """
          Tidpunkt för vidimering.
          RIV-TA-typ: TimeStampType. Kardinalitet i TKB: 1..1.
          """
        * legalAuthenticatorHSAId 0..1 Identifier "HSA-id för person som vidimerat dokumentet"
          """
          HSA-id för person som vidimerat dokumentet. HSA-id för hälso-och sjukvårdspersonal. Ska anges om tillgänglig.
          RIV-TA-typ: HSAIdType. Kardinalitet i TKB: 0..1.
          """
        * legalAuthenticatorName 0..1 string "Namnen i klartext för vidimerande person."
          """
          Namnen i klartext för vidimerande person.
          RIV-TA-typ: string. Kardinalitet i TKB: 0..1.
          """
        * legalAuthenticatorRoleCode 0..0 string "Ska ej anges"
          """
          Ska ej anges
          RIV-TA-typ: (ej angiven). Kardinalitet i TKB: 0..0.
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

Invariant: getimagingoutcome-imagedata-value-xor-reference
Description: "imageData: ett och endast ett av value och reference ska anges."
Expression: "imageDataValue.exists() xor reference.exists()"
Severity: #error
