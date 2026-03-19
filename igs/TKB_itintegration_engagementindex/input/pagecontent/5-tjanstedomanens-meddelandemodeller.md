# 5 Tjänstedomänens meddelandemodeller

Här beskrivs de meddelandemodeller som tjänstekontrakten bygger på. För varje meddelandemodell beskrivs hur mappning ser ut delvis mot V-TIM, här version 2.2 samt mot schema (XSD) för tjänstekontrakt.

## V-MIM

Denna mappning görs av respektive tillämpande tjänstedomän.

## Informationsmodell

Följande tabell beskriver innehållet i en engagemangspost:

Varje tillämpande tjänstedomän preciserar betydelsen för de fält som är markerade med asterisk i informationsmodellen.

## Formatregler

### Format för Datum

Datum anges alltid på formatet "ÅÅÅÅMMDD", vilket motsvarar den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDD".

### Format för tidpunkter

Tidpunkter anges alltid på formatet "ÅÅÅÅMMDDttmmss", vilket motsvara den ISO 8601 och ISO 8824-kompatibla formatbeskrivningen "YYYYMMDDhhmmss".

### Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### Nationell accepterad personidentitet

* Person- eller samordningsnummer enligt skatteverkets definition (12 tecken)
* Nationellt reservnummer enligt Ineras definition (12 tecken), se referens Ref3

Validering enligt format (xml-regexp):

```
[0-9]{8}[0-9A-Zptf]{4}
```

### Format för personnummer (registeredResidentIdentIdentification)

Personnummer anges enligt format CCYYMMDDNNNN.

### Format för samordningsnummer (registeredResidentIdentIdentification)

Samordningsnummer anges enligt format CCYYMMDDNNNN.

De inledande sex siffrorna utgår från personens födelsetid (år, månad och dag). Därefter följer ett tresiffrigt individnummer som motsvarar födelsenumret i ett personnummer. Individnumret hämtas slumpvis ur en serie 001-999 för alla som är födda samma dag. Numret är udda för män och jämnt för kvinnor. Siffran för födelsedag ökas med talet 60 och en kontrollsiffra beräknas på samma sätt som för ett personnummer.

**Exempel**

Samordningsnummer för en man som är född den 3 oktober 1970 och har individnummer 239 blir:

```
19701003
+60
--------
197010632391
```

### Format för nationell reservidentitet (registeredResidentIdentIdentification)

XXYYMMDDNNGC. Se informationsspecifikationen i domänen strategicresourcemanagement.persons.person för mer information om formatet [Ref3].
