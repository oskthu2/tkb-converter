// Genererad från RIV-TA-domänen interoperability:headers v1.1 (schema interoperability_headers_1.1.xsd)
// Domänen saknar TKB-dokument: modellen bygger enbart på XSD:n och dess xs:documentation.
// Genererad: 2026-09-26

Logical: Actor
Id: actor
Title: "Actor"
Description: """
  Logisk modell för det gemensamma huvudelementet Actor
  (RIV-TA urn:riv:interoperability:headers:1, element Actor av typen ActorType).
  Identifierar den aktör som ett anrop görs för räkning av, t.ex. invånaren själv eller ett ombud för invånaren.
"""
Characteristics: #can-be-target

* actorId 1..1 string "Aktörens identitet"
    """
    XSD: actorId (ActorIdType, restriktion av xs:string). Obligatorisk.
    Schemat anger inget format; vilken identifierartyp som avses (t.ex. personnummer) är inte specificerad.
    """
* actorType 1..1 code "Aktörens typ"
    """
    XSD: actorType (ActorTypeEnum). Obligatorisk.
    subject_of_care = invånaren/patienten själv, subject_of_care_agent = ombud för invånaren.
    """
* actorType from ActorTypeVS (required)
