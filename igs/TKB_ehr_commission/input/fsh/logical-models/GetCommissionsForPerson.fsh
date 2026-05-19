// Genererad från TKB ehr:commission v1.0 RC1
// Kontrakt: GetCommissionsForPerson v1.0
// Genererad: 2026-04-09

Invariant: getcommissions-careprovider-xor
Description: "Antingen healthCareProviderHsaId eller healthCareProviderName ska anges"
Expression: "healthCareProviderHsaId.exists() or healthCareProviderName.exists()"
Severity: #warning

Logical: GetCommissionsForPerson
Id: getcommissionsforperson
Title: "GetCommissionsForPerson"
Description: """
  Logisk modell för tjänstekontraktet GetCommissionsForPerson
  (RIV-TA urn:riv:ehr:commission:GetCommissionsForPersonResponder:1).
  Representerar responsens informationsstruktur (GetCommissionsForPersonResult).

  Tjänsten hämtar alla medarbetaruppdrag som personen är kopplad till,
  returnerar det senast valda uppdraget och anger om ett uppdrag valts
  inom de senaste 12 timmarna.
"""
Characteristics: #can-be-target

* result 1..1 BackboneElement "Resultatkod och valfritt felmeddelande"
    """
    Datatyp ResultType — returneras som generellt svar.
    En anropande klient skall alltid kontrollera att resultatkoden inte
    innehåller fel för att på så sätt veta om anropet lyckades.
    Kardinalitet: Obligatorisk.
    """
* result.resultCode 1..1 code "Svarskod för åtgärden"
    """
    Anger svarskod för åtgärden enligt ResultCode-kodverket.
    Kardinalitet: Obligatorisk.
    """
* result.resultCode from ResultCodeVS (required)
* result.resultText 1..1 string "Felmeddelande (tomt vid OK)"
    """
    Optionellt felmeddelande som innehåller information om felet som uppstod.
    Fältet är tomt om resultatkoden är OK.
    Kardinalitet: Obligatorisk (men innehållet kan vara tomt sträng).
    """
* lastSelectedCommissionHsaId 0..1 string "Senast valt uppdrag (HSA-id)"
    """
    Personens senast valda medarbetaruppdrag (HSA-id).
    Returneras alltid, även om inget val gjorts de senaste 12 timmarna.
    Maxlängd: 32 tecken.
    Kardinalitet: Valfri.
    """
* selectionPerformed 0..1 boolean "Uppdrag valt inom 12 timmar"
    """
    Anger om ett uppdrag valts inom de senaste 12 timmarna.
    TKB-tabell anger kardinalitet 1 (obligatorisk) men XSD definierar minOccurs=0.
    ASSUME: Modellerad som 0..1 (valfri) i enlighet med XSD — se QUESTIONS.md BLOCK-EC-001.
    Kardinalitet: Valfri (XSD) / Obligatorisk (TKB-tabell).
    """
* commissions 0..* BackboneElement "Medarbetaruppdrag kopplade till personen"
    """
    De medarbetaruppdrag som personen är kopplad till.
    Datatyp CommissionType.
    Kardinalitet: Valfri, lista.
    """
* commissions ^obeys getcommissions-careprovider-xor
* commissions.commissionHsaId 1..1 string "Medarbetaruppdragets HSA-id"
    """
    Unikt HSA-id för medarbetaruppdraget. Maxlängd: 32 tecken.
    Kardinalitet: Obligatorisk.
    """
* commissions.commissionName 1..1 string "Medarbetaruppdragets namn"
    """
    Visningsnamn för medarbetaruppdraget.
    Kardinalitet: Obligatorisk.
    """
* commissions.commissionPurpose 1..1 string "Medarbetaruppdragets ändamål"
    """
    Beskrivning av uppdragets syfte/ändamål.
    Kardinalitet: Obligatorisk.
    """
* commissions.healthCareUnitHsaId 0..1 string "HSA-id för vårdenhet enligt PDL"
    """
    HSA-id för den vårdenhet som uppdraget är kopplat till, enligt PDL.
    Maxlängd: 32 tecken.
    Kardinalitet: Valfri.
    """
* commissions.healthCareUnitName 0..1 string "Vårdenhetens namn"
    """
    Visningsnamn för vårdenheten.
    Kardinalitet: Valfri.
    """
* commissions.healthCareUnitStartDate 0..1 dateTime "Startdatum för vårdenhetens verksamhet"
    """
    Datum då vårdenhetens verksamhet startade.
    Format: ÅÅÅÅ-MM-DDTtt:mm:ss (ISO 8601, CET/CEST).
    Kardinalitet: Valfri.
    """
* commissions.healthCareUnitEndDate 0..1 dateTime "Slutdatum för vårdenhetens verksamhet"
    """
    Datum då vårdenhetens verksamhet upphörde.
    Format: ÅÅÅÅ-MM-DDTtt:mm:ss (ISO 8601, CET/CEST).
    Kardinalitet: Valfri.
    """
* commissions.healthCareProviderHsaId 0..1 string "Vårdgivarens HSA-id"
    """
    HSA-id för den vårdgivare som uppdraget är kopplat till.
    Maxlängd: 32 tecken.
    TKB-tabell anger kardinalitet 1 (obligatorisk) men XSD definierar minOccurs=0.
    ASSUME: Modellerad som 0..1 i enlighet med XSD — se QUESTIONS.md BLOCK-EC-002.
    Kardinalitet: Valfri (XSD) / Obligatorisk (TKB-tabell).
    """
* commissions.healthCareProviderName 0..1 string "Vårdgivarens namn"
    """
    Visningsnamn för vårdgivaren.
    TKB-tabell anger kardinalitet 1 (obligatorisk) men XSD definierar minOccurs=0.
    ASSUME: Modellerad som 0..1 i enlighet med XSD — se QUESTIONS.md BLOCK-EC-002.
    Kardinalitet: Valfri (XSD) / Obligatorisk (TKB-tabell).
    """
* commissions.healthCareProviderOrgNo 0..1 string "Vårdgivarens organisationsnummer"
    """
    Organisationsnummer för vårdgivaren.
    Kardinalitet: Valfri.
    """
* commissions.healthCareProviderStartDate 0..1 dateTime "Startdatum för vårdgivarens verksamhet"
    """
    Datum då vårdgivarens verksamhet startade.
    Format: ÅÅÅÅ-MM-DDTtt:mm:ss (ISO 8601, CET/CEST).
    Kardinalitet: Valfri.
    """
* commissions.healthCareProviderEndDate 0..1 dateTime "Slutdatum för vårdgivarens verksamhet"
    """
    Datum då vårdgivarens verksamhet upphörde.
    Format: ÅÅÅÅ-MM-DDTtt:mm:ss (ISO 8601, CET/CEST).
    Kardinalitet: Valfri.
    """
