// Genererad från TKB clinicalprocess:activity:actions v1.3
// Kontrakt: GetActivities v1.3
// Genererad: 2026-05-18

Logical: GetActivities
Id: getactivities
Title: "GetActivities"
Description: """
  Logisk modell för tjänstekontraktet GetActivities
  (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).
  Representerar responsens informationsstruktur — en lista av activityGroup-element.
"""
Characteristics: #can-be-target

* activityGroup 0..* BackboneElement "Grupp av aktiviteter"
    """
    Grupp av aktiviteter som delar samma patient, utförare, signerare, ytterligare deltagare,
    källsystem, vårdprocess-id, utrustning, samt plats. Teknisk optimering för att minska
    redundant data i de fall då flera aktiviteter gjorts med samma medverkande.
    Kardinalitet: Valfri, lista.
    """
* activityGroup.patient 1..1 BackboneElement "Patient som aktivitetsgruppen avser"
    """
    Den patient som aktivitetsgruppen avser (PatientType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.patient.id 1..1 Identifier "Id för patienten"
    """
    Id för patienten (IIType). Ska anges med 12 tecken utan avskiljare.
    root = OID för typ av identifierare (personnummer: 1.2.752.129.2.1.3.1,
    samordningsnummer: 1.2.752.129.2.1.3.3, reservnummer: lokalt OID).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.patient.dateOfBirth 1..1 date "Patientens födelsedatum"
    """
    Anger patientens födelseår, månad och dag. Ej personnummer! Format ÅÅÅÅMMDD.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.patient.gender 0..1 CodeableConcept "Patientens kön"
    """
    Anger patientens kön (CVType). Kodas enligt KV kön OID 1.2.752.129.2.2.1.1.
    Koder: 0=okänt, 1=man, 2=kvinna, 9=ej tillämpligt.
    Kardinalitet: Valfri.
    """

* activityGroup.performerRole 1..1 BackboneElement "Den som utfört aktiviteter inom gruppen"
    """
    Den som utfört aktiviteter inom gruppen (PerformerRoleType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.performerRole.id 0..1 Identifier "HSA-id för utförande person"
    """
    Identitet för personen som utfört aktiviteten (IIType).
    Anges enbart om aktiviteten utförts av hälso- och sjukvårdspersonal. Anges med HSA-id.
    root = OID för HSA-katalogen (1.2.752.129.2.1.4.1).
    Kardinalitet: Villkorlig (se Regel 2.1).
    """
* activityGroup.performerRole.code 1..1 CodeableConcept "Roll som utföraren agerar i"
    """
    Beskriver den roll som utföraren agerar i under aktiviteten (CVType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.performerRole.person 0..1 BackboneElement "Person som utfört aktiviteten"
    """
    Beskriver den person som utfört aktiviteten (PersonType).
    Kardinalitet: Villkorlig (se Regel 2.1).
    """
* activityGroup.performerRole.person.id 0..1 Identifier "Identifierare för person"
    """
    Identifierare för person som utfört aktiviteten. Anges endast om aktiviteten utförts av
    person som INTE klassas som hälso- och sjukvårdspersonal.
    Kardinalitet: Valfri.
    """
* activityGroup.performerRole.person.name 0..1 string "För- och efternamn i klartext"
    """
    För- och efternamn i klartext för person. Se Regel 2.1.
    Kardinalitet: Valfri.
    """
* activityGroup.performerRole.careUnit 0..1 BackboneElement "PDL-vårdenhet och PDL-vårdgivare"
    """
    Den PDL-vårdenhet och PDL-vårdgivare som aktiviteten utförs på uppdrag av.
    Ska endast anges då den person som utfört aktiviteten är hälso- och sjukvårdspersonal.
    Se Regel 2.1 och 2.6.
    Kardinalitet: Villkorlig.
    """
* activityGroup.performerRole.careUnit.id 1..1 Identifier "HSA-id för PDL vårdenhet"
    """
    HSA-id för PDL vårdenhet som har ansvar för aktiviteten. Se Regel 2.6.
    root = OID för HSA-id: 1.2.752.129.2.1.4.1.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.performerRole.careUnit.name 0..1 string "Vårdenhetens namn"
    """
    Vårdenhetens namn till vilken aktiviteten är knuten.
    Kardinalitet: Valfri.
    """
* activityGroup.performerRole.careUnit.careGiver 1..1 BackboneElement "Vårdgivaren som enheten hör till"
    """
    Den vårdgivare som enheten hör till (CareGiverType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.performerRole.careUnit.careGiver.id 1..1 Identifier "HSA-id för vårdgivaren"
    """
    Vårdgivarens identitet som enheten är anknuten till (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1. Se Regel 2.6.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.performerRole.careUnit.careGiver.name 0..1 string "Vårdgivarens namn"
    """
    Vårdgivarens namn till vilken enheten är knuten.
    Kardinalitet: Valfri.
    """

* activityGroup.legalAuthenticator 0..1 BackboneElement "Den som signerat aktiviteterna"
    """
    Den som signerat aktiviteterna inom gruppen (LegalAuthenticatorType).
    Se Regel 2.4.
    Kardinalitet: Valfri.
    """
* activityGroup.legalAuthenticator.id 0..1 Identifier "HSA-id för signerande person"
    """
    HSA-id för personen som signerat aktiviteterna. Se Regel 2.4.
    Minst ett av attributen id eller name ska anges.
    Kardinalitet: Villkorlig.
    """
* activityGroup.legalAuthenticator.time 1..1 dateTime "Tid för signeringen"
    """
    Tid för signeringen av aktiviteten. Format ÅÅÅÅMMDDttmmss, klockslaget är frivilligt.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.legalAuthenticator.name 0..1 string "Namn på signerande person"
    """
    För- och efternamn i klartext för signerande person. Se Regel 2.4.
    Minst ett av attributen id eller name ska anges.
    Kardinalitet: Villkorlig.
    """

* activityGroup.additionalParticipant 0..* BackboneElement "Övriga deltagare"
    """
    Övriga deltagare relaterat till aktiviteterna inom gruppen (AdditionalParticipantType).
    Kardinalitet: Valfri, lista.
    """
* activityGroup.additionalParticipant.id 0..1 Identifier "Identifierare för ytterligare deltagare"
    """
    Identifierare för ytterligare deltagare (IIType).
    Anges enbart om deltagaren klassas som hälso- och sjukvårdspersonal (HSA-id).
    Kardinalitet: Villkorlig (se Regel 2.2).
    """
* activityGroup.additionalParticipant.type 1..1 CodeableConcept "Typ av deltagande"
    """
    Typ av deltagande (CVType). Beskriver hur deltagaren har deltagit i aktiviteten.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.additionalParticipant.role 1..1 CodeableConcept "Deltagarens roll"
    """
    Beskriver i vilken roll deltagaren agerar (CVType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.additionalParticipant.time 0..1 Period "Deltagandetid"
    """
    Om deltagandetiden för denna deltagare inte överensstämmer med aktivitetens tidsperiod
    kan time-attributet ange när den specifika deltagaren deltog.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.person 0..1 BackboneElement "Deltagande övrig person"
    """
    Deltagande övrig person (PersonType). Exklusiv med organisation, device, location.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.person.id 0..1 Identifier "Identifierare för person"
    """
    Identifierare för deltagande övrig person.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.person.name 0..1 string "För- och efternamn"
    """
    För- och efternamn i klartext för person.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.organisation 0..1 BackboneElement "Deltagande organisation"
    """
    Deltagande övrig organisation (OrganisationType). Exklusiv med person, device, location.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.organisation.id 1..1 Identifier "HSA-id för organisation"
    """
    HSA-id för den organisation som denna ytterligare deltagare har sitt uppdrag hos.
    root = OID för HSA-id: 1.2.752.129.2.1.4.1.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.additionalParticipant.organisation.name 0..1 string "Organisationens namn"
    """
    Organisationens namn i klartext.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.device 0..1 BackboneElement "Deltagande medicinskteknisk produkt"
    """
    Deltagande medicinskteknisk produkt (DeviceType). Exklusiv med person, organisation, location.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.device.id 0..1 Identifier "Identifierare för medicinskteknisk produkt"
    """
    Identifierare för instans av medicinskteknisk produkt.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.device.type 0..1 CodeableConcept "Typ av medicinskteknisk produkt"
    """
    Beskriver typ av medicinskteknisk produkt (CVType).
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.device.model 0..1 string "Modell för medicinskteknisk produkt"
    """
    Tillverkarens modellbeteckning (SCType). Kan anges som kod eller klartext.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.location 0..1 BackboneElement "Deltagande plats"
    """
    Deltagande plats (LocationType). Exklusiv med person, organisation, device.
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.location.id 0..1 Identifier "HSA-id för plats/vårdenhet"
    """
    Identifiering för platsen. Anges om platsen är en vårdenhet (HSA-id).
    Kardinalitet: Valfri.
    """
* activityGroup.additionalParticipant.location.name 1..1 string "Namn på plats"
    """
    Namn på den plats där en aktivitet har genomförts.
    Kardinalitet: Obligatorisk.
    """

* activityGroup.careProcessId 0..1 string "UUID för individanpassad vårdprocess"
    """
    UUID för den individanpassade vårdprocess som denna aktivitet ingår i.
    Kardinalitet: Valfri.
    """

* activityGroup.sourceSystem 1..1 BackboneElement "Källsystem"
    """
    Källsystem som aktivitetsgruppen lagras i (SourceSystemType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.sourceSystem.id 1..1 Identifier "HSA-id för källsystem"
    """
    HSA-id för källsystemet (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1.
    Kardinalitet: Obligatorisk.
    """

* activityGroup.activity 1..* BackboneElement "Aktiviteter i gruppen"
    """
    De aktiviteter som ligger inom denna grupp (ActivityType).
    Kardinalitet: Obligatorisk, lista (minst en).
    """
* activityGroup.activity.id 1..1 Identifier "Unik identifierare för aktiviteten"
    """
    En unik identifierare för aktiviteten (IIType). Ska vara konsistent och beständig
    mellan majorversioner av kontrakt och mellan kontrakt.
    root = källsystemets HSA-id.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.code 1..1 CodeableConcept "Typ av aktivitet"
    """
    Kod för den typ av aktivitet som avses (CVType), exempelvis KVÅ-kod för åtgärd.
    Antingen code eller description måste finnas (teknisk implementation kräver code).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.status 0..1 CodeableConcept "Aktivitetens status"
    """
    Kod för aktivitetens status, t.ex. planerad eller utförd (CVType).
    Kodas enligt SNOMED CT refset aktivitetsstatus (SCTID: 56421000052109).
    codeSystem = 1.2.752.116.2.1.1 (snomed-ct-se).
    Om statuskoden utelämnas antas aktiviteten vara utförd.
    Kardinalitet: Valfri.
    """
* activityGroup.activity.targetSite 0..1 CodeableConcept "Lokalisation"
    """
    Angivelse av lokalisation (CVType) — anatomi, funktion eller system.
    Används om inte type-attributet innefattar tillräcklig information.
    Kardinalitet: Valfri.
    """
* activityGroup.activity.time 0..1 Period "Tidsperiod för aktiviteten"
    """
    Tidsperiod för aktiviteten (PartialTimePeriodType). Om aktiviteten skedde vid en tidpunkt
    sätts sluttid till samma tid som starttid. Minst en av start och end måste vara angiven.
    Obligatorisk om status är utförd (398166005) eller saknas. Se Regel 2.3.
    Kardinalitet: Villkorlig.
    """
* activityGroup.activity.method 0..1 CodeableConcept "Tillvägagångssätt"
    """
    Kod för typ av tillvägagångssätt för genomförandet av aktiviteten (CVType).
    Kardinalitet: Valfri.
    """
* activityGroup.activity.description 0..1 string "Fritextbeskrivning av aktiviteten"
    """
    Fritextbeskrivning av aktiviteten som kompletterar kodbeteckningen.
    Kardinalitet: Valfri.
    """
* activityGroup.activity.approvedForPatient 1..1 boolean "Menprövad — information får delas till patient"
    """
    Anger om information får delas till patient (menprövad).
    true = informationen får delas, false = informationen ska inte delas.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.registrationTime 1..1 instant "Dokumentationstidpunkt"
    """
    När uppgiften registrerades i patientens journal (TimeStampType).
    Kan skilja sig från signeringstidpunkt i LegalAuthenticator.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation 0..* BackboneElement "Typade samband till andra informationsmängder"
    """
    Beskriver typade samband till andra informationsmängder (RelationType).
    Exempelvis kan en post-operativ infektion ha ett samband till en tidigare operation.
    Kardinalitet: Valfri, lista.
    """
* activityGroup.activity.relation.code 1..1 CodeableConcept "Typ av relation"
    """
    Anger vilken typ av relation den refererade informationen har till hämtad aktivitet (CVType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation 1..1 BackboneElement "Refererad information"
    """
    Den refererade externa informationen (ReferredInformationType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation.id 1..1 Identifier "Id för refererad information"
    """
    Den refererade externa informationens identitet (IIType).
    root = HSA-id för källsystem.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation.time 1..1 dateTime "Starttid av refererad information"
    """
    Starttid av refererad information (PartialTimeStampType). Se Regel 2.5 — ska kunna
    användas som inparameter i ett tidsintervallbaserat sökvillkor till den relaterade tjänsten.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation.type 1..1 string "Typ av refererad information"
    """
    Typ av uppgift i patientjournal (Categorization-kod från engagemangsindex).
    Exempel: 'chb-o' (observation), 'caa-ga' (aktivitet).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation.informationOwner 1..1 BackboneElement "Informationsägare"
    """
    Vårdgivare som är informationsägare av den refererade informationen (InformationOwnerType).
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.relation.referredInformation.informationOwner.id 1..1 Identifier "Informationsägarens HSA-id"
    """
    Informationsägare av refererad information (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.additionalInformation 0..* BackboneElement "Ytterligare information"
    """
    Ytterligare information kopplad till aktiviteten (AdditionalInformationType).
    Kardinalitet: Valfri, lista.
    """
* activityGroup.activity.additionalInformation.key 1..1 string "Nyckel för ytterligare information"
    """
    Typ av ytterligare information. Tillåtna värden: 'Planeringstid' eller 'Orsak'.
    Kardinalitet: Obligatorisk.
    """
* activityGroup.activity.additionalInformation.value 1..1 string "Värde för ytterligare information"
    """
    Värde för ytterligare information. Planeringstid = PartialTimeStampType-format.
    Orsak = kod enligt CVType.
    Kardinalitet: Obligatorisk.
    """
