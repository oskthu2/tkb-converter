# 7 Tjänstekontrakt

Källa: *Tjänstekontraktsbeskrivning Patientöversikt*, utgåva PA1 (2012-11-16), [Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc](Tjanstekontrakt_EHR_Patientoversikt_Beskrivning.doc).

Tjänstekontraktsbeskrivningen beskriver tjänsterna i avsnitt 3–7. I denna IG samlas de under avsnitt 7, i samma ordning: 7.1 motsvarar TKB avsnitt 3, 7.2 avsnitt 4 och så vidare.

ReceiveEhrExtract/ReceiveEhrExtractStatus och DeleteEhrExtract/DeleteEhrExtractStatus är interaktioner av typen Uppdrag-Resultat. De två tjänstekontrakten i varje par beskrivs av samma WSDL (en Responder- och en Initiator-del).

### GetEhrExtract

*TKB avsnitt 3.*

Tjänst som används för att hämta detaljerad patientinformation.

#### 7.1.1 Frivillighet

Tjänsten är obligatorisk för att dela detaljerad patientinformation på formatet EN13606 då själva informationen har indexerats i EngagemangsIndex.

#### 7.1.2 Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

`<huvudversion>.<underversion>`

#### 7.1.3 SLA-krav

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid | < 3 s | Tjänsteproducenten bör svara inom tre sekunder. För att uppnå detta mål kan det vara aktuellt med begränsning av svarets innehåll/storlek. Tjänsteproducenten ansvarar för att väga patientsäkerhet med prestanda. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Realtid | Svaren ska hämtas från underliggande datalager, vilket innebär att alla förändringar i datalagret direkt syns i svaren. |

#### 7.1.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| subject_of_care | II | Nationellt unikt person-id. | 1..1 |
| purpose | CD | Anger anledningen till anropet. Innehållet i detta fält kan användas/defineras per tjänstekonsument beroende på användningsområde. Vid användning av detta fält måste det finnas en överrenskommelse mellan tjästekonsumenten och tjänsteproducenten. | 0..1 |
| time_period | IVL_TS | Begränsning av sökningen i tid, baserat på kliniskt relevanta datum. Händelser anses ligga inom intervallet, om de till någon del ligger inom intervallet. (Start- och slutpunkt inkluderas i intervallet.) Formatet för start- respektive slutdatum är ÅÅÅÅMMDD. (Exempel på när tidsintervall används är om NPÖs frågetjänst blir anropad med tidsintervall - då propageras intervallet ner till källsystemen.) | 0..1 |
| meanings | CD | En av NPÖ definerad huvudinformationstyp. | 1..1 |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| ehr_extract | EHR_EXTRACT | Detaljerad patientinformation på formatet EN13606. | 0..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |

#### 7.1.5 Regler

Värdet för ”ehr_system” (som återfinns i ”ehr_extract”) måste vara samma som den logiska adressen för denna tjänst. För ytterligare beskrivning på värde för ”ehr_system” (som är en del av svaret) hänvisas till avsnittet 2.4.

Se avsnittet 2.2 för statusrapportering vid följande situationer

- felaktigt anrop
- internt fel
- ingen patientinformation finns
- tjänsten inte är tillgänglig

#### 7.1.6 Tjänsteinteraktion

GetEhrExtractInteraction

