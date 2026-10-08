// Genererad från TKB clinicalprocess:healthcond:basic 1.2.3 (Bitbucket-tagg 1.2.3, TKB-dokument version 1.2.1)
// Kontrakt: GetObservations v1.2 (GetObservationsResponder_1.2.xsd, clinicalprocess_healthcond_basic_1.2.xsd,
//           clinicalprocess_healthcond_basic_1.2_ext.xsd)
// Genererad: 2026-10-08

Invariant: getobservations-value-one-type
Description: "En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts ska anges i value (ValueANYType)."
Expression: "(cv.count() + pq.count() + ivlPq.count() + ts.count() + ivlTs.count()) = 1"
Severity: #error

Invariant: getobservations-ivlpq-bound
Description: "Minst ett av fälten low och high måste anges i ivl_pq."
Expression: "low.exists() or high.exists()"
Severity: #error

Invariant: getobservations-period-bound
Description: "Minst en av start och end måste vara angiven."
Expression: "start.exists() or end.exists()"
Severity: #error

Invariant: getobservations-participant-one-kind
Description: "Endast en av person, organisation, device och location får anges för en ytterligare deltagare."
Expression: "(person.count() + organisation.count() + device.count() + location.count()) <= 1"
Severity: #error

Invariant: getobservations-legalauthenticator-id-or-name
Description: "Regel 2.3: Minst ett av attributen LegalAuthenticator.id eller LegalAuthenticator.name ska anges."
Expression: "legalAuthenticatorId.exists() or legalAuthenticatorName.exists()"
Severity: #error

Invariant: getobservations-performer-careunit
Description: "Regel 2.1: careUnit ska endast anges då utföraren är hälso- och sjukvårdspersonal (performerRole.id angivet med HSA-id)."
Expression: "careUnit.exists() implies performerRoleId.exists()"
Severity: #warning

Invariant: getobservations-person-id-or-name
Description: "Om person.id inte anges måste person.name vara angiven (regel 2.1)."
Expression: "personId.exists() or personName.exists()"
Severity: #warning

Invariant: getobservations-status-not-used
Description: "TKB: status har kardinalitet 0..0 — denna version av specifikationen tillåter endast faktiskt utförda observationer (schemat tillåter 0..1)."
Expression: "observationStatus.empty()"
Severity: #warning

Logical: GetObservations
Id: getobservations
Title: "GetObservations"
Description: """
  Logisk modell för tjänstekontraktet GetObservations 1.2
  (RIV-TA urn:riv:clinicalprocess:healthcond:basic:GetObservationsResponder:1, elementet GetObservationsResponse).
  Representerar svarets informationsstruktur: grupper av observationer (observationGroup) som delar patient,
  utförare, signerare, ytterligare deltagare och källsystem. Meddelandemodellen V-MIM – Observationer
  (TKB avsnitt 5.1) motsvarar svarsmeddelandet.
"""
Characteristics: #can-be-target

