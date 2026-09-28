# 7 Tjänstekontrakt

Källa: *Samtycke*, tjänstekontraktsbeskrivning version 2.0.4 (tagg 2.0.4, 2025-12-09), [TKB_informationsecurity_authorization_consent.docx](TKB_informationsecurity_authorization_consent.docx).

Motsvarar TKB kapitel 6 *Tjänstekontrakt* (7.1 = TKB 6.1 osv.). Efter TKB:ns text följer för varje kontrakt fälten enligt schemat, tjänsteinteraktionen enligt WSDL, källfilerna och de genererade FHIR-artefakterna.

### GetConsentsForPatient

Tjänst som läser giltiga samtyckesintyg för en viss patient och en viss vårdgivare med grundinformation.

Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll gällande åtkomst (CheckConsents).

Ogiltiga intyg (giltigt t o m har passerats, makulerade eller avslutade) returneras ej.

Tjänsten kan användas i ett integrationsmönster där journalsystemet läser in giltiga samtycken som finns för patienten/brukaren per vård- eller omsorgsgivare, för att sedan utföra intern kontroll av samtycke.

#### 7.1.1 Version

2.0

#### 7.1.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_027.jpeg)

#### 7.1.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Obligatoriskt id på den vårdgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| Svar |  |  |  |
| getConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetConsentsResultType | Lista med giltiga samtycken för patient/brukare. | 1..1 |

#### 7.1.4 Övriga regler

N/A

#### 7.1.5 Icke funktionella krav

N/A

#### 7.1.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

#### 7.1.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| getConsentsResult | GetConsentsResultType | Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../pdlAssertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
| ../../assertionId | Id |  | 1..1 |
| ../../assertionType | AssertionTypeType |  | 1..1 |
| ../../scope | ScopeType |  | 1..1 |
| ../../careProviderId | HsaId |  | 1..1 |
| ../../careUnitId | HsaId |  | 1..1 |
| ../../employeeId | HsaId |  | 0..1 |
| ../../startDate | dateTime |  | 1..1 |
| ../../endDate | dateTime |  | 0..1 |
| ../../ownerId | OwnerId |  | 0..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |

#### 7.1.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:GetConsentsForPatientResponder:2:GetConsentsForPatient`

#### 7.1.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetConsentsForPatientInteraction_2.0_RIVTABP21.wsdl](GetConsentsForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetConsentsForPatientResponder_2.0.xsd](GetConsentsForPatientResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetConsentsForPatient_2.0.docx](SjD_TK_GetConsentsForPatient_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.1.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getconsentsforpatient-request](StructureDefinition-getconsentsforpatient-request.html)
* **Logisk modell (response):** [StructureDefinition/getconsentsforpatient](StructureDefinition-getconsentsforpatient.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.html)

### GetConsentsForCareProvider

Tjänst som läser alla giltiga samtyckesintyg för en viss vård-/omsorgsgivare med grundinformation.

Med giltiga samtyckesintyg avses de samtyckesintyg, alternativt intyg om nödsituation, som används som underlag vid en kontroll av åtkomst (CheckConsents).

Det är valbart om makulerade, avslutade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. Utgångna samtyckesintyg (giltigt t o m har passerats) returneras ej oavsett makulering.

Det går även att ange en tidpunkt (CreatedOnOrAfter) från när man önskar inhämta uppgifter och på så sätt undvika att inhämta data som redan hämtats vid ett tidigare tillfälle. Här avses tidpunkten då samtycket lagrades i tjänsten.

Tjänsten tillåts att dela upp listan av samtyckesintyg i mindre delar för att minska på belastningen på systemet. Om detta sker kommer flaggan HasMore att vara satt om det finns fler samtyckesintyg att hämta. De resterande samtyckesintygen skall i så fall hämtas med ytterligare anrop till tjänsten tills flaggan HashMore ej längre är satt (false).

Tjänsten returnerar en ny tidpunkt (CreatedOnOrAfter) som anger från och med nästa tidpunkt som samtyckesintygen ej har hämtats. Detta värde kan användas som inparameter i ytterligare anrop till tjänsten för att hämta nästa sekvens av samtyckesintyg.

Tjänsten kan användas i ett integrationsmönster där vårdsystemet med visst intervall inhämtar alla samtycken det behöver utifrån de vårdgivare som systemet hanterar information från, för att sedan vid behov utföra intern kontroll mot underlaget av samtycken och nödsituationsintyg.