#### 7.1.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och visar hela meddelandestrukturen, inklusive EN13606-extraktet. Beskrivningarna är schemats egna annoteringar (engelska) där sådana finns. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| subject_of_care_id | II |  | 1..1 |
| purpose | CD |  | 0..1 |
| rc_ids | II |  | 0..* |
| time_period | IVL_TS |  | 0..1 |
| max_sensitivity | INT |  | 0..1 |
| all_versions | BL |  | 0..1 |
| multimedia_included | BL |  | 0..1 |
| archetype_ids | II |  | 0..* |
| meanings | CD |  | 0..* |
| max_records | INT |  | 0..1 |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| **Svar** | | | |
| ehr_extract | EHR_EXTRACT | The root node of an EHR Extract. | 0..* |
| ../authorising_party | II |  | 0..1 |
| ../ehr_id | II |  | 1..1 |
| ../ehr_system | II |  | 1..1 |
| ../subject_of_care | II |  | 1..1 |
| ../time_created | TS |  | 1..1 |
| ../all_compositions | COMPOSITION | Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| ../../archetype_id | ST |  | 0..1 |
| ../../meaning | CD |  | 0..1 |
| ../../name | ST |  | 1..1 |
| ../../orig_parent_ref | II |  | 0..1 |
| ../../policy_ids | II |  | 0..* |
| ../../rc_id | II |  | 1..1 |
| ../../sensitivity | INT |  | 0..1 |
| ../../synthesised | BL |  | 1..1 |
| ../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../follow_link | BL |  | 1..1 |
| ../../../nature | CS |  | 1..1 |
| ../../../role | CD |  | 0..1 |
| ../../../target_type | CD |  | 0..1 |
| ../../../target_id | II |  | 1..* |
| ../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../contribution_id | II |  | 0..1 |
| ../../session_time | IVL_TS |  | 0..1 |
| ../../territory | CS |  | 0..1 |
| ../../attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| ../../../attested_view | ED |  | 0..1 |
| ../../../proof | ED |  | 0..1 |
| ../../../reason_for_attestation | CD |  | 1..1 |
| ../../../time | TS |  | 1..1 |
| ../../../target_rc_id | II |  | 1..* |
| ../../../attester | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 1..1 |
| ../../../../function | CD |  | 0..1 |
| ../../../../healthcare_facility | II |  | 0..1 |
| ../../../../mode | CS |  | 0..1 |
| ../../../../performer | II |  | 1..1 |
| ../../../../service_setting | CD |  | 0..1 |
| ../../other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| ../../../function | CD |  | 0..1 |
| ../../../healthcare_facility | II |  | 0..1 |
| ../../../mode | CS |  | 0..1 |
| ../../../performer | II |  | 1..1 |
| ../../../service_setting | CD |  | 0..1 |
| ../../committal | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 1..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../composer | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| ../../../function | CD |  | 0..1 |
| ../../../healthcare_facility | II |  | 0..1 |
| ../../../mode | CS |  | 0..1 |
| ../../../performer | II |  | 1..1 |
| ../../../service_setting | CD |  | 0..1 |
| ../../content | CONTENT | Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY. | 0..* |
| ../../../archetype_id | ST |  | 0..1 |
| ../../../meaning | CD |  | 0..1 |
| ../../../name | ST |  | 1..1 |
| ../../../orig_parent_ref | II |  | 0..1 |
| ../../../policy_ids | II |  | 0..* |
| ../../../rc_id | II |  | 1..1 |
| ../../../sensitivity | INT |  | 0..1 |
| ../../../synthesised | BL |  | 1..1 |
| ../../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../../follow_link | BL |  | 1..1 |
| ../../../../nature | CS |  | 1..1 |
| ../../../../role | CD |  | 0..1 |
| ../../../../target_type | CD |  | 0..1 |
| ../../../../target_id | II |  | 1..* |
| ../../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../../committer | II |  | 1..1 |
| ../../../../ehr_system | II |  | 1..1 |
| ../../../../previous_version | II |  | 0..1 |
| ../../../../reason_for_revision | CD |  | 0..1 |
| ../../../../time_committed | TS |  | 1..1 |
| ../../../../version_set_id | II |  | 0..1 |
| ../../../../version_status | CS |  | 0..1 |
| ../../../section | SECTION | Element som bara finns när instansen är av subtypen SECTION (xsi:type). | 0..1 |
| ../../../../members | CONTENT |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../../entry | ENTRY | Element som bara finns när instansen är av subtypen ENTRY (xsi:type). | 0..1 |
| ../../../../act_id | ST |  | 0..1 |
| ../../../../act_status | CS |  | 0..1 |
| ../../../../subject_of_information_category | CS |  | 0..1 |
| ../../../../uncertainty_expressed | BL |  | 1..1 |
| ../../../../items | ITEM | Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. Abstrakt typ; instansen anges med xsi:type som en av CLUSTER, ELEMENT. | 0..* |
| ../../../../../archetype_id | ST |  | 0..1 |
| ../../../../../meaning | CD |  | 0..1 |
| ../../../../../name | ST |  | 1..1 |
| ../../../../../orig_parent_ref | II |  | 0..1 |
| ../../../../../policy_ids | II |  | 0..* |
| ../../../../../rc_id | II |  | 1..1 |
| ../../../../../sensitivity | INT |  | 0..1 |
| ../../../../../synthesised | BL |  | 1..1 |
| ../../../../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../../../../follow_link | BL |  | 1..1 |
| ../../../../../../nature | CS |  | 1..1 |
| ../../../../../../role | CD |  | 0..1 |
| ../../../../../../target_type | CD |  | 0..1 |
| ../../../../../../target_id | II |  | 1..* |
| ../../../../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../../../../committer | II |  | 1..1 |
| ../../../../../../ehr_system | II |  | 1..1 |
| ../../../../../../previous_version | II |  | 0..1 |
| ../../../../../../reason_for_revision | CD |  | 0..1 |
| ../../../../../../time_committed | TS |  | 1..1 |
| ../../../../../../version_set_id | II |  | 0..1 |
| ../../../../../../version_status | CS |  | 0..1 |
| ../../../../../emphasis | CD |  | 0..1 |
| ../../../../../item_category | CS |  | 0..1 |
| ../../../../../obs_time | IVL_TS |  | 0..1 |
| ../../../../../cluster | CLUSTER | Element som bara finns när instansen är av subtypen CLUSTER (xsi:type). | 0..1 |
| ../../../../../../structure_type | CS |  | 1..1 |
| ../../../../../../parts | ITEM |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../../../../element | ELEMENT | Element som bara finns när instansen är av subtypen ELEMENT (xsi:type). | 0..1 |
| ../../../../../../value | ANY |  (ISO 21090 ANY, polymorft värde, modellerat som string.) | 0..1 |
| ../../../../info_provider | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| ../../../../../function | CD |  | 0..1 |
| ../../../../../healthcare_facility | II |  | 0..1 |
| ../../../../../mode | CS |  | 0..1 |
| ../../../../../performer | II |  | 1..1 |
| ../../../../../service_setting | CD |  | 0..1 |
| ../../../../other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| ../../../../../function | CD |  | 0..1 |
| ../../../../../healthcare_facility | II |  | 0..1 |
| ../../../../../mode | CS |  | 0..1 |
| ../../../../../performer | II |  | 1..1 |
| ../../../../../service_setting | CD |  | 0..1 |
| ../../../../subject_of_information | RELATED_PARTY | Identifies the relationship of a person to the subject of care. Specifically used in Entry.subject_of_information. | 0..1 |
| ../../../../../party | II |  | 0..1 |
| ../../../../../relationship | ED |  | 1..1 |
| ../criteria | EXTRACT_CRITERIA | Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| ../../all_versions | BL |  | 0..1 |
| ../../archetype_ids | II |  | 0..* |
| ../../max_sensitivity | INT |  | 0..1 |
| ../../multimedia_included | BL |  | 0..1 |
| ../../other_constraints | ST |  | 0..1 |
| ../../time_period | IVL_TS |  | 0..1 |
| ../folders | FOLDER | Organises and groups Compositions within an EHR Extract. | 0..* |
| ../../archetype_id | ST |  | 0..1 |
| ../../meaning | CD |  | 0..1 |
| ../../name | ST |  | 1..1 |
| ../../orig_parent_ref | II |  | 0..1 |
| ../../policy_ids | II |  | 0..* |
| ../../rc_id | II |  | 1..1 |
| ../../sensitivity | INT |  | 0..1 |
| ../../synthesised | BL |  | 1..1 |
| ../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../follow_link | BL |  | 1..1 |
| ../../../nature | CS |  | 1..1 |
| ../../../role | CD |  | 0..1 |
| ../../../target_type | CD |  | 0..1 |
| ../../../target_id | II |  | 1..* |
| ../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../sub_folders | FOLDER |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| ../../../attested_view | ED |  | 0..1 |
| ../../../proof | ED |  | 0..1 |
| ../../../reason_for_attestation | CD |  | 1..1 |
| ../../../time | TS |  | 1..1 |
| ../../../target_rc_id | II |  | 1..* |
| ../../../attester | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 1..1 |
| ../../../../function | CD |  | 0..1 |
| ../../../../healthcare_facility | II |  | 0..1 |
| ../../../../mode | CS |  | 0..1 |
| ../../../../performer | II |  | 1..1 |
| ../../../../service_setting | CD |  | 0..1 |
| ../../composition_rc_ids | ST |  | 0..* |
| ../demographic_extract | IDENTIFIED_ENTITY | Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard. Abstrakt typ; instansen anges med xsi:type som en av SOFTWARE_OR_DEVICE, ORGANISATION, PERSON. | 0..* |
| ../../extract_id | II |  | 1..1 |
| ../../id | II |  | 0..* |
| ../../telecom | TEL |  | 0..* |
| ../../softwareOrDevice | SOFTWARE_OR_DEVICE | Element som bara finns när instansen är av subtypen SOFTWARE_OR_DEVICE (xsi:type). | 0..1 |
| ../../../code | CD |  | 1..1 |
| ../../../desc | ST |  | 1..1 |
| ../../../manufacturerModelName | ST |  | 1..1 |
| ../../../version | ST |  | 0..1 |
| ../../../owningOrganisation_id | ST |  | 0..1 |
| ../../organisation | ORGANISATION | Element som bara finns när instansen är av subtypen ORGANISATION (xsi:type). | 0..1 |
| ../../../code | CD |  | 1..1 |
| ../../../desc | ST |  | 1..1 |
| ../../../name | ST |  | 1..1 |
| ../../../addr | AD |  | 0..* |
| ../../person | PERSON | Element som bara finns när instansen är av subtypen PERSON (xsi:type). | 0..1 |
| ../../../name | EN |  | 0..* |
| ../../../addr | AD |  | 0..* |
| continuation_token | ST |  | 0..1 |
| response_detail | ResponseDetailType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../text | ST |  | 1..1 |
| ../type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |

