# 6 Tjänstedomänens meddelandemodeller


 Tjänstedomänens meddelandemodeller
Här beskrivs meddelandemodeller för respektive tjänstekontrakt.

# GetLaboratoryOrderOutcome
Begäran
Svar
Nedanstående tabell mappar mellan de svenska klass- och attributnamnen i informationsspecifikation och tillämpningsanvisning, xml-schematyperna från det tekniska kontraktet samt referensinformationsmodellen Nationell Informationsstruktur 2020:1 från Socialstyrelsen.

# GetReferralOutcome
Meddelandeformatet är kompatibelt med HL7v3 CDA v.2.

# GetMaternityMedicalHistory
Modellen beskriver den logiska strukturen för ett svarsmeddelande. Tjänsten baseras på Socialstyrelsens blanketter för mödravårdsjournal.

# GetImagingOutcome

# Formatregler

## Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅMMDD”, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen ”YYYYMMDD”.

## Format för tid

Tid anges på formatet ”ttmmss”, vilket motsvarar den ISO 8601- och ISO 8824-kompatibla formatbeskrivningen ”hhmmss”.

## Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. All information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter ska med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

## Format för patient-id

### Personnummer
Personnummer anges enligt format ÅÅÅÅMMDDNNNN.

### Samordningsnummer
Samordningsnummer anges enligt format ÅÅÅÅMMDDNNNN.

### Lokal reservidentitet
Format för lokal reservidentitet: Olika format för varje landsting/region och därmed krav på flexibel hantering. Några exempel på reservidentiteter i olika regioner:
201612345678, 19521234TA3C, 20081234-0123, 123456-DA0A, 123456789A.