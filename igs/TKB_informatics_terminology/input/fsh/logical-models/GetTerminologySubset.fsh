// Genererad från TKB informatics:terminology v1.4
// Kontrakt: GetTerminologySubset v1.0
// Genererad: 2026-05-19

Logical: GetTerminologySubset
Id: getterminologysubset
Title: "GetTerminologySubset"
Description: """
  Logisk modell för tjänstekontraktet GetTerminologySubset
  (RIV-TA urn:riv:informatics:terminology:GetTerminologySubset:1).
  Representerar responsens informationsstruktur.

  Tjänsten hämtar en delmängd (subset) av en terminologi (exempelvis SNOMED CT,
  ICD-10, ATC-kodverket) som är användbar i ett visst sammanhang.
  Stöder bl.a. dynamiskt urval av orsaker till antibiotikainsättning
  som rapporteras till Infektionsregistret.
"""
Characteristics: #can-be-target

* concept 0..* BackboneElement "Svaret består av en lista med begrepp"
    """
    En lista med terminologibegrepp från det begärda urvalet.
    Kardinalitet: Valfri, lista. Kan vara tom om urvalet saknar matchande begrepp.
    """
  * codeSystem 1..1 string "Identifierare av kodsystem"
      """
      Identifierare för det kodsystem som begreppet tillhör (t.ex. ICD-10, SNOMED CT, ATC).
      Kardinalitet: Obligatorisk.
      """
  * code 1..1 string "Begreppskod"
      """
      Begreppets kod i det angivna kodsystemet.
      Kardinalitet: Obligatorisk.
      """
  * term 1..1 string "Term som beskriver begreppet"
      """
      Visningsterm för begreppet (av den typ som angavs i TermType-parametern, normalt DisplayName).
      Kardinalitet: Obligatorisk.
      """
  * metadata 0..* BackboneElement "Lista med metadata"
      """
      Ytterligare metadata som krävs för att veta vilka delar av OpenEHR-templaten
      som skall fyllas i vid sändande av t.ex. ordinationsorsak till Infektionsverktyget.
      Kardinalitet: Valfri, lista.
      """
    * name 1..1 string "Identifierar typ av metadata"
        """
        Nyckel som identifierar typen av metadata.
        Kardinalitet: Obligatorisk.
        """
    * value 1..1 string "Metadatavärde"
        """
        Värdet för den angivna metadatatypen.
        Kardinalitet: Obligatorisk.
        """
