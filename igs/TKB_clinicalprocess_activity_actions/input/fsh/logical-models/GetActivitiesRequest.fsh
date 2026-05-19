// Genererad från TKB clinicalprocess:activity:actions v1.3
// Kontrakt: GetActivities v1.3 — Request
// Genererad: 2026-05-18

Logical: GetActivitiesRequest
Id: getactivities-request
Title: "GetActivities — Request"
Description: """
  Logisk modell för requestparametrar i tjänstekontraktet GetActivities
  (RIV-TA urn:riv:clinicalprocess:activity:actions:GetActivities:1).
  Den enda obligatoriska sökparametern är patientId.
  Övriga parametrar är valfria filter (se Regel 1.1).
"""
Characteristics: #can-be-target

* patientId 1..1 Identifier "Personidentifierare för patient"
    """
    Begränsar sökningen till angiven personidentifierare för en patient (IIType).
    Tjänsteproducenten ska i svaret leverera alla uppgifter kopplad till patienten.
    root = OID för typ (personnummer: 1.2.752.129.2.1.3.1,
    samordningsnummer: 1.2.752.129.2.1.3.3). Se Regel 1.1.
    Kardinalitet: Obligatorisk.
    """

* time 0..1 Period "Sökintervall (tidsperiod)"
    """
    Begränsar sökningen till det angivna tidsintervallet (TimePeriodType).
    Om sökningen begränsas med detta attribut ska poster som saknar Activity.Time inte returneras.
    start och end är båda valfria (0..1 vardera) — format ÅÅÅÅMMDDttmmss.
    Kardinalitet: Valfri.
    """

* activityCode 0..* CodeableConcept "Filter på typ av aktivitet"
    """
    Begränsar sökningen till en viss typ av aktivitet (CVType).
    Motsvarar activity.code i svaret.
    code och codeSystem är obligatoriska; displayName, codeSystemName, codeSystemVersion ska ignoreras.
    Kardinalitet: Valfri, lista.
    """

* activityId 0..* Identifier "Filter på aktivitetsidentifierare"
    """
    Unikt värde för aktiviteten som också refererar till vilket källsystem informationen kommer ifrån.
    Motsvarar activity/id i svaret (IIType).
    root = källsystemets HSA-id, extension = unikt id i källsystemet.
    Kardinalitet: Valfri, lista.
    """

* sourceSystemId 0..1 Identifier "Filter på källsystem"
    """
    Begränsar sökningen till aktivitet som är skapad i det angivna källsystemet (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1. extension = HSA-id för källsystemet.
    Kardinalitet: Valfri.
    """

* careGiverId 0..1 Identifier "Filter på vårdgivare"
    """
    Begränsar sökningen till aktivitet från en specifik vårdgivare (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1. extension = HSA-id för vårdgivaren.
    Kardinalitet: Valfri.
    """

* careUnitId 0..1 Identifier "Filter på vårdenhet"
    """
    Begränsar sökningen till en vårdenhet (IIType).
    root = OID för HSA-id: 1.2.752.129.2.1.4.1. extension = HSA-id för PDL-vårdenheten.
    Kardinalitet: Valfri.
    """

* interactionAgreementId 1..1 string "Interaktionsöverenskommelse-id"
    """
    Används inte i denna version. Ange alltid UUID: 2866a7c4-9c60-433f-9035-a4d779ffe7a1.
    Kardinalitet: Obligatorisk.
    """

* relation 0..* BackboneElement "Filter på relationer"
    """
    Begränsar sökningen till aktiviteter med avseende på hur de är relaterade till
    andra uppgifter i journalsystem (RelationFilterType).
    Minst en av relation.typeCode och relation.id ska vara angiven.
    Kardinalitet: Valfri, lista.
    """
* relation.typeCode 0..1 CodeableConcept "Filter på relations-/sambandstyp"
    """
    Filtrera på relations-/sambandstyp (CVType).
    code och codeSystem är valfria; displayName, codeSystemName, codeSystemVersion ska ignoreras.
    Kardinalitet: Valfri.
    """
* relation.id 0..1 Identifier "Filter på identitet i relation"
    """
    Begränsar sökningen till aktiviteter med den identitet som anges i sambandet (IIType).
    Exempelvis möjlighet att söka alla aktiviteter med relation till en viss observation.
    Kardinalitet: Valfri.
    """
* relation.referredInformationType 1..1 string "Typ av refererad information"
    """
    Den typ av uppgift i patientjournal som sambandet pekar ut.
    Kod från Categorization i engagemangsindexposten.
    Möjliga värden: 'chb-o' (observation), 'caa-ga' (aktivitet).
    Kardinalitet: Obligatorisk.
    """