Viktigt att kontrollera att alla samtycken är hämtade genom att kontrollera värdet på flaggan HasMore.

#### 7.2.1 Version

2.0

#### 7.2.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_003.jpeg)

#### 7.2.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| createdOnOrAfter | xs:DateTime | Ej obligatoriskt startdatum för hur gamla samtyckesintyg som skall hämtas. Om angivet returneras endast samtyckesintyg som är giltiga i tjänsten på eller efter denna tidpunkt. Användbart vid upprepande förfrågningar och undviker att data som redan inhämtats returneras. | 0..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om makulerade samtyckesintyg eller samtyckesintyg som ej är utgångna (giltigt t o m har passerats) skall returneras. | 1..1 |
| Svar |  |  |  |
| getAllAssertionsResult | urn:riv:informationsecurity:authorization:consent:2:GetAllAssertionsResultType | Lista med giltiga samtyckesintyg och eventuellt en lista med ogiltiga samtyckesintyg. Information om det finns fler samtyckesintyg att hämta samt ny starttidpunkt ingår även i svaret. | 1..1 |

#### 7.2.4 Övriga regler

N/A

#### 7.2.5 Icke funktionella krav

N/A

#### 7.2.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

#### 7.2.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| createdOnOrAfter | dateTime |  | 0..1 |
| getCancelledFlag | boolean |  | 1..1 |
| **Svar** | | | |
| getAllAssertionsResult | GetAllAssertionsResultType | Datatyp som representerar en lista med giltiga intyg tillsammans med en lista av makulerade och återkallade intyg. Den används för att dela upp svaret från tjänsten i mindre delar baserat på tidpunkt. Datatypen innehåller information om det finns ytterligare intyg att hämta samt en ny starttidpunkt för när nästa sekvens av intyg startar. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../moreOnOrAfter | dateTime |  | 1..1 |
| ../hasMore | boolean |  | 1..1 |
| ../assertions | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 0..* |
| ../../assertionId | Id |  | 1..1 |
| ../../assertionType | AssertionTypeType |  | 1..1 |
| ../../scope | ScopeType |  | 1..1 |
| ../../careProviderId | HsaId |  | 1..1 |
| ../../careUnitId | HsaId |  | 1..1 |
| ../../employeeId | HsaId |  | 0..1 |
| ../../startDate | dateTime |  | 1..1 |
| ../../endDate | dateTime |  | 0..1 |
| ../../ownerId | OwnerId |  | 0..1 |
| ../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../cancelledAssertions | CancelledAssertionType | Datatyp som representerar ett makulerat eller återkallat samtycke samt tidpunkten när makuleringen eller återkallan utfördes. | 0..* |
| ../../assertionId | Id |  | 1..1 |
| ../../cancellationDate | dateTime |  | 1..1 |

#### 7.2.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:GetConsentsForCareProviderResponder:2:GetConsentsForCareProvider`

#### 7.2.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetConsentsForCareProviderInteraction_2.0_RIVTABP21.wsdl](GetConsentsForCareProviderInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetConsentsForCareProviderResponder_2.0.xsd](GetConsentsForCareProviderResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetConsentsForCareProvider_2.0.docx](SjD_TK_GetConsentsForCareProvider_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.2.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getconsentsforcareprovider-request](StructureDefinition-getconsentsforcareprovider-request.html)
* **Logisk modell (response):** [StructureDefinition/getconsentsforcareprovider](StructureDefinition-getconsentsforcareprovider.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.html)

### GetExtendedConsentsForPatient

Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.

Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.

Tjänsten kan användas för att söka fram och administrera patientens/brukarens samtycken för en viss vård-/omsorgsgivare.

#### 7.3.1 Version

2.0

#### 7.3.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_012.jpeg)

#### 7.3.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | HSA-id på den vård-/omsorgsgivare vars samtycken skall hämtas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### 7.3.4 Övriga regler

N/A

#### 7.3.5 Icke funktionella krav

N/A

#### 7.3.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