#### 7.1.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: GetEhrExtractInteraction  
Beskrivning:  
The responder delivers health records on the RIV13606 format  
Revisioner:  
Tjänstedomän: ehr:patientsummary  
Tjänsteinteraktionstyp: Fråga-Svar  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:ehr:patientsummary:GetEhrExtractResponder:1:GetEhrExtract`

#### 7.1.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetEhrExtractInteraction_1.0_RIVTABP21.wsdl](GetEhrExtractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetEhrExtractResponder_1.0.xsd](GetEhrExtractResponder_1.0.xsd) | Tjänsteschema (Responder) |
| [ehr_patientsummary_1.0.xsd](ehr_patientsummary_1.0.xsd) | Domänschema (EN13606-extrakt) |
| [ISO_dt.xsd](ISO_dt.xsd) | ISO 21090-datatyper |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [GetEhrExtractResponder_1.0-request-example1.xml](GetEhrExtractResponder_1.0-request-example1.xml) | Exempelmeddelande |
| [GetEhrExtractResponder_1.0-response-example-CONTRACT.xml](GetEhrExtractResponder_1.0-response-example-CONTRACT.xml) | Exempelmeddelande |
| [GetEhrExtractResponder_1.0-response-example-INTERNAL.xml](GetEhrExtractResponder_1.0-response-example-INTERNAL.xml) | Exempelmeddelande |
| [GetEhrExtractResponder_1.0-response-example-NOINSTANCE.xml](GetEhrExtractResponder_1.0-response-example-NOINSTANCE.xml) | Exempelmeddelande |
| [GetEhrExtractResponder_1.0-response-example.xml](GetEhrExtractResponder_1.0-response-example.xml) | Exempelmeddelande |

#### 7.1.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getehrextract-request](StructureDefinition-getehrextract-request.html)
* **Logisk modell (response):** [StructureDefinition/getehrextract](StructureDefinition-getehrextract.html)
* **Kodsystem:** [CodeSystem/patientsummary-responsedetailtypecodes-cs](CodeSystem-patientsummary-responsedetailtypecodes-cs.html)
* **ValueSet:** [ValueSet/patientsummary-responsedetailtypecodes-vs](ValueSet-patientsummary-responsedetailtypecodes-vs.html)

### ReceiveEhrExtract

*TKB avsnitt 4.*

Tjänst som används för att ta emot detaljerad patientinformation. Tjänsten kan användas då den som äger patientinformation vill publicera den till annan part.

![Flöde för ReceiveEhrExtract](ReceiveEhrExtract-flode.svg)

*Figuren är återskapad ur textrutorna i originalets Word-ritobjekt (se QUESTIONS.md).*

#### 7.2.1 Frivillighet

Tjänsten används för de som på eget initiativ vill dela detaljerad patientinformation, på formatet EN13606, till annan part.

#### 7.2.2 Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

`<huvudversion>.<underversion>`

#### 7.2.3 SLA-krav

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  | Tjänsteproducenten bör ta emot anropet/patientinformationen snabbt. Behandlingen kan sedan ta tid - resultatet av anropet sker genom anrop till ReceiveEhrExtractStatus. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

#### 7.2.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| ehr_extract | EHR_EXTRACT | Detaljerad patientinformation på formatet EN13606. | 1..1 |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten ReceiveEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| success | Boolean | Anger om mottagaren lyckats ta emot innehållet. (Observera att värdet ”true” inte innebär att mottagaren lyckats behandla innehållet. Resultat av behandlingen meddelas genom tjänsten ReceiveEhrExtractStatus.) | 1..1 |

#### 7.2.5 Regler

För statusrapportering vid felaktiga anrop, interna fel eller om ingen patientinformation finns hänvisas till avsnittet 2.2.

För beskrivning på värde för ”ehr_system” (som är en del av svaret) hänvisas till avsnittet 2.4.

”Tomma extrakt” - om inte ”ehr_extract” innehåller någon patientinformation, dvs inte innehåller några ”all_compositions”, ska all tidigare delad information för aktuell patient och aktuell ”ehr_system” tas bort.

Resultatet av behandlingen av anropet meddelas genom anrop till tjänsten ReceiveEhrExtractStatus. Logisk adress för statusanropet är värdet för ”ehr_system” (som hittas i ”ehr_extract”).

#### 7.2.6 Tjänsteinteraktion

ReceiveEhrExtractInteraction

#### 7.2.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och visar hela meddelandestrukturen, inklusive EN13606-extraktet. Beskrivningarna är schemats egna annoteringar (engelska) där sådana finns. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| ehr_extract | EHR_EXTRACT | The root node of an EHR Extract. | 0..* |
| ../authorising_party | II |  | 0..1 |
| ../ehr_id | II |  | 1..1 |
| ../ehr_system | II |  | 1..1 |
| ../subject_of_care | II |  | 1..1 |
| ../time_created | TS |  | 1..1 |
| ../all_compositions | COMPOSITION | Key aggregation class representing the set of Record Components authored and committed during a single clinical encounter. Note the values for territory will indicate the legal framework under which the data was committed. The session_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| ../../archetype_id | ST |  | 0..1 |
| ../../meaning | CD |  | 0..1 |
| ../../name | ST |  | 1..1 |
| ../../orig_parent_ref | II |  | 0..1 |
| ../../policy_ids | II |  | 0..* |
| ../../rc_id | II |  | 1..1 |
| ../../sensitivity | INT |  | 0..1 |
| ../../synthesised | BL |  | 1..1 |
| ../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../follow_link | BL |  | 1..1 |
| ../../../nature | CS |  | 1..1 |
| ../../../role | CD |  | 0..1 |
| ../../../target_type | CD |  | 0..1 |
| ../../../target_id | II |  | 1..* |
| ../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../contribution_id | II |  | 0..1 |
| ../../session_time | IVL_TS |  | 0..1 |
| ../../territory | CS |  | 0..1 |
| ../../attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| ../../../attested_view | ED |  | 0..1 |
| ../../../proof | ED |  | 0..1 |
| ../../../reason_for_attestation | CD |  | 1..1 |
| ../../../time | TS |  | 1..1 |
| ../../../target_rc_id | II |  | 1..* |
| ../../../attester | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 1..1 |
| ../../../../function | CD |  | 0..1 |
| ../../../../healthcare_facility | II |  | 0..1 |
| ../../../../mode | CS |  | 0..1 |
| ../../../../performer | II |  | 1..1 |
| ../../../../service_setting | CD |  | 0..1 |
| ../../other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| ../../../function | CD |  | 0..1 |
| ../../../healthcare_facility | II |  | 0..1 |
| ../../../mode | CS |  | 0..1 |
| ../../../performer | II |  | 1..1 |
| ../../../service_setting | CD |  | 0..1 |
| ../../committal | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 1..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../composer | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| ../../../function | CD |  | 0..1 |
| ../../../healthcare_facility | II |  | 0..1 |
| ../../../mode | CS |  | 0..1 |
| ../../../performer | II |  | 1..1 |
| ../../../service_setting | CD |  | 0..1 |
| ../../content | CONTENT | Superclass of Section and Entry that enables the former to include instances of itself. Abstrakt typ; instansen anges med xsi:type som en av SECTION, ENTRY. | 0..* |
| ../../../archetype_id | ST |  | 0..1 |
| ../../../meaning | CD |  | 0..1 |
| ../../../name | ST |  | 1..1 |
| ../../../orig_parent_ref | II |  | 0..1 |
| ../../../policy_ids | II |  | 0..* |
| ../../../rc_id | II |  | 1..1 |
| ../../../sensitivity | INT |  | 0..1 |
| ../../../synthesised | BL |  | 1..1 |
| ../../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../../follow_link | BL |  | 1..1 |
| ../../../../nature | CS |  | 1..1 |
| ../../../../role | CD |  | 0..1 |
| ../../../../target_type | CD |  | 0..1 |
| ../../../../target_id | II |  | 1..* |
| ../../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../../committer | II |  | 1..1 |
| ../../../../ehr_system | II |  | 1..1 |
| ../../../../previous_version | II |  | 0..1 |
| ../../../../reason_for_revision | CD |  | 0..1 |
| ../../../../time_committed | TS |  | 1..1 |
| ../../../../version_set_id | II |  | 0..1 |
| ../../../../version_status | CS |  | 0..1 |
| ../../../section | SECTION | Element som bara finns när instansen är av subtypen SECTION (xsi:type). | 0..1 |
| ../../../../members | CONTENT |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../../entry | ENTRY | Element som bara finns när instansen är av subtypen ENTRY (xsi:type). | 0..1 |
| ../../../../act_id | ST |  | 0..1 |
| ../../../../act_status | CS |  | 0..1 |
| ../../../../subject_of_information_category | CS |  | 0..1 |
| ../../../../uncertainty_expressed | BL |  | 1..1 |
| ../../../../items | ITEM | Superclass of Cluster and Element that enables the former to include instances of itself. The obs_time should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. Abstrakt typ; instansen anges med xsi:type som en av CLUSTER, ELEMENT. | 0..* |
| ../../../../../archetype_id | ST |  | 0..1 |
| ../../../../../meaning | CD |  | 0..1 |
| ../../../../../name | ST |  | 1..1 |
| ../../../../../orig_parent_ref | II |  | 0..1 |
| ../../../../../policy_ids | II |  | 0..* |
| ../../../../../rc_id | II |  | 1..1 |
| ../../../../../sensitivity | INT |  | 0..1 |
| ../../../../../synthesised | BL |  | 1..1 |
| ../../../../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../../../../follow_link | BL |  | 1..1 |
| ../../../../../../nature | CS |  | 1..1 |
| ../../../../../../role | CD |  | 0..1 |
| ../../../../../../target_type | CD |  | 0..1 |
| ../../../../../../target_id | II |  | 1..* |
| ../../../../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../../../../committer | II |  | 1..1 |
| ../../../../../../ehr_system | II |  | 1..1 |
| ../../../../../../previous_version | II |  | 0..1 |
| ../../../../../../reason_for_revision | CD |  | 0..1 |
| ../../../../../../time_committed | TS |  | 1..1 |
| ../../../../../../version_set_id | II |  | 0..1 |
| ../../../../../../version_status | CS |  | 0..1 |
| ../../../../../emphasis | CD |  | 0..1 |
| ../../../../../item_category | CS |  | 0..1 |
| ../../../../../obs_time | IVL_TS |  | 0..1 |
| ../../../../../cluster | CLUSTER | Element som bara finns när instansen är av subtypen CLUSTER (xsi:type). | 0..1 |
| ../../../../../../structure_type | CS |  | 1..1 |
| ../../../../../../parts | ITEM |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../../../../element | ELEMENT | Element som bara finns när instansen är av subtypen ELEMENT (xsi:type). | 0..1 |
| ../../../../../../value | ANY |  (ISO 21090 ANY, polymorft värde, modellerat som string.) | 0..1 |
| ../../../../info_provider | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..1 |
| ../../../../../function | CD |  | 0..1 |
| ../../../../../healthcare_facility | II |  | 0..1 |
| ../../../../../mode | CS |  | 0..1 |
| ../../../../../performer | II |  | 1..1 |
| ../../../../../service_setting | CD |  | 0..1 |
| ../../../../other_participations | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 0..* |
| ../../../../../function | CD |  | 0..1 |
| ../../../../../healthcare_facility | II |  | 0..1 |
| ../../../../../mode | CS |  | 0..1 |
| ../../../../../performer | II |  | 1..1 |
| ../../../../../service_setting | CD |  | 0..1 |
| ../../../../subject_of_information | RELATED_PARTY | Identifies the relationship of a person to the subject of care. Specifically used in Entry.subject_of_information. | 0..1 |
| ../../../../../party | II |  | 0..1 |
| ../../../../../relationship | ED |  | 1..1 |
| ../criteria | EXTRACT_CRITERIA | Restrictions or filters on the creation of the EHR Extract. The time_period should be a restriction on the data types of low and high to make them TS, but this restriction is not permissible in XML Schema and thus the IVL properties are simply copied here with the appropriate types. | 0..* |
| ../../all_versions | BL |  | 0..1 |
| ../../archetype_ids | II |  | 0..* |
| ../../max_sensitivity | INT |  | 0..1 |
| ../../multimedia_included | BL |  | 0..1 |
| ../../other_constraints | ST |  | 0..1 |
| ../../time_period | IVL_TS |  | 0..1 |
| ../folders | FOLDER | Organises and groups Compositions within an EHR Extract. | 0..* |
| ../../archetype_id | ST |  | 0..1 |
| ../../meaning | CD |  | 0..1 |
| ../../name | ST |  | 1..1 |
| ../../orig_parent_ref | II |  | 0..1 |
| ../../policy_ids | II |  | 0..* |
| ../../rc_id | II |  | 1..1 |
| ../../sensitivity | INT |  | 0..1 |
| ../../synthesised | BL |  | 1..1 |
| ../../links | LINK | Creates a relationship between two Record Components that is orthogonal to the common one of containment. Note that if a recipient is not permitted to see the component linked to, even revealing the link constitutes an inappropriate disclosure. Role is of type CD so that the displayName property of that class can be used in place of any specific coding scheme. | 0..* |
| ../../../follow_link | BL |  | 1..1 |
| ../../../nature | CS |  | 1..1 |
| ../../../role | CD |  | 0..1 |
| ../../../target_type | CD |  | 0..1 |
| ../../../target_id | II |  | 1..* |
| ../../feeder_audit | AUDIT_INFO | The committal and revision data for a Record Component. Note that the invariant is incorrectly stated as constraining "attribute_version_status.coding_scheme_name" in the printed standard. | 0..1 |
| ../../../committer | II |  | 1..1 |
| ../../../ehr_system | II |  | 1..1 |
| ../../../previous_version | II |  | 0..1 |
| ../../../reason_for_revision | CD |  | 0..1 |
| ../../../time_committed | TS |  | 1..1 |
| ../../../version_set_id | II |  | 0..1 |
| ../../../version_status | CS |  | 0..1 |
| ../../sub_folders | FOLDER |  (Rekursiv typ, ej utvecklad.) | 0..* |
| ../../attestations | ATTESTATION_INFO | Any attestations for a Record Component. The proof field should be a cryptographic hash of the RECORD_COMPONENT it attests, but it is recognised that in many implementations the components will change to point to new components that revise them. In that case, the proof should sign the unchanging parts of the component only. | 0..* |
| ../../../attested_view | ED |  | 0..1 |
| ../../../proof | ED |  | 0..1 |
| ../../../reason_for_attestation | CD |  | 1..1 |
| ../../../time | TS |  | 1..1 |
| ../../../target_rc_id | II |  | 1..* |
| ../../../attester | FUNCTIONAL_ROLE | The participation of an entity in the EHR. | 1..1 |
| ../../../../function | CD |  | 0..1 |
| ../../../../healthcare_facility | II |  | 0..1 |
| ../../../../mode | CS |  | 0..1 |
| ../../../../performer | II |  | 1..1 |
| ../../../../service_setting | CD |  | 0..1 |
| ../../composition_rc_ids | ST |  | 0..* |
| ../demographic_extract | IDENTIFIED_ENTITY | Superclass of all identified parties to the record. Note that the type of id is not given in the printed class description but is included in the class diagram on page 47 of the standard. Abstrakt typ; instansen anges med xsi:type som en av SOFTWARE_OR_DEVICE, ORGANISATION, PERSON. | 0..* |
| ../../extract_id | II |  | 1..1 |
| ../../id | II |  | 0..* |
| ../../telecom | TEL |  | 0..* |
| ../../softwareOrDevice | SOFTWARE_OR_DEVICE | Element som bara finns när instansen är av subtypen SOFTWARE_OR_DEVICE (xsi:type). | 0..1 |
| ../../../code | CD |  | 1..1 |
| ../../../desc | ST |  | 1..1 |
| ../../../manufacturerModelName | ST |  | 1..1 |
| ../../../version | ST |  | 0..1 |
| ../../../owningOrganisation_id | ST |  | 0..1 |
| ../../organisation | ORGANISATION | Element som bara finns när instansen är av subtypen ORGANISATION (xsi:type). | 0..1 |
| ../../../code | CD |  | 1..1 |
| ../../../desc | ST |  | 1..1 |
| ../../../name | ST |  | 1..1 |
| ../../../addr | AD |  | 0..* |
| ../../person | PERSON | Element som bara finns när instansen är av subtypen PERSON (xsi:type). | 0..1 |
| ../../../name | EN |  | 0..* |
| ../../../addr | AD |  | 0..* |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |

#### 7.2.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: ReceiveEhrExtractInteraction  
Beskrivning:  
The initiator delivers health records on the RIV13606 format  
Revisioner:  
Tjänstedomän: ehr:patientsummary  
Tjänsteinteraktionstyp: Uppdrag-Resultat  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:ehr:patientsummary:ReceiveEhrExtractResponder:1:ReceiveEhrExtract`

