// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: ProcessRequestFieldDescriptions
* requestId ^definition = "Remiss id

Remissens identitet. Format: Källsystem-Id(HSA-ID)#lokalt-id

Exempel: SE2321000012-0001#987"
* requestId ^comment = "TKB-fält: `request.requestId` (`RequestIdType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (.*)#(.*)

Maxlängd 256 tecken"
* typeOfRequest ^definition = "Remisstyp

Anger typ av remiss.

I denna version är den giltiga koden ”4” – allmänremiss"
* typeOfRequest ^comment = "TKB-fält: `request.typeOfRequest` (`CodeForRequestType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** codes:codeRequestOutcomeType"
* versionTimeStamp ^definition = "Versionstidpunkt

Tidpunkt då versionen skapades.

Denna tidpunkt kan skilja sig från tidpunkten då remissen skickas."
* versionTimeStamp ^comment = "TKB-fält: `request.versionTimeStamp` (`TimeStampType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** ÅÅÅÅMMDDttmmss"
* versionNumber ^definition = "Versionsnummer

Remissens versionsnummer.

Version startar alltid på 1 och räknas sekventiellt upp för varje ny version.

Denna räknas upp vid:

Ändrad remiss

Vidareskickad remiss

Ändrat betalnings-ansvar"
* versionNumber ^comment = "TKB-fält: `request.versionNumber` (`VersionNumberType`, kardinalitet 1..1).

**Kodverk/värde-mängd /ev begränsningar:** (0*[1-9]+|[1-9])\\d*"
* reasonForVersion ^definition = "Versionsorsak"
* reasonForVersion ^comment = "TKB-fält: `request.reasonForVersion` (`ReasonForVersionType`, kardinalitet 1..1).

**Modellanteckning:** Anger varför en ny version skapats."
* reasonForVersion.typeOfReason ^comment = "TKB-fält: `request.reasonForVersion.typeOfReason` (`CodeVersionReason`, kardinalitet 1..1).

**Modellanteckning:** Kv e-remiss versionsorsak [R5]: NR, AR, VR, AB. RIV-TA: typeOfReason.code."
* careResponsibilityRemains ^definition = "Vårdansvar kvarstår

Anger om remittent vill att vårdansvar ska kvarstå hos remitterande enhet eller om man vill att vårdansvar överförs till remissmottagande enhet.

Två alternativ:

True = Vårdansvar kvarstår

False = Begäran om övertagande av vårdansvar"
* careResponsibilityRemains ^comment = "TKB-fält: `request.careResponsibilityRemains` (`Boolean`, kardinalitet 1..1)."
* patient ^definition = "Patient"
* patient ^comment = "TKB-fält: `request.patient` (`PatientType`, kardinalitet 1..1).

**Modellanteckning:** Patient (PatientType)."
* patient.personId ^definition = "Person id

Patientens identitet"
* patient.personId ^comment = "TKB-fält: `request.patient.personId` (`PersonIdType`, kardinalitet 1..1).

**Modellanteckning:** Patientens identitet. value = personidentifierare (12 tecken utan skiljetecken för personnummer, samordningsnummer och nationellt reservId); system = OID för typ av personidentifierare: 1.2.752.129.2.1.3.1 (personnummer), 1.2.752.129.2.1.3.3 (samordningsnummer), 1.2.752.74.9.1 (nationellt reservId). RIV-TA: personId.extension/root."
* patient.address ^definition = "Tillfällig adress

Observera att adress används endast om tillfällig adress behöver anges, ej folkbokförd adress."
* patient.address ^comment = "TKB-fält: `request.patient.address` (`AddressType`).

**Modellanteckning:** Används endast om tillfällig adress behöver anges, ej folkbokförd adress. Avsedd för kallelse; format enligt Skatteverkets Navet."