#### 7.3.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| careProviderId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| getCancelledFlag | boolean |  | 1..1 |
| **Svar** | | | |
| getExtendedConsentsResult | GetExtendedConsentsResultType | Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../pdlAssertions | ExtendedPDLAssertionType | Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion. | 0..* |
| ../../pDLAssertion | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 1..1 |
| ../../../assertionId | Id |  | 1..1 |
| ../../../assertionType | AssertionTypeType |  | 1..1 |
| ../../../scope | ScopeType |  | 1..1 |
| ../../../careProviderId | HsaId |  | 1..1 |
| ../../../careUnitId | HsaId |  | 1..1 |
| ../../../employeeId | HsaId |  | 0..1 |
| ../../../startDate | dateTime |  | 1..1 |
| ../../../endDate | dateTime |  | 0..1 |
| ../../../ownerId | OwnerId |  | 0..1 |
| ../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../representedBy | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |

#### 7.3.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:GetExtendedConsentsForPatientResponder:2:GetExtendedConsentsForPatient`

#### 7.3.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetExtendedConsentsForPatientInteraction_2.0_RIVTABP21.wsdl](GetExtendedConsentsForPatientInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetExtendedConsentsForPatientResponder_2.0.xsd](GetExtendedConsentsForPatientResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetExtendedConsentsForPatient_2.0.docx](SjD_TK_GetExtendedConsentsForPatient_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.3.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getextendedconsentsforpatient-request](StructureDefinition-getextendedconsentsforpatient-request.html)
* **Logisk modell (response):** [StructureDefinition/getextendedconsentsforpatient](StructureDefinition-getextendedconsentsforpatient.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.html)

### CheckConsent

Tjänst som kontrollerar om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör (vårdenhet eller medarbetare).

Med giltigt samtycke avses ett samtycke som fortfarande är giltigt (giltigt t o m har ej passerats), ej makulerat.

Om ett giltigt intyg gällande åtkomst för angiven aktör hittas, kommer tjänsten att svara OK.

#### 7.4.1 Version

2.0

#### 7.4.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_030.jpeg)

#### 7.4.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| accessingActor | urn:riv:informationsecurity:authorization:consent:2:AccessingActorType | Representerar den aktör/person som önskar åtkomst till informationen. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycke skall kontrolleras. | 1..1 |
| Svar |  |  |  |
| checkResult | urn:riv:informationsecurity:authorization:consent:2:CheckResultType | Status för om ett giltigt intyg gällande åtkomst för angiven aktör hittades. | 1..1 |

#### 7.4.4 Övriga regler

N/A

#### 7.4.5 Icke funktionella krav

N/A

#### 7.4.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet | Beror på ingående samtyckestjänsters tillgänglighet. Önskas högre tillgänglighet kan konsumerande system mellanlagra data i cache som anpassas till krav på aktualitet. |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att utföra en kontroll på de senaste registrerade intygsuppgifterna i samtyckestjänsten. |  |

#### 7.4.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| accessingActor | AccessingActorType | Datatyp som identifierar en medarbetare/person som vill ha åtkomst till specifik information. | 1..1 |
| ../employeeId | HsaId |  | 1..1 |
| ../careProviderId | HsaId |  | 1..1 |
| ../careUnitId | HsaId |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| **Svar** | | | |
| checkResult | CheckResultType | Datatyp som anger om det finns ett giltigt samtycke, alternativt intyg om nödsituation, gällande åtkomst för viss aktör. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../hasConsent | boolean |  | 1..1 |
| ../assertionType | AssertionTypeType |  | 0..1 |

#### 7.4.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:CheckConsentResponder:2:CheckConsent`

#### 7.4.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CheckConsentInteraction_2.0_RIVTABP21.wsdl](CheckConsentInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [CheckConsentResponder_2.0.xsd](CheckConsentResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_CheckConsent_2.0.docx](SjD_TK_CheckConsent_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.4.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/checkconsent-request](StructureDefinition-checkconsent-request.html)
* **Logisk modell (response):** [StructureDefinition/checkconsent](StructureDefinition-checkconsent.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)

### RegisterExtendedConsent

Tjänst som registrerar ett intyg gällande viss patient som ger direktåtkomst till patientens/brukarens information från andra vårdgivare enligt PDL.

Intyget avser patientens/brukarens aktiva medgivande (samtycke), alternativt nödsituation då HoS personal bedömer att behov av uppgifterna finns för nödvändig vård av patient som inte kan ge aktivt medgivande.

Det går även att registrera patientens/brukarens företrädare.

Tjänsten kräver utökad information (metainformation) kring skapande av intyget.