#### 7.2.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ReceiveEhrExtractInteraction_1.0_RIVTABP21.wsdl](ReceiveEhrExtractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [ReceiveEhrExtractResponder_1.0.xsd](ReceiveEhrExtractResponder_1.0.xsd) | Tjänsteschema (Responder) |
| [ehr_patientsummary_1.0.xsd](ehr_patientsummary_1.0.xsd) | Domänschema (EN13606-extrakt) |
| [ISO_dt.xsd](ISO_dt.xsd) | ISO 21090-datatyper |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/receiveehrextract-request](StructureDefinition-receiveehrextract-request.html)
* **Logisk modell (response):** [StructureDefinition/receiveehrextract](StructureDefinition-receiveehrextract.html)

### ReceiveEhrExtractStatus

*TKB avsnitt 5.*

Tjänst används för att ta emot status efter ett anrop till ReceiveEhrExtract. Då EN13606 skickas till annan part, genom tjänsten ReceiveEhrExtract, kommer resultatet av behandlingen meddelas genom anrop till ReceiveEhrExtractStatus.

Den logiska adress som används för att anropa denna tjänst är det värde som skickades för ”ehr_system” i anropet till tjänsten ReceiveEhrExtract.

Se även bild i avsnitt 4.

#### 7.3.1 Frivillighet

