// Genererad från TKB ehr:log v1.2.3
// Kontrakt: StoreLog v1.0 — Request
// Namnrymd: urn:riv:ehr:log:store:StoreLogResponder:1
// Genererad: 2026-04-09

Logical: StoreLogRequest
Id: storelog-request
Title: "StoreLog — Request"
Description: """
  Logisk modell för requestparametrar i StoreLog
  (RIV-TA urn:riv:ehr:log:store:StoreLogResponder:1).
  Innehåller en samling loggposter (log:Log) som ska lagras.
"""
Characteristics: #can-be-target

* log 1..* BackboneElement "En loggpost att lagra i loggtjänsten"
    """
    En kollektion av loggposter som ska lagras i loggtjänsten.
    Datatyp: log:Log. Kardinalitet: Obligatorisk, lista (minst ett element).
    """
  * logId 1..1 string "Unikt UUID-identifikationsnummer för loggposten"
      """
      Format: UUID (36 tecken). Kardinalitet: Obligatorisk.
      """
  * system 1..1 BackboneElement "Systemet som utförde aktiviteten"
    * systemId 1..1 Identifier "Systemets HSA-id"
        """
        Systemets unika HSA-identifierare. Kardinalitet: Obligatorisk.
        """
    * systemName 0..1 string "Systemets namn"
        """
        Systemets läsbarare namn. Maxlängd: 256. Kardinalitet: Valfri.
        """
  * activity 1..1 BackboneElement "Aktivitetsinformation"
    * activityType 1..1 code "Typ av aktivitet"
        """
        Anger vilken typ av aktivitet som utförts.
        Tillåtna värden: Läsa, Skriva, Signera, Utskrift, Vidimera, Radera, Nödöppning.
        Kardinalitet: Obligatorisk.
        """
    * activityType from ActivityTypeVS (required)
    * activityLevel 0..1 string "Nivå på aktiviteten"
        """
        Information om vilken nivå aktiviteten utfördes på. Maxlängd: 50. Kardinalitet: Valfri.
        """
    * activityArgs 0..1 string "Övrig information för aktiviteten"
        """
        T.ex. parametrar för en rapport. Maxlängd: 8192. Kardinalitet: Valfri.
        """
    * startDate 1..1 dateTime "Tidpunkt för aktiviteten"
        """
        Tidpunkt då aktiviteten utfördes. Format: YYYY-MM-DDThh:mm:ss.zzz (CET/CEST).
        Kardinalitet: Obligatorisk.
        """
    * purpose 1..1 string "Syftet med aktiviteten"
        """
        Anger syftet med aktiviteten (t.ex. Vård och behandling, Kvalitetssäkring).
        Kardinalitet: Obligatorisk.
        """
  * user 1..1 BackboneElement "Användaren som utförde aktiviteten"
    * userId 1..1 Identifier "Användarens HSA-id"
        """
        Medarbetarens HSA-identifierare. Kardinalitet: Obligatorisk.
        """
    * name 0..1 string "Användarens namn"
        """
        Medarbetarens namn. Maxlängd: 256. Kardinalitet: Valfri.
        """
    * personId 0..1 Identifier "Medarbetarens personnummer"
        """
        Personnummer eller samordningsnummer för medarbetaren. Kardinalitet: Valfri.
        """
    * assignment 0..1 string "Medarbetarens uppdragsnamn"
        """
        Namn på medarbetaren i uppdrag. Maxlängd: 256. Kardinalitet: Valfri.
        """
    * title 0..1 string "Medarbetarens yrkestitel"
        """
        Maxlängd: 256. Kardinalitet: Valfri.
        """
    * careProvider 1..1 BackboneElement "Medarbetarens vårdgivare"
      * careProviderId 1..1 Identifier "Vårdgivarens HSA-id"
          """
          HSA-id för den vårdgivare medarbetaren arbetar för. Kardinalitet: Obligatorisk.
          """
      * careProviderName 0..1 string "Vårdgivarens namn"
          """
          Maxlängd: 256. Kardinalitet: Valfri.
          """
    * careUnit 1..1 BackboneElement "Medarbetarens vårdenhet"
      * careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
          """
          HSA-id för den vårdenhet medarbetaren arbetar på. Kardinalitet: Obligatorisk.
          """
      * careUnitName 0..1 string "Vårdenhetens namn"
          """
          Maxlängd: 256. Kardinalitet: Valfri.
          """
  * resources 1..1 BackboneElement "Resurser som aktiviteten avsåg"
    * resource 1..* BackboneElement "En resurs (vanligtvis en patient)"
      * resourceType 1..1 string "Typ av resurs"
          """
          Anger vilken typ av resurs aktiviteten avsåg. Kardinalitet: Obligatorisk.
          """
      * patient 0..1 BackboneElement "Patient som resursen avser"
        * patientId 1..1 Identifier "Patientens personnummer/samordningsnummer"
            """
            Patientens identifierare. Kardinalitet: Obligatorisk om patient finns.
            """
        * patientName 0..1 string "Patientens namn"
            """
            Maxlängd: 256. Kardinalitet: Valfri.
            """
      * careProvider 1..1 BackboneElement "Resursens ägande vårdgivare"
        * careProviderId 1..1 Identifier "Vårdgivarens HSA-id"
        * careProviderName 0..1 string "Vårdgivarens namn"
      * careUnit 0..1 BackboneElement "Resursens vårdenhet"
        * careUnitId 1..1 Identifier "Vårdenhetens HSA-id"
        * careUnitName 0..1 string "Vårdenhetens namn"