#### 7.5.1 Version

2.0

#### 7.5.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_006.jpeg)

#### 7.5.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unik, global identifierare för intyget. Tjänstekonsumenten ansvarar för att generera id:et. | 1..1 |
| assertionType | urn:riv:informationsecurity:authorization:consent:2:AssertionTypeType | Typ av intyg som ger direktåtkomst till information från andra vård-/omsorgsgivare enligt SVOD. Kan vara patientens/brukarens samtycke eller nödsituation. | 1..1 |
| scope | urn:riv:informationsecurity:authorization:consent:2:ScopeType | Omfånget/tillämpningsområde på intyget. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren på vilket samtycket ska registreras. | 1..1 |
| careProviderId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den vård-/omsorgsgivare som intyget gäller för/kopplas till. | 1..1 |
| careUnitId | urn:riv:informationsecurity:authorization:consent:2:HsaId | Id på den enhet som intyget gäller för/kopplas till. | 1..1 |
| employeeId | urn:riv:informationsecurity:authorization:consent:2:HsaId | MedarbetarId. Om samtycket är personligt anges id för den medarbetare som samtycket skall gälla för. Om samtycket gäller all behörig personal på angiven vårdenhet, skall inget medarbetarid anges. | 0..1 |
| startDate | xs:DateTime | Ej obligatoriskt startdatum för intygets giltighetstid. Om ett startdatum är angivet gäller intyget fr.o.m denna tidpunkt, annars gäller samtycket fr.o.m aktuell tidpunkt (registreringstidpunkt). | 0..1 |
| endDate | xs:DateTime | Ej obligatoriskt slutdatum för intygets giltighetstid. Om ett slutdatum är angivet gäller intyget t.o.m denna tidpunkt. Om inget slutdatum anges, gäller samtycket tills det blir avslutat eller makulerat. | 0..1 |
| representedBy | urn:riv:informationsecurity:authorization:consent:2:IIType | Ej obligatorisk personidentitet på företrädare/vårdnadshavare som företräder patienten/brukaren. Värdet ska anges om samtycket är inhämtat från företrädare/vårdnadshavare. | 0..1 |
| registrationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat intyget samt tidpunkter för dessa. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### 7.5.4 Övriga regler

N/A

#### 7.5.5 Icke funktionella krav

N/A

#### 7.5.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att registrering av samtycke skett då anropet genomförts utan fel. Registreringen speglas omedelbart i svar från frågor till samtyckestjänsten. |  |

#### 7.5.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| assertionId | Id |  | 1..1 |
| assertionType | AssertionTypeType |  | 1..1 |
| scope | ScopeType |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| careProviderId | HsaId |  | 1..1 |
| careUnitId | HsaId |  | 1..1 |
| employeeId | HsaId |  | 0..1 |
| startDate | dateTime |  | 0..1 |
| endDate | dateTime |  | 0..1 |
| representedBy | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| registrationAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |  | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../registrationDate | dateTime |  | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../reasonText | ReasonText |  | 0..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |

#### 7.5.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:RegisterExtendedConsentResponder:2:RegisterExtendedConsent`

#### 7.5.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [RegisterExtendedConsentInteraction_2.0_RIVTABP21.wsdl](RegisterExtendedConsentInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [RegisterExtendedConsentResponder_2.0.xsd](RegisterExtendedConsentResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_RegisterExtendedConsent_2.0.docx](SjD_TK_RegisterExtendedConsent_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.5.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/registerextendedconsent-request](StructureDefinition-registerextendedconsent-request.html)
* **Logisk modell (response):** [StructureDefinition/registerextendedconsent](StructureDefinition-registerextendedconsent.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.html)

### CancelExtendedConsent

Tjänst som avslutar ett samtycke i samtyckestjänsten. Intyget raderas inte från samtyckestjänsten utan markeras som avslutat (ej längre giltig) för historikens skull. Ett avslutat samtycke kan ej återtas.

#### 7.6.1 Version

2.0

#### 7.6.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_023.jpeg)

#### 7.6.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierare för det intyg som skall avslutas. | 1..1 |
| cancellationAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och registrerat avslutandet samt tidpunkter för dessa. En anledning till avslutande i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### 7.6.4 Övriga regler

N/A

#### 7.6.5 Icke funktionella krav

N/A