Tjänsten är obligatorisk för parter som delar sin information med tjänsten ReceiveEhrExtract.

#### 7.3.2 Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

`<huvudversion>.<underversion>`

#### 7.3.3 SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  | Om en tjänstekonsument delat information med hjälp av tjänsten ReceiveEhrExtract är interaktionen ReceiveEhrExtractStatus kvittot/resultatet på delningen. Om kvittot uteblir ska informationen som skickades i ReceiveEhrExtract betraktas som odelad. Hur lång tid som får förflyta mellan ReceiveEhrExtract och ReceiveEhrExtractStatus är en överrenskommelse mellan respektive tjänstekonsument och tjänsteproducent. |

#### 7.3.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| parameters | ParameterType | Transaktions-id: detta är samma värde som användes i anropet till tjänsten ReceiveEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten ReceiveEhrExtract. | 1..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |
| Svar |  |  |  |
| success | Boolean | Resultatet av anropet. | 1..1 |

#### 7.3.5 Regler

För innehållet i ”response_detail” hänvisas till avsnittet 2.2.

Svaret ska vara ”true” om anropet var korrekt samt att det går att härleda innehållet till ett tidigare anrop till ReceiveEhrExtract, annars ska ”false” returneras.

#### 7.3.6 Tjänsteinteraktion

