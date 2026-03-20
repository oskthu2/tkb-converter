## Tjänstedomänens meddelandemodeller
Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

### Formatregler

#### Format för Datum
Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

#### Format för tidpunkter
Tidpunkter anges alltid på formatet ”ÅÅÅÅMMDDttmmss”, vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDDhhmmss”.

#### Tidszon för tidpunkter
Vid anrop ska alla tidpunkter anges med tillhörande tidszonsinformation, t.ex. UTC+1 eller UTC, enligt ISO 8601. Alla tidpunkter som returneras från NOD anges i UTC. Tjänstekonsumenter ansvarar för att omvandla tidpunkter till användarens valda tidszon innan visning.

#### Format för patientId
patientId.system sätts till oid för personnummer, samordningsnummer eller andan av Inera godkänd oid.
För personnummer skall Skatteverkets oid för personnummer ”1.2.752.129.2.1.3.1” användas.
För samordningsnummer skall Skatteverkets oid för samordningsnummer ”1.2.752.129.2.1.3.3” användas.
När patientId.value sätts till person- eller samordningsnummer skall det validera enligt följande uttryck för format
xml regexp:
[0-9]{8}[0-9pPtTfF][0-9]{3}
Exempel:
<urn1:patientId>
<fhir:system value="1.2.752.129.2.1.3.1"/>
<fhir:value value="1912121212"/>
</urn1:patientId>

#### Format för medicationListVersion
version.system sätts till urn:riv:clinicalprocess:activityprescription:prescribe:medicationListVersion
version.value sätts till version
Exempel:
<urn1:medicationListVersion>
<fhir:system value="urn:riv:clinicalprocess:activityprescription:prescribe:version"/>
<fhir:value value="1"/>
</urn1:medicationListVersion>

#### Format för medicationPrescriptionSequenceId
Unikt id för Läkemedelsbehandlingen.
Skapas av NOD vid registrering då instansen skapas, dvs. då första Läkemedelsordinationen registreras.
medicationPrescriptionSequenceId.system sätts till
”urn:riv:clinicalprocess:activityprescription:prescribe:medicationPrescreptionSequenceId”
medicationPrescriptionSequenceId.value sätts till id
Exempel:
<urn1:medicationPrescriptionSequenceId>
<fhir:system value="urn:riv:clinicalprocess:activityprescription:prescribe:medicationPrescreptionSequenceId"/>
<fhir:value value="1"/>
</urn1:medicationPrescriptionSequenceId>

