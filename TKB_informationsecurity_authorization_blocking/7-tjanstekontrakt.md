# 7 Tjänstekontrakt - informationsecurity: authorization: blocking v4.0.4

* [**Table of Contents**](toc.md)
* **7 Tjänstekontrakt**

## 7 Tjänstekontrakt

# 7 Tjänstekontrakt

Källa: **Spärr**, tjänstekontraktsbeskrivning version 4.0.4 (2024-10-18), [TKB_informationsecurity_authorization_blocking.docx](TKB_informationsecurity_authorization_blocking.docx).

Motsvarar TKB kapitel 6 **Tjänstekontrakt** (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetBlocks

Tjänst som hämtar registrerade spärrar för en patient och/eller vårdgivare. Endast aktiva spärrar returneras (ej makulerade eller permanent hävda). Varje spärr kompletteras också med aktiva tillfälliga hävningar om sådana finns.

Det går även att ange ett datum (CreatedOnOrAfter) från när man önskar inhämta nyare uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Detta inkluderar även tillfälliga hävningar som skett efter angivet datum. Här avses datum då spärruppgiften lagrades i tjänsten.

#### 7.1.1 Version

4.0

#### 7.1.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Ej obligatorisk patientidentitet såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 0..1 |
| careProviderIds | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Ej obligatorisk lista med HSA-id på de vårdgivare vars spärrar skall hämtas. | 0..* |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla spärrobjekt som skall hämtas. Om angivet returneras endast spärrar och/eller tillfälliga hävningar lagrade/förändrade i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| Svar |   |   |   |
| blockHeader | urn:riv:informationsecurity:authorization:blocking:4:BlockHeaderType | Lista över funna spärrar som är aktiva. | 1..1 |

#### 7.1.3 Övriga regler

N/A

##### 7.1.3.1 Icke funktionella krav

N/A

###### 7.1.3.1.1 SLA-krav

Följande SLA-krav gäller för producenter av detta tjänstekontrakt.

| | | |
| :--- | :--- | :--- |
| Svarstid | < 10 sekund för 95% av alla anrop | För de fall då man anropar tjänsten med varken vårdgivarId eller patientId. I övrigt enligt kap 4.4.1 |

#### 7.1.4 Annan information om kontraktet

N/A

#### 7.1.5 Exempel

##### 7.1.5.1 Exempel på anrop

Följande XML visar strukturen på ett anrop till tjänsten.

Se GetBlocksRequest.xml

##### 7.1.5.2 Exempel på svar

Följande XML visar strukturen på svarsmeddelandet från tjänsten.

Se GetBlocksRespons.xml

#### 7.1.6 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| patientId | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| careProviderIds | HsaId |   | 0..* |
| createdOnOrAfter | dateTime |   | 0..1 |
| **Svar** |   |   |   |
| blockHeader | BlockHeaderType | Datatyp som representerar spärrdata, antingen innehållandes endast spärrdata, eller spärrdata tillsammans med avregistrerade spärrar, beroende på hur klienten efterfrågat data. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../blocks | BlockType | Datatyp som representerar en existerande spärr med alla dess attribut. Datatypen beskriver grundformatet för en spärr. | 0..* |
| ../../blockId | Id |   | 1..1 |
| ../../blockType | BlockTypeType |   | 1..1 |
| ../../informationStartDate | dateTime |   | 0..1 |
| ../../informationEndDate | dateTime |   | 0..1 |
| ../../informationCareUnitId | HsaId |   | 0..1 |
| ../../informationCareProviderId | HsaId |   | 1..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| ../../../infoTypeId | InformationTypeIdValue |   | 1..1 |
| ../../../infoTypeDescription | InformationTypeDescription |   | 1..1 |
| ../../temporaryRevokes | TemporaryRevokeType | Datatyp som representerar en tillfällig hävning för en spärr med alla dess attribut. En tillfällig hävning tillhör alltid en spärr. Datatypen beskriver grundformatet för en tillfällig hävning. | 0..* |
| ../../../temporaryRevokeId | Id |   | 1..1 |
| ../../../endDate | dateTime |   | 1..1 |
| ../../../revokedForCareUnitId | HsaId |   | 1..1 |
| ../../../revokedForEmployeeId | HsaId |   | 0..1 |
| ../../../ownerId | OwnerId |   | 0..1 |
| ../../ownerId | OwnerId |   | 0..1 |
| ../nextCreatedOnOrAfter | dateTime |   | 1..1 |
| ../latestCancellation | dateTime |   | 1..1 |

#### 7.1.7 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:GetBlocksResponder:4:GetBlocks`

#### 7.1.8 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetBlocksInteraction_4.0_RIVTABP21.wsdl](GetBlocksInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetBlocksResponder_4.0.xsd](GetBlocksResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetBlocks_4.0.docx](SjD_TK_GetBlocks_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.1.9 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getblocks-request](StructureDefinition-getblocks-request.md)
* **Logisk modell (response):** [StructureDefinition/getblocks](StructureDefinition-getblocks.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-blocktype-cs](CodeSystem-authorization-blocking-blocktype-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-blocktype-vs](ValueSet-authorization-blocking-blocktype-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### GetExtendedBlocksForPatient

Tjänst som läser alla spärrar för en viss patient och organisation. Varje spärr innehåller också tillfälliga hävningar om sådana finns.

Tjänsten returnerar även makulerade och permanent hävda spärrar, samt tidigare gjorda tillfälliga hävningar, för att ge ett historikunderlag (vad som har hänt med patientens spärrar tidigare).

Tjänsten används för att på lokal nivå kunna söka fram och administrera patientens spärrar och dess eventuella tillfälliga hävningar för en viss vårdgivare.

#### 7.2.1 Version

4.0

#### 7.2.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används. Har namnet en * finns ytterligare regler för detta element och beskrivs mer i detalj i avsnittet Övriga regler.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer vars spärrar skall hämtas. | 1..1 |
| Svar |   |   |   |
| getExtendedBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:GetExtendedBlocksResultType | Svaret består av en spärrlista enligt det utökade, lokala spärrformatet. | 1..1 |

#### 7.2.3 Övriga regler

N/A

##### 7.2.3.1 Icke funktionella krav

N/A

###### 7.2.3.1.1 SLA-krav

N/A

#### 7.2.4 Exempel

##### 7.2.4.1 Exempel på anrop

Se GetExtendedBlocksForPatientRequest.xml

##### 7.2.4.2 Exempel på svar

Se GetExtendedBlocksForPatientRespons.xml

#### 7.2.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| careProviderId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| **Svar** |   |   |   |
| getExtendedBlocksResult | GetExtendedBlocksResultType | Datatyp som innehåller resultatet från tjänsten GetExtendedBlocksForPatient. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../blocks | ExtendedBlockType | Datatyp som representerar en spärr enligt det utökade formatet. | 0..* |
| ../../blockId | Id |   | 1..1 |
| ../../blockType | BlockTypeType |   | 1..1 |
| ../../informationStartDate | dateTime |   | 0..1 |
| ../../informationEndDate | dateTime |   | 0..1 |
| ../../informationCareUnitId | HsaId |   | 0..1 |
| ../../informationCareProviderId | HsaId |   | 1..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |   | 1..1 |
| ../../../extension | string |   | 0..1 |
| ../../excludedInformationTypes | InformationTypeType | Datatyp som representerar de Informationstyper som kan undantas från att spärras. En spärr gäller normalt alla informationstyper. Denna lista utgör de informationstyper som kan undantas från att spärras. Om försök görs att registrera en spärr innehållandes en okänd informationstyp skall spärrtjänsten att neka detta. lak Läkemedel - Ordination/förskrivning upp Uppmärksamhetsinformation | 0..* |
| ../../../infoTypeId | InformationTypeIdValue |   | 1..1 |
| ../../../infoTypeDescription | InformationTypeDescription |   | 1..1 |
| ../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../requestDate | dateTime |   | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../registrationDate | dateTime |   | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../reasonText | ReasonText |   | 0..1 |
| ../../permanentRevokedInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |   | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../registrationDate | dateTime |   | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../reasonText | ReasonText |   | 0..1 |
| ../../deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |   | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../registrationDate | dateTime |   | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |   | 1..1 |
| ../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../reasonText | ReasonText |   | 0..1 |
| ../../temporaryRevokes | ExtendedTemporaryRevokeType | Datatyp som representerar en tillfällig hävning enligt det utökade formatet. | 0..* |
| ../../../temporaryRevokeId | Id |   | 1..1 |
| ../../../endDate | dateTime |   | 1..1 |
| ../../../revokedForCareUnitId | HsaId |   | 1..1 |
| ../../../revokedForEmployeeId | HsaId |   | 0..1 |
| ../../../revocationReason | TemporaryRevokeReasonType |   | 0..1 |
| ../../../revocationReasonText | ReasonText |   | 0..1 |
| ../../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../../requestDate | dateTime |   | 1..1 |
| ../../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |   | 1..1 |
| ../../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../../registrationDate | dateTime |   | 1..1 |
| ../../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |   | 1..1 |
| ../../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../../reasonText | ReasonText |   | 0..1 |
| ../../../cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../../requestDate | dateTime |   | 1..1 |
| ../../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |   | 1..1 |
| ../../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../../registrationDate | dateTime |   | 1..1 |
| ../../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../../employeeId | HsaId |   | 1..1 |
| ../../../../../assignmentId | HsaId |   | 0..1 |
| ../../../../../assignmentName | AssignmentNameType |   | 0..1 |
| ../../../../reasonText | ReasonText |   | 0..1 |
| ../../../ownerId | OwnerId |   | 0..1 |
| ../../ownerId | OwnerId |   | 0..1 |
| ../../locallyCreated | boolean |   | 1..1 |

#### 7.2.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:GetExtendedBlocksForPatientResponder:4:GetExtendedBlocksForPatient`

#### 7.2.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetExtendedBlocksForPatientInteraction_4.0_RIVTABP21.wsdl](GetExtendedBlocksForPatientInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetExtendedBlocksForPatientResponder_4.0.xsd](GetExtendedBlocksForPatientResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.2.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getextendedblocksforpatient-request](StructureDefinition-getextendedblocksforpatient-request.md)
* **Logisk modell (response):** [StructureDefinition/getextendedblocksforpatient](StructureDefinition-getextendedblocksforpatient.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-blocktype-cs](CodeSystem-authorization-blocking-blocktype-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-blocktype-vs](ValueSet-authorization-blocking-blocktype-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-temporaryrevokereason-cs](CodeSystem-authorization-blocking-temporaryrevokereason-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-temporaryrevokereason-vs](ValueSet-authorization-blocking-temporaryrevokereason-vs.md)

### GetPatientIds

Tjänst som läser alla patienter med minst en aktivt spärr för en viss organisation. Endast en distinkt lista med unika patienter returneras.

Konsumerande system anger vilken vårdgivare som ska omfattas av sökningen.

#### 7.3.1 Version

4.0

#### 7.3.2 Fältregler

Nedanstående tabell beskriver varje element i begäran och svar samt vilka datatyper som används.

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| careProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | HSA-id på den vårdgivare vars spärrar skall hämtas. | 1..1 |
| Svar |   |   |   |
| getPatientIdResult | urn:riv:informationsecurity:authorization:blocking:4:GetPatientIdResultType | Lista över unika patienter som har aktiva spärrar. | 1..1 |

#### 7.3.3 Övriga regler

N/A

##### 7.3.3.1 Icke funktionella krav

N/A

###### 7.3.3.1.1 SLA-krav

N/A

#### 7.3.4 Exempel

##### 7.3.4.1 Exempel på anrop

Se GetPatientIdsRequest.xml

##### 7.3.4.2 Exempel på svar

Se GetPatientIdsRespons.xml

#### 7.3.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| careProviderId | HsaId |   | 1..1 |
| **Svar** |   |   |   |
| getPatientIdResult | GetPatientIdResultType | Datatyp som innehåller resultatet från tjänsten GetPatientIdsForCareProvider. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../patientIds | IIType | En universellt unik identifierare. | 0..* |
| ../../root | string |   | 1..1 |
| ../../extension | string |   | 0..1 |

#### 7.3.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:GetPatientIdsResponder:4:GetPatientIds`

#### 7.3.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [GetPatientIdsInteraction_4.0_RIVTABP21.wsdl](GetPatientIdsInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetPatientIdsResponder_4.0.xsd](GetPatientIdsResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetPatientIds_4.0.docx](SjD_TK_GetPatientIds_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.3.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getpatientids-request](StructureDefinition-getpatientids-request.md)
* **Logisk modell (response):** [StructureDefinition/getpatientids](StructureDefinition-getpatientids.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### CheckBlocks

Tjänst som kontrollerar om given information är spärrad eller inte. Den utvärderar alla spärrar som gäller mot andra vårdgivare/vårdenheter som finns i tjänsten och om någon spärr är helt applicerbar för given information och tillfälle kommer tjänsten att markera den informationen som spärrad. Om det finns minst en tillfällig hävning för spärren som applicerar på den angivna aktören blir informationen ospärrad.

Denna tjänst kan användas då tjänstekonsumenten inte själv kan avgöra/kontrollera om information är spärrad eller inte. Tjänsten stödjer kontroll av flertal informationsmängder i ett och samma anrop.

Evalueringen av huruvida informationen är spärrad eller ej görs enligt följande:

* Om spärr föreligger (inre eller yttre) blir informationen spärrad.
* Om undantag av spärr för 'lak' och/eller 'upp' har angivets blir denna information EJ spärrad.
* Om spärren inte innehåller någon giltighetstid blir informationen spärrad.
* Om tidsspannet för informationen ligger inom spärrens giltighetstid blir informationen spärrad.
* Om spärrens giltighetstid delvis överlappar tidsspannet (start- eller sluttid) för informationen blir informationen spärrad.
* Om tidsspannet för informationen ligger helt utanför spärrens giltighetstid blir informationen EJ spärrad.

e-Tjänster på nationell nivå kräver ett komplett spärrunderlag.

#### 7.4.1 Version.

4.0

#### 7.4.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| accessingActor | urn:riv:informationsecurity:authorization:blocking:4:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten vars information aktören önskar åtkomst till. | 1..1 |
| informationEntities | urn:riv:informationsecurity:authorization:blocking:4:InformationEntityType | Lista över de informationsentiteter som aktören önskar åtkomst till. | 1..* |
| Svar |   |   |   |
| checkBlocksResult | urn:riv:informationsecurity:authorization:blocking:4:CheckBlocksResultType | Lista med resultat motsvarande den informationslista som angavs som inparameter. | 1..1 |

#### 7.4.3 Övriga regler

Parametrar till tjänsten skall valideras och resultera i resultkoden VALIDATIONERROR om dessa är felaktiga. Informationsresurser och dess fält skall valideras och hanteras separat. Ogiltiga eller felaktiga fält i informationsresursen skall resultera i VALIDATIONERROR på resursnivå, dvs felkoden ges per informationsresurs i CheckBlocksResult med CheckStatus.

Om någon informationsresurs får valideringsfel skall tjänsten returnera felkoden INFO med meddelandet "Informationsresurs(er) innehåller valideringsfel".

Tjänsten skall hantera valfria informationstyper samt tomma/icke existerande värden.

Alla andra värden än de definierade i kontraktet hanteras som en uppgift av ospecificerad typ i den kontroll som tjänsten utför.

##### 7.4.3.1 Icke funktionella krav

N/A

###### 7.4.3.1.1 SLA-krav

N/A

#### 7.4.4 Exempel

##### 7.4.4.1 Exempel på anrop

Se CheckBlocksRequest.xml

##### 7.4.4.2 Exempel på svar

Se CheckBlocksRespons.xml

#### 7.4.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| accessingActor | AccessingActorType | Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information. | 1..1 |
| ../employeeId | HsaId |   | 1..1 |
| ../careProviderId | HsaId |   | 1..1 |
| ../careUnitId | HsaId |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| informationEntities | InformationEntityType | Datatyp som representerar den information som behövs vid en kontroll om spärr föreligger. | 1..* |
| ../informationStartDate | dateTime |   | 1..1 |
| ../informationEndDate | dateTime |   | 1..1 |
| ../informationCareUnitId | HsaId |   | 1..1 |
| ../informationCareProviderId | HsaId |   | 1..1 |
| ../informationType | InformationTypeIdValue |   | 0..1 |
| ../rowNumber | int |   | 1..1 |
| **Svar** |   |   |   |
| checkBlocksResult | CheckBlocksResultType | Datatyp som innehåller resultatet från tjänsten CheckBlocks. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |   | 1..1 |
| ../../resultText | string |   | 0..1 |
| ../checkResults | CheckResultType | Datatyp som representerar ett svar från kontrollen av åtkomst till information. | 0..* |
| ../../status | CheckStatusType |   | 1..1 |
| ../../rowNumber | int |   | 1..1 |

#### 7.4.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:CheckBlocksResponder:4:CheckBlocks`

#### 7.4.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [CheckBlocksInteraction_4.0_RIVTABP21.wsdl](CheckBlocksInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [CheckBlocksResponder_4.0.xsd](CheckBlocksResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_CheckBlocks_4.0.docx](SjD_TK_CheckBlocks_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.4.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/checkblocks-request](StructureDefinition-checkblocks-request.md)
* **Logisk modell (response):** [StructureDefinition/checkblocks](StructureDefinition-checkblocks.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-checkstatus-cs](CodeSystem-authorization-blocking-checkstatus-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-checkstatus-vs](ValueSet-authorization-blocking-checkstatus-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### RegisterBlock

Tjänst som registrerar en ny spärr i den nationella spärrtjänsten (den aggregerade/replikerade spärrinformationen).

En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen. Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.

Tjänsten används för att synkronisera en lokal spärr till den nationella spärrtjänsten.

#### 7.5.1 Version

4.0

#### 7.5.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Anropande system ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Ej obligatorisk lista med tillfälliga hävningar. Detta möjliggör registrering/överföring av en spärr och tillhörande hävningar på en och samma gång. Denna lista lämnas tom i normalfallet. | 0..* |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.5.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### 7.5.3.1 Icke funktionella krav

N/A

###### 7.5.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |   |

#### 7.5.4 Exempel

##### 7.5.4.1 Exempel på anrop

Se RegisterBlockRequest.xml

##### 7.5.4.2 Exempel på svar

Se RegisterBlockRespons.xml

#### 7.5.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| blockId | Id |   | 1..1 |
| blockType | BlockTypeType |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| informationStartDate | dateTime |   | 0..1 |
| informationEndDate | dateTime |   | 0..1 |
| informationCareUnitId | HsaId |   | 0..1 |
| informationCareProviderId | HsaId |   | 1..1 |
| excludedInformationTypes | InformationTypeIdValue |   | 0..* |
| temporaryRevokeRegistration | TemporaryRevokeRegistrationType | Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs. | 0..* |
| ../temporaryRevokeId | Id |   | 1..1 |
| ../blockId | Id |   | 1..1 |
| ../endDate | dateTime |   | 1..1 |
| ../revokedForCareUnitId | HsaId |   | 1..1 |
| ../revokedForEmployeeId | HsaId |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.5.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:RegisterBlockResponder:4:RegisterBlock`

#### 7.5.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [RegisterBlockInteraction_4.0_RIVTABP21.wsdl](RegisterBlockInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RegisterBlockResponder_4.0.xsd](RegisterBlockResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_RegisterBlock_4.0.docx](SjD_TK_RegisterBlock_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.5.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/registerblock-request](StructureDefinition-registerblock-request.md)
* **Logisk modell (response):** [StructureDefinition/registerblock](StructureDefinition-registerblock.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-blocktype-cs](CodeSystem-authorization-blocking-blocktype-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-blocktype-vs](ValueSet-authorization-blocking-blocktype-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### UnregisterBlock

Tjänst som avregistrerar/raderar en befintlig spärr i den nationella spärrtjänsten, om spärren finns.

Tjänsten används för att synkronisera borttag av en lokal spärr till den nationella spärrtjänsten.

#### 7.6.1 Version

4.0

#### 7.6.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.6.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### 7.6.3.1 Icke funktionella krav

N/A

###### 7.6.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |   |

#### 7.6.4 Exempel

##### 7.6.4.1 Exempel på anrop

Se UnregisterBlockRequest.xml

##### 7.6.4.2 Exempel på svar

Se UnregisterBlockRespons.xml

#### 7.6.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| blockId | Id |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.6.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:UnregisterBlockResponder:4:UnregisterBlock`

#### 7.6.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UnregisterBlockInteraction_4.0_RIVTABP21.wsdl](UnregisterBlockInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UnregisterBlockResponder_4.0.xsd](UnregisterBlockResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_UnregisterBlock_4.0.docx](SjD_TK_UnregisterBlock_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.6.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/unregisterblock-request](StructureDefinition-unregisterblock-request.md)
* **Logisk modell (response):** [StructureDefinition/unregisterblock](StructureDefinition-unregisterblock.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### RegisterTemporaryRevoke

Tjänst som registrerar en tillfällig hävning för en given spärr i den nationella spärrtjänsten, om spärren finns.

Tjänsten används för att synkronisera en lokal tillfällig hävning till den nationella spärrtjänsten.

#### 7.7.1 Version

4.0

#### 7.7.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeRegistration | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeRegistrationType | Registreringsuppgifter för tillfällig hävning. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.7.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### 7.7.3.1 Icke funktionella krav

N/A

###### 7.7.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |   |

#### 7.7.4 Exempel

##### 7.7.4.1 Exempel på anrop

Se RegisterTemporaryRevokeRequest.xml

##### 7.7.4.2 Exempel på svar

Se RegisterTemporaryRevokeResponder.xml

#### 7.7.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| temporaryRevokeRegistration | TemporaryRevokeRegistrationType | Datatyp som representerar en registrering av en tillfällig hävning med de attribut som behövs. | 1..1 |
| ../temporaryRevokeId | Id |   | 1..1 |
| ../blockId | Id |   | 1..1 |
| ../endDate | dateTime |   | 1..1 |
| ../revokedForCareUnitId | HsaId |   | 1..1 |
| ../revokedForEmployeeId | HsaId |   | 0..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.7.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryRevokeResponder:4:RegisterTemporaryRevoke`

#### 7.7.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [RegisterTemporaryRevokeInteraction_4.0_RIVTABP21.wsdl](RegisterTemporaryRevokeInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RegisterTemporaryRevokeResponder_4.0.xsd](RegisterTemporaryRevokeResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_RegisterTemporaryRevoke_4.0.docx](SjD_TK_RegisterTemporaryRevoke_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.7.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/registertemporaryrevoke-request](StructureDefinition-registertemporaryrevoke-request.md)
* **Logisk modell (response):** [StructureDefinition/registertemporaryrevoke](StructureDefinition-registertemporaryrevoke.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### UnregisterTemporaryRevoke

Tjänst som avregistrerar/raderar en tillfällig hävning i den nationella spärrtjänsten, om hävningen finns.

Tjänsten används för att synkronisera borttag av en lokal tillfällig hävning till den nationella spärrtjänsten.

#### 7.8.1 Version

4.0

#### 7.8.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall raderas. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.8.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt för att till den nationella spärrtjänsten synkronisera lokalt lagrade spärrar ansvarar för att hantera eventuella fel vid anropet, så att det inte uppstår diskrepans mellan lokalt lagrade spärrar och nationellt synkroniserade.

##### 7.8.3.1 Icke funktionella krav

N/A

###### 7.8.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att borttag av hävningen skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |   |

#### 7.8.4 Exempel

##### 7.8.4.1 Exempel på anrop

Se UnregisterTemporaryRevokeRequest.xml

##### 7.8.4.2 Exempel på svar

Se UnregisterTemporaryRevokeRequest.xml

#### 7.8.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| temporaryRevokeId | Id |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.8.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:UnregisterTemporaryRevokeResponder:4:UnregisterTemporaryRevoke`

#### 7.8.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [UnregisterTemporaryRevokeInteraction_4.0_RIVTABP21.wsdl](UnregisterTemporaryRevokeInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [UnregisterTemporaryRevokeResponder_4.0.xsd](UnregisterTemporaryRevokeResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_UnregisterTemporaryRevoke_4.0.docx](SjD_TK_UnregisterTemporaryRevoke_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.8.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/unregistertemporaryrevoke-request](StructureDefinition-unregistertemporaryrevoke-request.md)
* **Logisk modell (response):** [StructureDefinition/unregistertemporaryrevoke](StructureDefinition-unregistertemporaryrevoke.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### RegisterExtendedBlock

Tjänst som registrerar en ny spärr för en viss patient och inom en viss vårdgivare i den lokala spärrtjänsten.

En spärr gäller i normal fallet alla informationstyper som rör patienten på en vårdenhet och således spärrar ut all obehörig tillgång till informationen.

Informationstyperna lak och upp kan undantas från spärren. Om detta sker blir dessa informationstyper ej spärrade.

Kräver utökad spärrinformation med metainformation kring skapande av spärren.

Tjänsten registrerar även grunddata om spärren på nationell nivå.

#### 7.9.1 Version

4.0

#### 7.9.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockType | urn:riv:informationsecurity:authorization:blocking:4:BlockTypeType | Enumerationsvärde som anger om spärren är en inre (inom vårdenhet) eller yttre (inom vårdgivare). | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:blocking:4:IIType | Personidentitet på patienten såsom personnummer, samordningsnummer eller reservnummer. | 1..1 |
| informationStartDate | xs:DateTime | Ej obligatoriskt startdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller efter denna tidpunkt. | 0..1 |
| informationEndDate | xs:DateTime | Ej obligatoriskt slutdatum för vilken information i tiden som spärren avser. Om angivet spärras information som registrerats på eller före denna tidpunkt. | 0..1 |
| informationCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt om spärren är en inre och endast då. Anger HSA-id för den vårdenhet spärren gäller för. | 0..1 |
| informationCareProviderId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Obligatoriskt HSA-id för den vårdgivare spärren gäller för. | 1..1 |
| excludedInformationTypes | urn:riv:informationsecurity:authorization:blocking:4:InformationTypeIdValue | Ej obligatorisk lista med de informationstyper som skall undantas från spärren. Tillåtna värden är 'lak' och 'upp'. | 0..* |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat spärren samt tidpunkter för dessa. | 1..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.9.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).

Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):

Lagrat lokalt -ej nationellt

Ej lagrat lokalt -ej lagrat nationellt

En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.

OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### 7.9.3.1 Icke funktionella krav

N/A

###### 7.9.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registreringen av spärren skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor genom tjänsterna (t ex Getblocks). |   |

#### 7.9.4 Exempel

##### 7.9.4.1 Exempel på anrop

Se RegisterExtendedBlockRequest.xml

##### 7.9.4.2 Exempel på svar

Se RegisterExtendedBlockRespons.xml

#### 7.9.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| blockId | Id |   | 1..1 |
| blockType | BlockTypeType |   | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |   | 1..1 |
| ../extension | string |   | 0..1 |
| informationStartDate | dateTime |   | 0..1 |
| informationEndDate | dateTime |   | 0..1 |
| informationCareUnitId | HsaId |   | 0..1 |
| informationCareProviderId | HsaId |   | 1..1 |
| excludedInformationTypes | InformationTypeIdValue |   | 0..* |
| registerAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |   | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../registrationDate | dateTime |   | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../reasonText | ReasonText |   | 0..1 |
| replicationTimeout | int |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.9.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:RegisterExtendedBlockResponder:4:RegisterExtendedBlock`

#### 7.9.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [RegisterExtendedBlockInteraction_4.0_RIVTABP21.wsdl](RegisterExtendedBlockInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RegisterExtendedBlockResponder_4.0.xsd](RegisterExtendedBlockResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.9.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/registerextendedblock-request](StructureDefinition-registerextendedblock-request.md)
* **Logisk modell (response):** [StructureDefinition/registerextendedblock](StructureDefinition-registerextendedblock.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-blocktype-cs](CodeSystem-authorization-blocking-blocktype-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-blocktype-vs](ValueSet-authorization-blocking-blocktype-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### RevokeExtendedBlock

Tjänst som häver en spärr permanent i den lokala spärrtjänsten, om spärren finns. Denna hävning kan inte återtas.

Tjänsten avregistrerar även spärren på nationell nivå.

#### 7.10.1 Version

4.0

#### 7.10.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för spärren. | 1..1 |
| revokeAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och permanent hävt spärren samt tidpunkter för dessa. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Orsaken till den permanenta hävningen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.10.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).

Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):

Lagrat lokalt -ej nationellt

Ej lagrat lokalt -ej lagrat nationellt

En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.

OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### 7.10.3.1 Icke funktionella krav

N/A

###### 7.10.3.1.1 SLA-krav

N/A

#### 7.10.4 Exempel

##### 7.10.4.1 Exempel på anrop

Se RevokeExtendedBlockRequest.xml

##### 7.10.4.2 Exempel på svar

Se RevokeExtendedBlockRequest.xml

#### 7.10.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| blockId | Id |   | 1..1 |
| revokeAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |   | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../registrationDate | dateTime |   | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../reasonText | ReasonText |   | 0..1 |
| revokeReasonText | ReasonText |   | 0..1 |
| replicationTimeout | int |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.10.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:RevokeExtendedBlockResponder:4:RevokeExtendedBlock`

#### 7.10.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [RevokeExtendedBlockInteraction_4.0_RIVTABP21.wsdl](RevokeExtendedBlockInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RevokeExtendedBlockResponder_4.0.xsd](RevokeExtendedBlockResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.10.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/revokeextendedblock-request](StructureDefinition-revokeextendedblock-request.md)
* **Logisk modell (response):** [StructureDefinition/revokeextendedblock](StructureDefinition-revokeextendedblock.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### DeleteExtendedBlock

Tjänst som makulerar en befintlig spärr i den lokala spärrtjänsten, om spärren finns. Spärren raderas inte från lokal spärrtjänst utan markeras som makulerad (ej längre giltig) för historikens skull. Denna makulering kan inte återtas.

Tjänsten avregistrerar även spärren på nationell nivå.

#### 7.11.1 Version

4.0

#### 7.11.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall makuleras. | 1..1 |
| deleteAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och makulerat spärren samt tidpunkter för dessa. | 1..1 |
| deleteReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.11.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).

Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):

Lagrat lokalt -ej nationellt

Ej lagrat lokalt -ej lagrat nationellt

En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.

OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### 7.11.3.1 Icke funktionella krav

N/A

###### 7.11.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att makulering skett då anropet genomförts utan fel. / Tjänsten garanterar även att makulering skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

#### 7.11.4 Exempel

##### 7.11.4.1 Exempel på anrop

Se DeleteExtendedBlockRequest.xml

##### 7.11.4.2 Exempel på svar

Se DeleteExtendedBlockRespons.xml

#### 7.11.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| blockId | Id |   | 1..1 |
| deleteAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |   | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../registrationDate | dateTime |   | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../reasonText | ReasonText |   | 0..1 |
| deleteReasonText | ReasonText |   | 0..1 |
| replicationTimeout | int |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.11.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:DeleteExtendedBlockResponder:4:DeleteExtendedBlock`

#### 7.11.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [DeleteExtendedBlockInteraction_4.0_RIVTABP21.wsdl](DeleteExtendedBlockInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [DeleteExtendedBlockResponder_4.0.xsd](DeleteExtendedBlockResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.11.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/deleteextendedblock-request](StructureDefinition-deleteextendedblock-request.md)
* **Logisk modell (response):** [StructureDefinition/deleteextendedblock](StructureDefinition-deleteextendedblock.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

### RegisterTemporaryExtendedRevoke

Tjänst som häver en spärr tillfälligt i den lokala spärrtjänsten, om spärren finns. En spärr kan ha flera tillfälliga hävningar (gällande olika personal).

Tjänsten registrerar även den tillfälliga hävningen på nationell nivå.

#### 7.12.1 Version

4.0

#### 7.12.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Unik, global identifierare för den tillfälliga hävningen. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| blockId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den spärr som skall tillfälligt hävas. | 1..1 |
| endDate | xs:DateTime | Den tillfälliga hävningens giltighetsdatum. Hävningen upphör att gälla då denna tidpunkt inträffat. | 1..1 |
| revokedForCareUnitId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den vårdenhet hävningen gäller för. | 1..1 |
| revokedForEmployeeId | urn:riv:informationsecurity:authorization:blocking:4:HsaId | Anger HSA-id för den medarbetare/person hävningen gäller för. Anges om hävningen skall gälla för en medarbetare/person, annars gäller hävningen för all behörig personal på vårdenheten. | 0..1 |
| registerAction | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och registrerat den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| revokeReason | urn:riv:informationsecurity:authorization:blocking:4:TemporaryRevokeReasonType | Enumerationsvärde för orsak till tillfällig hävning. | 1..1 |
| revokeReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till tillfällig hävning. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.12.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).

Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):

Lagrat lokalt -ej nationellt

Ej lagrat lokalt -ej lagrat nationellt

En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.

OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### 7.12.3.1 Icke funktionella krav

N/A

###### 7.12.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av den tillfälliga hävningen skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av den tillfälliga hävningen skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

#### 7.12.4 Exempel

##### 7.12.4.1 Exempel på anrop

Se RegisterTemporaryExtendedRevokeRequest.xml

##### 7.12.4.2 Exempel på svar

Se RegisterTemporaryExtendedRevokeResponse.xml

#### 7.12.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| temporaryRevokeId | Id |   | 1..1 |
| blockId | Id |   | 1..1 |
| endDate | dateTime |   | 1..1 |
| revokedForCareUnitId | HsaId |   | 1..1 |
| revokedForEmployeeId | HsaId |   | 0..1 |
| registerAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |   | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../registrationDate | dateTime |   | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../reasonText | ReasonText |   | 0..1 |
| revokeReason | TemporaryRevokeReasonType |   | 1..1 |
| revokeReasonText | ReasonText |   | 0..1 |
| replicationTimeout | int |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.12.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:RegisterTemporaryExtendedRevokeResponder:4:RegisterTemporaryExtendedRevoke`

#### 7.12.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [RegisterTemporaryExtendedRevokeInteraction_4.0_RIVTABP21.wsdl](RegisterTemporaryExtendedRevokeInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RegisterTemporaryExtendedRevokeResponder_4.0.xsd](RegisterTemporaryExtendedRevokeResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_RegisterTemporaryExtendedRevoke_4.0.docx](SjD_TK_RegisterTemporaryExtendedRevoke_4.0.docx) | Självdeklaration (tjänstekonsument), version 4.0 |

#### 7.12.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/registertemporaryextendedrevoke-request](StructureDefinition-registertemporaryextendedrevoke-request.md)
* **Logisk modell (response):** [StructureDefinition/registertemporaryextendedrevoke](StructureDefinition-registertemporaryextendedrevoke.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-temporaryrevokereason-cs](CodeSystem-authorization-blocking-temporaryrevokereason-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-temporaryrevokereason-vs](ValueSet-authorization-blocking-temporaryrevokereason-vs.md)

### CancelTemporaryExtendedRevoke

Tjänst som återkallar en tillfällig hävning i den lokala spärrtjänsten, om den tillfälliga hävningen finns. Denna återkallning kan inte återtas.

Tjänsten avregistrerar även den tillfälliga hävningen på nationell nivå.

#### 7.13.1 Version

4.0

#### 7.13.2 Fältregler

| | | | |
| :--- | :--- | :--- | :--- |
| Begäran |   |   |   |
| temporaryRevokeId | urn:riv:informationsecurity:authorization:blocking:4:Id | Identifierare för den tillfälliga hävning som skall återkallas. | 1..1 |
| cancellationInfo | urn:riv:informationsecurity:authorization:blocking:4:ActionType | Identifierar de personer som begärt och hävt den tillfälliga hävningen samt tidpunkter för dessa. | 1..1 |
| cancelReasonText | urn:riv:informationsecurity:authorization:blocking:4:ReasonText | Kompletterande text för orsak till makuleringen. | 0..1 |
| replicationTimeout | xs:Int | Anger hur replikering till nationell spärrtjänst ska ske. / - Om -1 anges kommer anropet att vänta på att replikering är utförd innan det avslutas eller om ws anropet gör timeout. Anropet kommer då att misslyckas. / - Om 0 anges kommer anropet att avslutas direkt och replikering sker asynkront så snabbt som möjligt. / - Om > 0 anges är det den tid, i millisekunder, som anropet väntar på att replikering ska ske innan anropet avslutas. Om anropet avslutas innan replikering är klar (ReplicationTimeout tiden uppnås) kommer replikeringen att ske asynkront så snabbt som möjligt. | 1..1 |
| Svar |   |   |   |
| result | urn:riv:informationsecurity:authorization:blocking:4:ResultType | Status för om operationen lyckades eller inte. | 1..1 |

#### 7.13.3 Övriga regler

Regel # 1

Producent som nyttjar detta kontrakt har att hantera eventuellt uppkommen felsituation vad gäller transaktionsintegritet (Resultcode<>OK).

Felet kan betyda att begärd uppdatering ej har skett enligt förväntan. De olika scenarierna kan vara (beroende på värdet på replicationTimeout):

Lagrat lokalt -ej nationellt

Ej lagrat lokalt -ej lagrat nationellt

En producent av kontraktet ansvarar för att kunna hantera denna situation, kontraktet kan (f.n) ej garantera en transaktionsintegritet. En konsument av kontraktet kan underlätta felhantering genom att tillhandahålla en informativ feltext i ResultText.

OBS! Om replicationTimeout = 0 och replikeringen till den nationella spärrtjänsten misslyckas så får ej konsumenten reda på detta. ResultCode blir ändå OK.

##### 7.13.3.1 Icke funktionella krav

N/A

###### 7.13.3.1.1 SLA-krav

| | | |
| :--- | :--- | :--- |
| Aktualitet | Tjänsten garanterar att registrering av återkallandet skett då anropet genomförts utan fel. / Tjänsten garanterar även att registrering av återkallandet skett på nationell nivå då anropet genomförts utan fel om anroparen har begärt det. I annat fall meddelas ej anroparen status på nationell registrering. / Det är tjänstens ansvar att förmedla registreringen vidare till den nationella instansen. Detta skall ske så snart som möjligt (synkront), eller med upprepade försök om eventuella problem uppstår. |   |

#### 7.13.4 Exempel

##### 7.13.4.1 Exempel på anrop

Se CancelTemporaryExtendedRevokeRequest.xml

##### 7.13.4.2 Exempel på svar

Se CancelTemporaryExtendedRevokeRespons.xml

#### 7.13.5 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.md).

| | | | |
| :--- | :--- | :--- | :--- |
| **Begäran** |   |   |   |
| temporaryRevokeId | Id |   | 1..1 |
| cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |   | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../registrationDate | dateTime |   | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |   | 1..1 |
| ../../assignmentId | HsaId |   | 0..1 |
| ../../assignmentName | AssignmentNameType |   | 0..1 |
| ../reasonText | ReasonText |   | 0..1 |
| cancelReasonText | ReasonText |   | 0..1 |
| replicationTimeout | int |   | 1..1 |
| **Svar** |   |   |   |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |   | 1..1 |
| ../resultText | string |   | 0..1 |

#### 7.13.6 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:blocking:CancelTemporaryExtendedRevokeResponder:4:CancelTemporaryExtendedRevoke`

#### 7.13.7 Källfiler (RIV-TA)

| | |
| :--- | :--- |
| [CancelTemporaryExtendedRevokeInteraction_4.0_RIVTABP21.wsdl](CancelTemporaryExtendedRevokeInteraction_4.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [CancelTemporaryExtendedRevokeResponder_4.0.xsd](CancelTemporaryExtendedRevokeResponder_4.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_blocking_4.0.xsd](informationsecurity_authorization_blocking_4.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.13.8 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/canceltemporaryextendedrevoke-request](StructureDefinition-canceltemporaryextendedrevoke-request.md)
* **Logisk modell (response):** [StructureDefinition/canceltemporaryextendedrevoke](StructureDefinition-canceltemporaryextendedrevoke.md)
* **Kodsystem:** [CodeSystem/authorization-blocking-resultcode-cs](CodeSystem-authorization-blocking-resultcode-cs.md)
* **ValueSet:** [ValueSet/authorization-blocking-resultcode-vs](ValueSet-authorization-blocking-resultcode-vs.md)