ReceiveEhrExtractInteraction

#### 7.3.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och visar hela meddelandestrukturen, inklusive EN13606-extraktet. Beskrivningarna är schemats egna annoteringar (engelska) där sådana finns. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| response_detail | ResponseDetailType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../text | ST |  | 1..1 |
| ../type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |

#### 7.3.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: ReceiveEhrExtractInteraction  
Beskrivning:  
The initiator delivers health records on the RIV13606 format  
Revisioner:  
Tjänstedomän: ehr:patientsummary  
Tjänsteinteraktionstyp: Uppdrag-Resultat  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:ehr:patientsummary:ReceiveEhrExtractStatusInitiator:1:ReceiveEhrExtractStatus`

#### 7.3.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [ReceiveEhrExtractInteraction_1.0_RIVTABP21.wsdl](ReceiveEhrExtractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [ReceiveEhrExtractInitiator_1.0.xsd](ReceiveEhrExtractInitiator_1.0.xsd) | Tjänsteschema (Initiator) |
| [ehr_patientsummary_1.0.xsd](ehr_patientsummary_1.0.xsd) | Domänschema (EN13606-extrakt) |
| [ISO_dt.xsd](ISO_dt.xsd) | ISO 21090-datatyper |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.3.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/receiveehrextractstatus-request](StructureDefinition-receiveehrextractstatus-request.html)
* **Logisk modell (response):** [StructureDefinition/receiveehrextractstatus](StructureDefinition-receiveehrextractstatus.html)
* **Kodsystem:** [CodeSystem/patientsummary-responsedetailtypecodes-cs](CodeSystem-patientsummary-responsedetailtypecodes-cs.html)
* **ValueSet:** [ValueSet/patientsummary-responsedetailtypecodes-vs](ValueSet-patientsummary-responsedetailtypecodes-vs.html)

### DeleteEhrExtract

*TKB avsnitt 6.*

Tjänst som används för att ta bort information som delats genom tjänsten ReceiveEhrExtract.

![Flöde för DeleteEhrExtract](DeleteEhrExtract-flode.svg)

*Figuren är återskapad ur textrutorna i originalets Word-ritobjekt (se QUESTIONS.md).*

#### 7.4.1 Frivillighet

Tjänsten är frivillig och kan användas för att ta bort information som delats genom tjänsten ReceiveEhrExtract. (Tjänsten ReceiveEhrExtract kan också användas för ”grov” borttagning, vilket beskrivs mer i avsnitt 4.5 - se ”tomma extrakt”.)

#### 7.4.2 Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

`<huvudversion>.<underversion>`

#### 7.4.3 SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  | Tjänsteproducenten bör ta emot anropet/patientinformationen snabbt. Behandlingen kan sedan ta tid - resultatet av anropet sker genom anrop till DeleteEhrExtractStatus. |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  |  |

#### 7.4.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| ehr_system | II | Det värde som skickades för patientinformationen då anrop till tjänsten ReceiveEhrExtract gjordes. | 1..1 |
| subject_of_care | II | Id för patienten. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. | 1..1 |
| deletion | DeletionType | Innehåller par av rcId och meaning. <br> rcId: <br> Globalt unikt id för posten som ska tas bort. Det värde som skickades då anrop till tjänsten ReceiveEhrExtract gjordes. (Värdet hittas i ”ehr_extract.all_compositions.rc_id”.) <br> meaning: <br> Den huvudinformationstyp som posten (som ska tas bort) gäller för. | 1..* |
| parameters | ParameterType | Transaktions-id: globalt unik identifierare för det aktuella anropet. Används för återrapportering av hur behandlingen gick (genom tjänsten DeleteEhrExtractStatus) samt till fel- och/eller debugsökning. Värdet anges med nyckeln ”transaction_id”. Längden på detta värde får inte överstiga 256 tecken. | 1..1 |
| Svar |  |  |  |
| success | Boolean | Anger om mottagaren lyckats ta emot innehållet. (Observera att värdet ”true” inte innebär att mottagaren lyckats behandla innehållet. Resultat av behandlingen meddelas genom tjänsten DeleteEhrExtractStatus.) | 1..1 |

#### 7.4.5 Regler

För statusrapportering vid felaktiga anrop, interna fel eller om ingen patientinformation finns hänvisas till avsnittet 2.2.

För ytterligare beskrivning på värde för ”ehr_system” hänvisas till avsnittet 2.4.

Resultatet av behandlingen av anropet meddelas genom anrop till tjänsten DeleteEhrExtractStatus. Logisk adress för det efterkommande statusanropet är värdet för ”ehr_system” (i anropet till DeleteEhrExtract).

#### 7.4.6 Tjänsteinteraktion

DeleteEhrExtractInteraction

#### 7.4.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och visar hela meddelandestrukturen, inklusive EN13606-extraktet. Beskrivningarna är schemats egna annoteringar (engelska) där sådana finns. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| ehr_system | II |  | 1..1 |
| subject_of_care | II |  | 1..1 |
| deletion | DeletionType |  | 1..* |
| ../rc_id | II |  | 1..1 |
| ../meaning | CD |  | 1..1 |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |

#### 7.4.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: DeleteEhrExtractInteraction  
Beskrivning:  
The initiator requests a deletion of health records on the RIV13606 format  
Revisioner:  
Tjänstedomän: ehr:patientsummary  
Tjänsteinteraktionstyp: Uppdrag-Resultat  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:ehr:patientsummary:DeleteEhrExtractResponder:1:DeleteEhrExtract`