#### 7.6.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att avslutande av samtycket skett då anropet genomförts utan fel. Avslutande speglas omedelbart i svar från frågor genom tjänsterna. |  |

#### 7.6.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| assertionId | Id |  | 1..1 |
| cancellationAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |  | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../registrationDate | dateTime |  | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../reasonText | ReasonText |  | 0..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |

#### 7.6.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:CancelExtendedConsentResponder:2:CancelExtendedConsent`

#### 7.6.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [CancelExtendedConsentInteraction_2.0_RIVTABP21.wsdl](CancelExtendedConsentInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [CancelExtendedConsentResponder_2.0.xsd](CancelExtendedConsentResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_CancelExtendedConsent_2.0.docx](SjD_TK_CancelExtendedConsent_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.6.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/cancelextendedconsent-request](StructureDefinition-cancelextendedconsent-request.html)
* **Logisk modell (response):** [StructureDefinition/cancelextendedconsent](StructureDefinition-cancelextendedconsent.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)

### DeleteExtendedConsent

Tjänst som makulerar ett samtycke i samtyckestjänsten. Makulering av samtycke används enbart för borttagning av felregistrerade samtycken.

Samtycket raderas inte från samtyckestjänst utan markeras som makulerad (ej längre giltig) för historikens skull. En makulering kan ej återtas.

#### 7.7.1 Version

2.0

#### 7.7.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_018.jpeg)

#### 7.7.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Identifierar det intyg som skall makuleras. | 1..1 |
| deletionAction | urn:riv:informationsecurity:authorization:consent:2:ActionType | Identifierar de personer som begärt och utfört makulering samt tidpunkter för dessa. En anledning till makuleringen i fritext kan även ges. | 1..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### 7.7.4 Övriga regler

N/A

#### 7.7.5 Icke funktionella krav

N/A

#### 7.7.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Tjänsten garanterar att makulering av samtycke skett då anropet genomförts utan fel. Makuleringen speglas omedelbart i svar från frågor genom tjänsterna. |  |

#### 7.7.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| assertionId | Id |  | 1..1 |
| deletionAction | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../requestDate | dateTime |  | 1..1 |
| ../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../registrationDate | dateTime |  | 1..1 |
| ../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../employeeId | HsaId |  | 1..1 |
| ../../assignmentId | HsaId |  | 0..1 |
| ../../assignmentName | AssignmentNameType |  | 0..1 |
| ../reasonText | ReasonText |  | 0..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |

#### 7.7.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:DeleteExtendedConsentResponder:2:DeleteExtendedConsent`

#### 7.7.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [DeleteExtendedConsentInteraction_2.0_RIVTABP21.wsdl](DeleteExtendedConsentInteraction_2.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [DeleteExtendedConsentResponder_2.0.xsd](DeleteExtendedConsentResponder_2.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_DeleteExtendedConsent_2.0.docx](SjD_TK_DeleteExtendedConsent_2.0.docx) | Självdeklaration (tjänstekonsument), version 2.0 |

#### 7.7.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/deleteextendedconsent-request](StructureDefinition-deleteextendedconsent-request.html)
* **Logisk modell (response):** [StructureDefinition/deleteextendedconsent](StructureDefinition-deleteextendedconsent.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)

### GetAllExtendedConsentsForPatient

Tjänst som läser registrerade samtyckesintyg för en viss patient/brukare med utökad information.

Det är valbart om ogiltiga (makulerade och utgångna) samtyckesintyg skall returneras.

Tjänsten kan användas för att söka patients/brukares samtliga samtycken. Aktören är patienten/brukaren själv eller patients legala ombud.

#### 7.8.1 Version

1.0

#### 7.8.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_013.jpeg)

#### 7.8.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| getCancelledFlag | xs:Boolean | Flagga som avgör om ogiltiga samtyckesintyg skall returneras. | 1..1 |
| Svar |  |  |  |
| getExtendedConsentsResult | urn:riv:informationsecurity:authorization:consent:2:GetExtendedConsentsResultType | Utökad information för samtycke. | 1..1 |

#### 7.8.4 Övriga regler

N/A

#### 7.8.5 Icke funktionella krav

N/A

#### 7.8.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