* ^version = "1.2"
* observationGroup 0..* BackboneElement "Grupp av observationer som delar samma patient, utförare, signerare, deltagare och källsystem (ObservationGroupType)."
    """
    Denna nivå är framförallt till för att begränsa mängden redundant data i överföringen i de fall då flera
    observationer gjorts med samma medverkande (exempelvis mätning av systoliskt och diastoliskt blodtryck).
    Klassen är en teknisk optimering som inte speglas i NI 2015:1.
    """
  * patient 1..1 BackboneElement "Den patient som observationsgruppen avser (PatientType)."
    * patientId 1..1 Identifier "Id för patienten, 12 tecken utan avskiljare (IIType)."
        """
        - root: OID för typ av identifierare. Personnummer 1.2.752.129.2.1.3.1, samordningsnummer
          1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL reservnummer 1.2.752.97.3.1.3).
        - extension: personnummer/samordningsnummer/reservnummer.
        """
    * patientName 0..1 string "Personens namn."
    * dateOfBirth 1..1 date "Patientens födelseår, månad och dag. Ej personnummer. Format ÅÅÅÅMMDD (DateType)."
    * gender 0..1 CodeableConcept "Patientens kön (CVType). KV kön, OID 1.2.752.129.2.2.1.1."
        """
        Koder: 0 okänt, 1 man, 2 kvinna, 9 ej tillämpligt. Kodverket finns i [R9].
        """
  * performerRole 1..1 BackboneElement "Den som utfört observationerna inom gruppen (PerformerRoleType)."
    * obeys getobservations-performer-careunit
    * performerRoleId 0..1 Identifier "HSA-id för personen som utfört observationen (IIType). Regel 2.1."
        """
        Anges enbart om observationen utförts av hälso- och sjukvårdspersonal.
        root = 1.2.752.129.2.1.4.1 (HSA-katalogen), extension = HSA-id.
        """
    * performerRoleCode 1..1 CodeableConcept "Den roll som utföraren agerar i under observationen (CVType)."
    * person 0..1 BackboneElement "Den person som utfört observationen (PersonType). Regel 2.1."
        """
        Används då det finns behov av att beskriva egenskaper hos personen som inte beskrivs i performerRole
        (t.ex. namn på hälso- och sjukvårdspersonal), eller då observationen utförts av en person som inte
        klassas som hälso- och sjukvårdspersonal.
        """
      * obeys getobservations-person-id-or-name
      * personId 0..1 Identifier "Identifierare för personen (IIType)."
          """
          Anges endast om observationen utförts av person som INTE klassas som hälso- och sjukvårdspersonal.
          root: OID för personnummer (1.2.752.129.2.1.3.1), samordningsnummer (1.2.752.129.2.1.3.3) eller
          lokalt definierat reservnummer. extension: personnummer/samordningsnummer/reservnummer.
          """
      * personName 0..1 string "För- och efternamn i klartext. Regel 2.1."
    * careUnit 0..1 BackboneElement "PDL-vårdenhet och vårdgivare som observationen utförs på uppdrag av (CareUnitType). Regel 2.1, 2.5."
        """
        Ska endast anges då den person som utfört observationen är hälso- och sjukvårdspersonal.
        Krävs för spärrhantering, åtkomstkontroll samt loggning enligt PDL.
        """
      * careUnitId 1..1 Identifier "HSA-id för PDL-vårdenhet med medicinskt ansvar för observationen (IIType)."
      * careUnitName 0..1 string "Vårdenhetens namn."
      * careGiver 1..1 BackboneElement "Den vårdgivare som enheten är knuten till (CareGiverType)."
        * careGiverId 1..1 Identifier "HSA-id för vårdgivaren (IIType)."
        * careGiverName 0..1 string "Vårdgivarens namn."
  * legalAuthenticator 0..1 BackboneElement "Den som signerat observationerna inom gruppen (LegalAuthenticatorType). Regel 2.3."
      """
      En kompakt och specifik version av AdditionalParticipation; indirekt en Professionell aktör med
      deltagandetyp signerare enligt V-MIM.
      """
    * obeys getobservations-legalauthenticator-id-or-name
    * legalAuthenticatorId 0..1 Identifier "HSA-id för personen som signerat (IIType). root = 1.2.752.129.2.1.4.1."
    * signatureTime 1..1 BackboneElement "Tid för signeringen (PartialTimeStampType). Format ÅÅÅÅMMDDttmmss där klockslaget är frivilligt."
      * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
      * format from TimeStampTypeFormatVS (required)
      * timeValue 1..1 string "Tidpunkten, YYYY till YYYYMMDDhhmmss (PartialTimeStampValueType)."
    * legalAuthenticatorName 0..1 string "För- och efternamn i klartext för signerande person. Regel 2.3."
  * additionalParticipant 0..* BackboneElement "Övriga deltagare relaterade till observationerna inom gruppen (AdditionalParticipantType). Regel 2.2."
    * obeys getobservations-participant-one-kind
    * participantId 0..1 Identifier "HSA-id för ytterligare deltagare som är hälso- och sjukvårdspersonal (IIType)."
    * participationType 1..1 CodeableConcept "Typ av deltagande (CVType), t.ex. sekundär utförare/assistent."
        """
        codeSystemName, codeSystemVersion och displayName ska ej anges (0..0).
        """
    * participantRole 1..1 CodeableConcept "Den roll deltagaren agerar i (CVType), t.ex. anhörig eller vårdpersonal."
        """
        codeSystemName, codeSystemVersion och displayName ska ej anges (0..0).
        """
    * participationTime 0..1 BackboneElement "Deltagandetid om den inte överensstämmer med observationens (TimePeriodType)."
      * start 0..1 instant "Startdatum. Format ÅÅÅÅMMDDttmmss."
      * end 0..1 instant "Slutdatum. Format ÅÅÅÅMMDDttmmss."
    * person 0..1 BackboneElement "Deltagande övrig person (PersonType)."
      * personId 0..1 Identifier "Identifierare för personen (IIType)."
      * personName 0..1 string "För- och efternamn i klartext."
    * organisation 0..1 BackboneElement "Deltagande övrig organisation (OrganisationType)."
      * organisationId 0..1 Identifier "Id för organisation, vanligtvis HSA-id (root 1.2.752.129.2.1.4.1)."
      * organisationName 0..1 string "Organisationens namn."
    * device 0..1 BackboneElement "Deltagande utrustning (DeviceType)."
      * deviceId 0..1 Identifier "Identitetsbeteckning på en viss verklig instans av utrustning (IIType)."
      * deviceType 0..1 CodeableConcept "Typ av deltagande utrustning (CVType)."
      * model 0..1 BackboneElement "Modell för angiven utrustning (SCType)."
        * modelCode 0..1 CodeableConcept "Modellbeteckning (CVType). codeSystemVersion ska ej anges."
        * modelValue 0..1 string "Tillverkarens modellbeteckning i klartext; komplement eller i stället för modelCode."
    * location 0..1 BackboneElement "Deltagande plats (LocationType). Sammanslagning av roll och plats enligt V-MIM."
      * locationId 0..1 Identifier "HSA-id för platsen; anges om platsen är en vårdenhet (IIType)."
      * locationName 1..1 string "Namn på den plats där observationen har genomförts."
      * address 0..* BackboneElement "Adress till plats (AddressType)."
        * addressUse 0..1 code "Adressens användning (PostalAddressUseEnum). Den primära adressen anges utan use-kod."
        * addressUse from PostalAddressUseVS (required)
        * part 1..* BackboneElement "Adressdel (AddressPartType). Delarna listas i ordningen CAR, POB, SAL, ZIP, CTY, CNT, PRE, CPA."
          * partValue 1..1 string "Adressdelens värde."
          * partType 0..1 code "Typ av adressdel (AddressPartTypeEnum, baserad på ISO 21090)."
          * partType from AddressPartTypeVS (required)
      * electronicAddress 0..* BackboneElement "Elektronisk adress till plats (TelType)."
        * telUse 1..1 code "Typ av elektronisk adress (TelTypeEnum): voice, fax, data, sms."
        * telUse from TelTypeVS (required)
        * telValue 1..1 string "Elektronisk adress."
  * sourceSystem 1..1 BackboneElement "Källsystem som observationsgruppen lagras i (SourceSystemType)."
    * sourceSystemId 1..1 Identifier "HSA-id för källsystemet (IIType). root = 1.2.752.129.2.1.4.1."
  * observation 1..* BackboneElement "De observationer som ligger inom gruppen (ObservationType)."
    * obeys getobservations-status-not-used
    * observationId 1..1 Identifier "Unik identifierare för observationen (IIType)."
        """
        Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett kontrakt och
        mellan olika kontrakt. root: vårdgivarens HSA-id. extension: den inom vårdgivaren eller
        källsystemet unika identifieraren för observationen.
        """
    * observationType 1..1 CodeableConcept "NI 2015:1 Observation.typ — kod för typ av observation (CVType)."
        """
        Det som faktiskt är avsett, önskat eller observerat tillstånd dokumenteras i value. Exempelvis kan
        type vara "diagnos", vilket innebär att value håller diagnosen.
        """
    * observationStatus 0..1 CodeableConcept "NI 2015:1 Observation.status (CVType). TKB: 0..0."
        """
        Denna version av specifikationen tillåter endast faktiskt utförda observationer; TKB anger kardinalitet
        0..0 medan schemat tillåter 0..1. Om statuskoden utelämnas antas detta vara en faktisk observation.
        """
    * observationTime 1..1 BackboneElement "NI 2015:1 Observation.tid — tidsperiod för observationen (PartialTimePeriodType)."
        """
        Om observationen är en tidpunkt sätts sluttid till samma tid som starttid. Minst en av start och end
        måste vara angiven. Skiljer sig vanligtvis från registrationTime.
        """
      * obeys getobservations-period-bound
      * start 0..1 BackboneElement "Starttid (PartialTimeStampType)."
        * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
        * format from TimeStampTypeFormatVS (required)
        * timeValue 1..1 string "Tidpunkten, YYYY till YYYYMMDDhhmmss."
      * end 0..1 BackboneElement "Sluttid (PartialTimeStampType)."
        * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
        * format from TimeStampTypeFormatVS (required)
        * timeValue 1..1 string "Tidpunkten, YYYY till YYYYMMDDhhmmss."
    * method 0..1 CodeableConcept "Kod för typ av tillvägagångssätt för genomförandet av observationen (CVType)."
    * observationValue 1..1 BackboneElement "NI 2015:1 Observation.värde — observationens utfall (ValueANYType)."
        """
        En och endast en av huvudtyperna cv, pq, ivl_pq, ts och ivl_ts. I schemat en xs:sequence av valfria
        element (av kompatibilitetsskäl i stället för xs:choice).
        """
      * obeys getobservations-value-one-type
      * cv 0..1 CodeableConcept "Kodat värde (CVType), t.ex. diagnoskod enligt ICD-10 eller kliniskt fynd enligt Snomed CT."
      * pq 0..1 BackboneElement "Mätvärde (PQType), t.ex. 187 cm."
        * pqValue 1..1 decimal "Den numeriska delen av värdet."
        * unit 1..1 string "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1."
      * ivlPq 0..1 BackboneElement "Mätvärdesintervall (ivl_pq, PQIntervalType i clinicalprocess_healthcond_basic_1.2_ext.xsd), t.ex. 5–10 st."
        * obeys getobservations-ivlpq-bound
        * low 0..1 decimal "Intervallets lägsta mätetal."
        * lowClosed 0..1 boolean "Om low ingår i intervallet (true: ≥, false: >)."
        * high 0..1 decimal "Intervallets högsta mätetal."
        * highClosed 0..1 boolean "Om high ingår i intervallet (true: ≤, false: <)."
        * unit 1..1 string "Enhet enligt UCUM. Enhetslösa värden anges med unit = 1."
      * ts 0..1 BackboneElement "Tidpunkt (PartialTimeStampType), precision ner till endast årtal."
        * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
        * format from TimeStampTypeFormatVS (required)
        * timeValue 1..1 string "Tidpunkten, YYYY till YYYYMMDDhhmmss."
      * ivlTs 0..1 BackboneElement "Tidsintervall (ivl_ts, PartialTimePeriodType). Minst en av start och end ska anges."
        * obeys getobservations-period-bound
        * start 0..1 BackboneElement "Starttid (PartialTimeStampType)."
          * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
          * format from TimeStampTypeFormatVS (required)
          * timeValue 1..1 string "Tidpunkten."
        * end 0..1 BackboneElement "Sluttid (PartialTimeStampType)."
          * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
          * format from TimeStampTypeFormatVS (required)
          * timeValue 1..1 string "Tidpunkten."
    * targetSite 0..1 CodeableConcept "NI 2015:1 Observation.lokalisation (CVType)."
        """
        Beskriver vad observationen avser gällande anatomi, funktion eller system. Används endast om inte
        type innefattar tillräcklig information om detta.
        """
    * valueNegation 1..1 boolean "NI 2015:1 Observation.negation — negerar betydelsen av value. Normalvärde false."
    * description 0..1 string "Fritextbeskrivning av observationen där sådan kompletterar kodbeteckningen."
    * approvedForPatient 1..1 boolean "Om informationen får delas till patient (menprövad)."
    * registrationTime 0..1 instant "Dokumentationstidpunkt i patientens journal. Format ÅÅÅÅMMDDttmmss (TimeStampType)."
    * relation 0..* BackboneElement "Typade samband till andra informationsmängder (RelationType)."
      * relationCode 1..1 CodeableConcept "Typ av relation den refererade informationen har till observationen (CVType)."
      * referredInformation 1..1 BackboneElement "Den refererade informationen (ReferredInformationType)."
        * referredInformationId 1..1 Identifier "Den refererade informationens identitet (IIType)."
            """
            root: HSA-id för källsystem där den refererade informationen är lagrad.
            extension: ett inom vårdgivaren unikt id.
            """
        * referredTime 1..1 BackboneElement "Starttid för refererad information (PartialTimeStampType). Regel 2.4."
          * format 1..1 code "Tidpunktens precision (TimeStampTypeFormatEnum)."
          * format from TimeStampTypeFormatVS (required)
          * timeValue 1..1 string "Tidpunkten, YYYY till YYYYMMDDhhmmss."
        * referredType 1..1 string "Typ av uppgift som sambandet pekar ut — kod från Categorization i engagemangsindex, t.ex. chb-o."
        * informationOwner 1..1 BackboneElement "Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType)."
          * informationOwnerId 1..1 Identifier "Vårdgivarens HSA-id (IIType). root = 1.2.752.129.2.1.4.1."