#### 7.4.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteEhrExtractInteraction_1.0_RIVTABP21.wsdl](DeleteEhrExtractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [DeleteEhrExtractResponder_1.0.xsd](DeleteEhrExtractResponder_1.0.xsd) | Tjänsteschema (Responder) |
| [ehr_patientsummary_1.0.xsd](ehr_patientsummary_1.0.xsd) | Domänschema (EN13606-extrakt) |
| [ISO_dt.xsd](ISO_dt.xsd) | ISO 21090-datatyper |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.4.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/deleteehrextract-request](StructureDefinition-deleteehrextract-request.html)
* **Logisk modell (response):** [StructureDefinition/deleteehrextract](StructureDefinition-deleteehrextract.html)

### DeleteEhrExtractStatus

*TKB avsnitt 7.*

Tjänst används för att ta emot status efter ett anrop till DeleteEhrExtract. Då begäran om borttagning skickas till annan part, genom tjänsten DeleteEhrExtract, kommer resultatet av borttaget meddelas genom anrop till DeleteEhrExtractStatus.

Den logiska adress som används för att anropa denna tjänst är det värde som skickades som skickades för ”ehr_system” i anropet till tjänsten DeleteEhrExtract.

#### 7.5.1 Frivillighet

Tjänsten är obligatorisk för parter som använder tjänsten DeleteEhrExtract.