#### 7.8.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| getCancelledFlag | boolean |  | 1..1 |
| **Svar** | | | |
| getExtendedConsentsResult | GetExtendedConsentsResultType | Datatyp som innehåller resultatet från en hämtning av samtyckesintyg enligt det utökade formatet tillsammans med hämtade samtyckesintyg. Datatypen utökar datatypen Result. | 1..1 |
| ../result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../../resultCode | ResultCodeType |  | 1..1 |
| ../../resultText | string |  | 0..1 |
| ../pdlAssertions | ExtendedPDLAssertionType | Datatyp som representerar ett samtycke med ett utökat format. Innehåller information vem som har begärt respektive registrerat samtycket, samt om och när samtycket är återkallat eller makulerat. Datatypen utökar datatypen PDLAssertion. | 0..* |
| ../../pDLAssertion | PDLAssertionType | Datatyp som representerar ett intyg som ger direktåtkomst till andra vårdgivares information enligt PDL. Datatypen beskriver grundformatet för ett intyg. | 1..1 |
| ../../../assertionId | Id |  | 1..1 |
| ../../../assertionType | AssertionTypeType |  | 1..1 |
| ../../../scope | ScopeType |  | 1..1 |
| ../../../careProviderId | HsaId |  | 1..1 |
| ../../../careUnitId | HsaId |  | 1..1 |
| ../../../employeeId | HsaId |  | 0..1 |
| ../../../startDate | dateTime |  | 1..1 |
| ../../../endDate | dateTime |  | 0..1 |
| ../../../ownerId | OwnerId |  | 0..1 |
| ../../../patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../../../../root | string |  | 1..1 |
| ../../../../extension | string |  | 0..1 |
| ../../representedBy | IIType | En universellt unik identifierare. | 0..1 |
| ../../../root | string |  | 1..1 |
| ../../../extension | string |  | 0..1 |
| ../../registrationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 1..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../cancellationInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |
| ../../deletionInfo | ActionType | Datatyp som representerar den eller de aktörer/personer som begärt och/eller utfört en åtgärd med en möjlig orsak/anledning angivet som fritext. | 0..1 |
| ../../../requestDate | dateTime |  | 1..1 |
| ../../../requestedBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../registrationDate | dateTime |  | 1..1 |
| ../../../registeredBy | ActorType | Datatyp som identifierar en medarbetare/person. | 1..1 |
| ../../../../employeeId | HsaId |  | 1..1 |
| ../../../../assignmentId | HsaId |  | 0..1 |
| ../../../../assignmentName | AssignmentNameType |  | 0..1 |
| ../../../reasonText | ReasonText |  | 0..1 |

#### 7.8.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:GetAllExtendedConsentsForPatientResponder:1:GetAllExtendedConsentsForPatient`

#### 7.8.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [GetAllExtendedConsentsForPatientInteraction_1.0_RIVTABP21.wsdl](GetAllExtendedConsentsForPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [GetAllExtendedConsentsForPatientResponder_1.0.xsd](GetAllExtendedConsentsForPatientResponder_1.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |
| [SjD_TK_GetAllExtendedConsentsForPatient_1.0.docx](SjD_TK_GetAllExtendedConsentsForPatient_1.0.docx) | Självdeklaration (tjänstekonsument), version 1.0 |

#### 7.8.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/getallextendedconsentsforpatient-request](StructureDefinition-getallextendedconsentsforpatient-request.html)
* **Logisk modell (response):** [StructureDefinition/getallextendedconsentsforpatient](StructureDefinition-getallextendedconsentsforpatient.html)
* **Kodsystem:** [CodeSystem/authorization-consent-assertiontype-cs](CodeSystem-authorization-consent-assertiontype-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-assertiontype-vs](ValueSet-authorization-consent-assertiontype-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)
* **Kodsystem:** [CodeSystem/authorization-consent-scope-cs](CodeSystem-authorization-consent-scope-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-scope-vs](ValueSet-authorization-consent-scope-vs.html)

### EndConsentByPatient

Tjänst som ger patient/brukare möjlighet att avsluta ett tidigare givet samtycke i förtid.

Tjänsten förutsätter att giltiga samtycken först har inhämtats via tjänstekontraktet GetAllExtendedConsentsForPatient, varifrån det unika id för samtycket som ska avslutas också hämtas.

Aktören är patienten/brukaren själv eller patients legala ombud.

#### 7.9.1 Version

1.0

#### 7.9.2 Meddelandeinformationsmodell

![Meddelandeinformationsmodell](img_028.jpeg)

#### 7.9.3 Fältregler

