<!-- Genererad av scripts/rivta_datatypes.py — redigera inte för hand. -->
# RIV-TA gemensamma datatyper

Den här IG:n definierar de grunddatatyper som återkommer i RIV-TA-tjänstekontrakten, en gång, så att de logiska modellerna i varje TKB-IG kan referera till samma definition. Typerna följer [RIV-TA Best Practice: De facto-konventioner för datatyper](https://bitbucket.org/rivta-domains/best-practice/src/master/schema/) och har samma namn, element och kardinaliteter som i schemat. HSAIdType och UUIDType finns inte i de facto-konventionerna men definieras likadant i nästan alla domänscheman och är därför också med.

## Hur TKB-IG:erna använder typerna

De logiska modellerna i TKB-IG:erna följer tjänstekontraktets XML-schema: varje fält har samma namn, kardinalitet och typ som i schemat. När domänens schema definierar en typ med samma namn som här gäller:

* **Identisk definition:** fältet refererar direkt till typen här.
* **Samma element men snävare kardinalitet** (t.ex. `IIType.extension` 1..1 i stället för 0..1): domänens IG har en egen typ med samma namn som ärver typen här och skärper kardinaliteten.
* **Annan definition:** domänens IG definierar typen själv, eftersom den inte är samma typ.

Enkla typer (xs:simpleType, t.ex. TimeStampType) är profiler på FHIR-typen `string` med schemats mönster som invariant.

## Typer

| Typ | Slag | Beskrivning | Struktur |
| :--- | :--- | :--- | :--- |
| [ActorType](StructureDefinition-ActorType.html) | sammansatt | Medarbetare i vård och omsorg | hsaId : HSAIdType [0..1]<br/>personName : string [0..1]<br/>personTelecom : string [0..1]<br/>personEmail : string [0..1]<br/>personAddress : string [0..1] |
| [CVType](StructureDefinition-CVType.html) | sammansatt | Referens till ett begrepp i ett externt kodverk. | code : string [0..1]<br/>codeSystem : string [0..1]<br/>codeSystemName : string [0..1]<br/>codeSystemVersion : string [0..1]<br/>displayName : string [0..1]<br/>originalText : string [0..1] |
| [DatePeriodType](StructureDefinition-DatePeriodType.html) | sammansatt | Datumintervall med minst ett start- eller slutdatum. | start : DateType [0..1]<br/>end : DateType [0..1] |
| [DateType](StructureDefinition-DateType.html) | enkel | Datum på formatet YYYYMMDD utan tidszon. | xs:string, mönster `(19\|20)\d\d(0[1-9]\|1[012])(0[1-9]\|[12][0-9]\|3[01])` |
| [DecimalPrimitiveType](StructureDefinition-DecimalPrimitiveType.html) | enkel | Decimaltal som bevarar signifikanta avslutande nollor. | xs:string, mönster `-?(0\|[1-9][0-9]*)((\.\|,)[0-9]+)?([eE][+-]?[0-9]+)?` |
| [HSAIdType](StructureDefinition-HSAIdType.html) | enkel | HSA-id: identifierare i HSA-katalogen för en person, organisation, enhet eller funktion. | xs:string |
| [HealthcareProfessionalType](StructureDefinition-HealthcareProfessionalType.html) | sammansatt | Vård- och omsorgspersonal samt organisatorisk tillhörighet. | authorTime : TimeStampType [1..1]<br/>healthcareProfessionalHSAId : HSAIdType [0..1]<br/>healthcareProfessionalName : string [0..1]<br/>healthcareProfessionalRoleCode : CVType [0..1]<br/>healthcareProfessionalOrgUnit : OrgUnitType [0..1]<br/>healthcareProfessionalCareUnitHSAId : HSAIdType [0..1]<br/>healthcareProfessionalCareGiverHSAId : HSAIdType [0..1] |
| [IIType](StructureDefinition-IIType.html) | sammansatt | Unik identifierare för ett objekt eller en entitet. | root : string [1..1]<br/>extension : string [0..1] |
| [LegalAuthenticatorType](StructureDefinition-LegalAuthenticatorType.html) | sammansatt | Signatur och uppgifter om signerande person. | signatureTime : TimeStampType [1..1]<br/>legalAuthenticatorHSAId : HSAIdType [0..1]<br/>legalAuthenticatorName : string [0..1]<br/>legalAuthenticatorRoleCode : CVType [0..1] |
| [MultimediaType](StructureDefinition-MultimediaType.html) | sammansatt | Multimediaobjekt som binärdata eller extern referens. | id : string [0..1]<br/>mediaType : MediaTypeEnum [1..1]<br/>value : base64Binary [0..1]<br/>reference : anyURI [0..1] |
| [OrgUnitType](StructureDefinition-OrgUnitType.html) | sammansatt | Identitets-, kontakt- och adressuppgifter för en organisationsenhet. | orgUnitHSAId : HSAIdType [0..1]<br/>orgUnitName : string [0..1]<br/>orgUnitTelecom : string [0..1]<br/>orgUnitEmail : string [0..1]<br/>orgUnitAddress : string [0..1]<br/>orgUnitLocation : string [0..1] |
| [PQIntervalType](StructureDefinition-PQIntervalType.html) | sammansatt | Intervall av mätbara värden med enhet. | low : DecimalPrimitiveType [0..1]<br/>lowClosed : boolean [0..1]<br/>high : DecimalPrimitiveType [0..1]<br/>highClosed : boolean [0..1]<br/>unit : string [1..1] |
| [PQType](StructureDefinition-PQType.html) | sammansatt | Mätbart värde med enhet. | value : DecimalPrimitiveType [1..1]<br/>unit : string [1..1] |
| [PartialDateType](StructureDefinition-PartialDateType.html) | sammansatt | Datum med variabel noggrannhet. | format : DateTypeFormatEnum [1..1]<br/>value : PartialDateValueType [1..1] |
| [PartialDateValueType](StructureDefinition-PartialDateValueType.html) | enkel | Datumvärde på formatet YYYY, YYYYMM eller YYYYMMDD. | xs:string, mönster `-?([1-9][0-9]{3}\|0[0-9]{3})((0[1-9]\|1[0-2])((0[1-9]\|[12][0-9]\|3[01]))?)?` |
| [PersonIdType](StructureDefinition-PersonIdType.html) | sammansatt | Identifierare för en person och typ av identifierare. | id : string [1..1]<br/>type : string [1..1] |
| [ResultType](StructureDefinition-ResultType.html) | sammansatt | Resultatkod och valfri text för logiska fel. | resultCode : ResultCodeEnum [1..1]<br/>resultText : string [0..1] |
| [TimePeriodType](StructureDefinition-TimePeriodType.html) | sammansatt | Tidsintervall med minst en start- eller sluttidpunkt. | start : TimeStampType [0..1]<br/>end : TimeStampType [0..1] |
| [TimeStampType](StructureDefinition-TimeStampType.html) | enkel | Tidpunkt på formatet YYYYMMDDhhmmss utan tidszon. | xs:string, mönster `(19\|20)\d\d(0[1-9]\|1[012])(0[1-9]\|[12][0-9]\|3[01])(0[0-9]\|1[0-9]\|2[0123])([0-5])([0-9])([0-5])([0-9])` |
| [UUIDType](StructureDefinition-UUIDType.html) | enkel | Universellt unik identifierare (UUID/GUID): 32 hexadecimala tecken, med eller utan bindestreck i mönstret 8-4-4-4-12. | xs:string, mönster `[A-Fa-f0-9]{32}\|(\{\|\()?[A-Fa-f0-9]{8}-([A-Fa-f0-9]{4}-){3}[A-Fa-f0-9]{12}(\}\|\))?` |
