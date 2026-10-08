// Genererad från TKB clinicalprocess:logistics:logistics 2.0.7 (Bitbucket-tagg 2.0.7)
// Kontrakt: GetCareContacts v2.0 — Response (GetCareContactsResponseType i GetCareContactsResponder_2.0.xsd)
// Genererad: 2026-10-08
// Strukturen följer schemat (CareContactType, PatientSummaryHeaderType, CareContactBodyType
// i clinicalprocess_logistics_logistics_2.0.xsd). Avvikelser mot TKB-tabellen: se 7-tjanstekontrakt.md.

Logical: GetCareContacts
Id: getcarecontacts
Title: "GetCareContacts"
Description: """
  Logisk modell för tjänstekontraktet GetCareContacts 2.0
  (RIV-TA urn:riv:clinicalprocess:logistics:logistics:GetCareContactsResponder:2).
  Representerar svarets informationsstruktur (GetCareContactsResponseType):
  noll eller flera vårdkontakter, var och en med ett huvud (careContactHeader) och en kropp (careContactBody).
"""
Characteristics: #can-be-target

* ^version = "2.0"
* careContact 0..* BackboneElement "De hälso- och sjukvårdskontakter som matchar begäran"
    """
    Typ CareContactType.
    """
  * careContactHeader 1..1 BackboneElement "Basinformation om dokumentet"
      """
      Typ PatientSummaryHeaderType.
      """
    * documentId 1..1 string "Vårdkontaktens identitet"
        """
        Identifieraren ska vara konsistent och beständig mellan olika majorversioner av ett kontrakt
        och mellan olika kontrakt.
        """
    * sourceSystemHSAId 1..1 Identifier "HSA-id för det system som dokumentet är skapat i"
    * patientId 1..1 Identifier "Identifierare för patient"
        """
        Typ PersonIdType. value (id i schemat) = patientens identifierare med 12 tecken utan avskiljare.
        system (type i schemat) = OID för typ av identifierare: personnummer 1.2.752.129.2.1.3.1,
        samordningsnummer 1.2.752.129.2.1.3.3, reservnummer lokalt definierad OID (t.ex. SLL 1.2.752.97.3.1.3).
        """
    * accountableHealthcareProfessional 0..1 BackboneElement "Hälso- och sjukvårdsperson som ansvarar för vårdkontakten"
        """
        Typ HealthcareProfessionalType. Ska anges om tillgänglig.
        """
      * authorTime 1..1 dateTime "Tidpunkt då dokumentet skapades"
          """
          Typ TimeStampType (ÅÅÅÅMMDDttmmss, svensk lokal tid). Den senaste tidpunkten då informationen
          uppdaterades i systemet ska anges om informationen ändrats efter att den skapades. Regel 2.
          """
      * healthcareProfessionalHSAId 1..1 Identifier "HSA-id för hälso- och sjukvårdsperson som ansvarar för vårdkontakten"
      * healthcareProfessionalName 1..1 string "Namn på hälso- och sjukvårdsperson"
      * healthcareProfessionalRoleCode 0..1 CodeableConcept "Hälso- och sjukvårdspersonens befattning"
          """
          Typ CVType. Om möjligt ska KV Befattning (OID 1.2.752.129.2.2.1.4) användas [R9].
          originalText används för lokalt kodverk utan OID eller när kod saknas; då anges inget annat värde.
          """
      * healthcareProfessionalOrgUnit 1..1 BackboneElement "Den organisation som hälso- och sjukvårdspersonen är uppdragstagare på"
          """
          Typ OrgUnitType. Regel 4.
          """
        * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet (Regel 4)"
        * orgUnitName 1..1 string "Namn på organisationsenheten (Regel 4)"
        * orgUnitTelecom 0..1 string "Telefon till organisationsenhet"
        * orgUnitEmail 0..1 string "Epost till enhet"
        * orgUnitAddress 0..1 string "Postadress för organisationen"
        * orgUnitLocation 0..1 string "Namn på plats eller ort för organisationens fysiska placering"
      * healthcareProfessionalCareUnitHSAId 0..1 Identifier "HSA-id för vårdenhet (Regel 1)"
          """
          TKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat.
          """
      * healthcareProfessionalCareGiverHSAId 0..1 Identifier "HSA-id för vårdgivaren (Regel 1)"
          """
          Vårdgivare för den enhet som hälso- och sjukvårdspersonen är uppdragstagare för.
          TKB-tabellen anger 1..1, schemat 0..1. Modellen följer schemat.
          """
    * approvedForPatient 1..1 boolean "Anger om information får delas till patient (Regel 3)"
    * nullified 0..1 boolean "Anger om dokumentet makulerats i källsystemet"
    * nullifiedReason 0..1 string "Orsak till makulering"
  * careContactBody 1..1 BackboneElement "Vårdkontaktens innehåll"
      """
      Typ CareContactBodyType.
      """
    * careContactCode 0..1 code "Typ av vårdkontakt"
        """
        CareContactCodeEnum: 1 = Besök, 2 = Telefon, 3 = Vårdtillfälle, 4 = Dagsjukvård, 5 = Annan.
        Utelämnat värde betyder att värdet är okänt.
        """
    * careContactCode from CareContactCodeVS (required)
    * careContactReason 0..1 string "Orsak till kontakten enligt patienten eller dess företrädare"
    * careContactOrgUnit 1..1 BackboneElement "Den enhet som kontakten utfördes vid"
        """
        Typ OrgUnitType.
        """
      * orgUnitHSAId 1..1 Identifier "HSA-id för organisationsenhet"
      * orgUnitName 1..1 string "Namn på organisationsenheten"
      * orgUnitTelecom 0..1 string "Telefon till organisationsenheten"
      * orgUnitEmail 0..1 string "Epost till organisationsenheten"
      * orgUnitAddress 0..1 string "Postadress till organisationsenheten"
      * orgUnitLocation 0..1 string "Namn på plats eller ort för organisationsenhetens fysiska placering"
    * careContactTimePeriod 1..1 BackboneElement "Vårdkontaktens tidsperiod"
        """
        Typ TimePeriodType. För besök sätts sluttidpunkten till samma tid som starttidpunkten.
        För planerade kontakter sätts ingen sluttidpunkt. Pågående vårdtillfälle anges som en
        planerad vårdkontakt, med startdatum men utan slutdatum.
        """
      * start 1..1 dateTime "Starttidpunkt"
      * end 0..1 dateTime "Sluttidpunkt"
    * careContactStatus 0..1 code "Status på vårdkontakten"
        """
        CareContactStatusEnum (kodverk ur NPÖ RIV-spec 2.2): 1 = Ej påbörjad, 2 = Inställd,
        3 = Pågående, 4 = Avbruten, 5 = Avslutad.
        """
    * careContactStatus from CareContactStatusVS (required)