#### 7.5.2 Version

Detta är en endast som remissversion i nuläget, men den första versionen som kommer publiceras är 1.0.

`<huvudversion>.<underversion>`

#### 7.5.3 SLA-krav

Inledande beskrivning

| Kategori | Värde | Kommentar |
|---|---|---|
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet |  | Om en tjänstekonsument försökt ta bort tidigare delad information med hjälp av tjänsten DeleteEhrExtract är interaktionen DeleteEhrExtractStatus kvittot/resultatet av borttaget. Om kvittot uteblir ska borttagningsbegäran som skickades i DeleteEhrExtract betraktas som ej hanterad. Hur lång tid som får förflyta mellan DeleteEhrExtract och DeleteEhrExtractStatus är en överrenskommelse mellan respektive tjänstekonsument och tjänsteproducent. |

#### 7.5.4 Fältregler

| Namn | Typ | Kommentar | Kardi-nalitet |
|---|---|---|---|
| Begäran |  |  |  |
| parameters | ParameterType | Transaktions-id: detta är samma värde som användes i anropet till tjänsten DeleteEhrExtract. Med hjälp av detta värde går det koppla samman statusanropet med ett tidigare anrop till tjänsten DeleteEhrExtract. | 1..1 |
| response_detail | ResponseDetailType | Fel-, varnings- och/eller informationsmeddelanden. | 0..* |
| Svar |  |  |  |
| success | Boolean | Resultatet av anropet. | 1..1 |

#### 7.5.5 Regler

För innehållet i ”response_detail” hänvisas till avsnittet 2.2.

Svaret ska vara ”true” om anropet var korrekt samt att det går att härleda innehållet till ett tidigare anrop till DeleteEhrExtract, annars ska ”false” returneras.

#### 7.5.6 Tjänsteinteraktion

DeleteEhrExtractInteraction.

#### 7.5.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat och visar hela meddelandestrukturen, inklusive EN13606-extraktet. Beskrivningarna är schemats egna annoteringar (engelska) där sådana finns. Typerna beskrivs i [8 Datatyper](8-datatyper.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| parameters | ParameterType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../name | ST |  | 1..1 |
| ../value | ST |  | 1..1 |
| response_detail | ResponseDetailType |  | 0..* |
| ../code | CD |  | 0..1 |
| ../text | ST |  | 1..1 |
| ../type_code | ResponseDetailTypeCodes | (XML-attribut.) | 0..1 |
| **Svar** | | | |
| success | boolean |  | 1..1 |

#### 7.5.8 Tjänsteinteraktion enligt WSDL

Tjänsteinteraktionens namn: DeleteEhrExtractInteraction  
Beskrivning:  
The initiator requests a deletion of health records on the RIV13606 format  
Revisioner:  
Tjänstedomän: ehr:patientsummary  
Tjänsteinteraktionstyp: Uppdrag-Resultat  
WS-profil: RIVTABP21  
Förvaltas av: Sveriges Kommuner och Landsting

SOAPAction: `urn:riv:ehr:patientsummary:DeleteEhrExtractStatusInitiator:1:DeleteEhrExtractStatus`

#### 7.5.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteEhrExtractInteraction_1.0_RIVTABP21.wsdl](DeleteEhrExtractInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [DeleteEhrExtractInitiator_1.0.xsd](DeleteEhrExtractInitiator_1.0.xsd) | Tjänsteschema (Initiator) |
| [ehr_patientsummary_1.0.xsd](ehr_patientsummary_1.0.xsd) | Domänschema (EN13606-extrakt) |
| [ISO_dt.xsd](ISO_dt.xsd) | ISO 21090-datatyper |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.5.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/deleteehrextractstatus-request](StructureDefinition-deleteehrextractstatus-request.html)
* **Logisk modell (response):** [StructureDefinition/deleteehrextractstatus](StructureDefinition-deleteehrextractstatus.html)
* **Kodsystem:** [CodeSystem/patientsummary-responsedetailtypecodes-cs](CodeSystem-patientsummary-responsedetailtypecodes-cs.html)
* **ValueSet:** [ValueSet/patientsummary-responsedetailtypecodes-vs](ValueSet-patientsummary-responsedetailtypecodes-vs.html)