| Namn | Datatyp | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| Begäran |  |  |  |
| assertionId | urn:riv:informationsecurity:authorization:consent:2:Id | Unikt id som identifierar det intyg som skall avslutas. | 1..1 |
| patientId | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet på patienten/brukaren vars samtycken skall hämtas. | 1..1 |
| representedById | urn:riv:informationsecurity:authorization:consent:2:IIType | Personidentitet för den företrädare/vårdnadshavare som företräder patienten/brukaren. / Ska anges om samtycket avslutas av företrädare/vårdnadshavare. | 0..1 |
| endDateTime | xs:dateTime | Frivillig tidpunkt/tidsstämpel för när samtycket ska avslutas. Tidstämpeln ska som tidigast vara nuvarande tidpunkt, alternativt före en tidigare given sista giltighetstidpunkt som är i framtiden. Om ingen tidpunkt anges ska producenten tolka samtyckets nya giltighetstidpunkt t o m nuvarande tidpunkt. | 0..1 |
| Svar |  |  |  |
| result | urn:riv:informationsecurity:authorization:consent:2:ResultType | Status för om tjänsten utfördes. | 1..1 |

#### 7.9.4 Övriga regler

N/A

#### 7.9.5 Icke funktionella krav

N/A

#### 7.9.6 SLA-krav

| Kategori | Värde | Kommentar |
| :--- | :--- | :--- |
| Svarstid |  |  |
| Tillgänglighet |  |  |
| Last |  |  |
| Aktualitet | Grundprincipen är att de senaste registrerade intygsuppgifterna i samtyckestjänsten returneras. |  |

#### 7.9.7 Fältregler enligt schema (XSD)

Tabellen är genererad ur tjänsteschemat. Typerna beskrivs i [avsnitt 6](6-gemensamma-informationskomponenter.html).

| Namn | Typ | Beskrivning | Kardinalitet |
| :--- | :--- | :--- | :--- |
| **Begäran** | | | |
| assertionId | Id |  | 1..1 |
| patientId | IIType | En universellt unik identifierare. | 1..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| representedById | IIType | En universellt unik identifierare. | 0..1 |
| ../root | string |  | 1..1 |
| ../extension | string |  | 0..1 |
| endDateTime | dateTime |  | 0..1 |
| **Svar** | | | |
| result | ResultType | Datatyp som returneras som ett generellt svar från alla förändrande tjänster, t.ex. skapa, radera, etc. En tjänstekonsument skall alltid kontrollera att resultatkoden inte innehåller fel för att på så sätt veta om anropet lyckades. Alla svarskoder förutom OK och INFO betyder att åtgärden inte genomfördes. | 1..1 |
| ../resultCode | ResultCodeType |  | 1..1 |
| ../resultText | string |  | 0..1 |

#### 7.9.8 Tjänsteinteraktion enligt WSDL

SOAPAction: `urn:riv:informationsecurity:authorization:consent:EndConsentByPatientResponder:1:EndConsentByPatient`

#### 7.9.9 Källfiler (RIV-TA)

| Fil | Typ |
|-----|-----|
| [EndConsentByPatientInteraction_1.0_RIVTABP21.wsdl](EndConsentByPatientInteraction_1.0_RIVTABP21.wsdl) | WSDL (tjänsteinteraktion) |
| [EndConsentByPatientResponder_1.0.xsd](EndConsentByPatientResponder_1.0.xsd) | Tjänsteschema |
| [informationsecurity_authorization_consent_2.0.xsd](informationsecurity_authorization_consent_2.0.xsd) | Domänschema (delat) |
| [itintegration_registry_1.0.xsd](itintegration_registry_1.0.xsd) | LogicalAddress (SOAP-huvud) |

#### 7.9.10 FHIR-artefakter

Följande FHIR-artefakter har genererats från schemat:

* **Logisk modell (request):** [StructureDefinition/endconsentbypatient-request](StructureDefinition-endconsentbypatient-request.html)
* **Logisk modell (response):** [StructureDefinition/endconsentbypatient](StructureDefinition-endconsentbypatient.html)
* **Kodsystem:** [CodeSystem/authorization-consent-resultcode-cs](CodeSystem-authorization-consent-resultcode-cs.html)
* **ValueSet:** [ValueSet/authorization-consent-resultcode-vs](ValueSet-authorization-consent-resultcode-vs.html)

