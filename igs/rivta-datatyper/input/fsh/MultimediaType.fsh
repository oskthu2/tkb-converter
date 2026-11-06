// Genererad av scripts/rivta_datatypes.py — redigera inte för hand.

Logical: MultimediaType
Id: MultimediaType
Title: "MultimediaType"
Description: "Multimediaobjekt som binärdata eller extern referens. (xs:complexType.)"
Characteristics: #can-be-type
* ^version = "1.0.0"
* id 0..1 string "id" "Objektets id. Typ i schemat: string."
* mediaType 1..1 code "mediaType" "Objektets MIME-typ. Typ i schemat: MediaTypeEnum. Kodverket (MediaTypeEnum) definieras i respektive domänschema."
* value 0..1 base64Binary "value" "Objektet som binärdata (base64). Anges om reference inte anges. Typ i schemat: base64Binary."
* reference 0..1 uri "reference" "Referens (URL) till objektet. Anges om value inte anges. Typ i schemat: anyURI."
