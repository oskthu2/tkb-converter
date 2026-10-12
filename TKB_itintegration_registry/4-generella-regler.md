# 4 Generella regler - itintegration: registry v1.0.0

* [**Table of Contents**](toc.md)
* **4 Generella regler**

## 4 Generella regler

# 4 Generella regler

Källa: **Itintegration - registry, Tjänstekontrakt**, utgåva A (2012-04-14), [Tjanstekontrakt_Itintegration_Registry_Beskrivning.doc](Tjanstekontrakt_Itintegration_Registry_Beskrivning.doc).

### 4.1 Format för personidentitet

Personidentitet anges på formatet ÅÅÅÅMMDD-XXXX. Samma format gäller för olika typer av personidentiteter(reservnummer mm), dvs 8 siffror, bindestreck samt 4 siffror.

### 4.2 Format för Datum

Datum anges alltid på formatet ”ÅÅÅÅ-MM-DD”. Exempel: 2010-11-26

### 4.3 Format för Datum och Tid

Tid och datum anges alltid på formatet ”ÅÅÅÅ-MM-DDThh:mm:ss”. Exempel: 2010-11-26T09:12:33

### 4.4 Tidszon för tidpunkter

Tidszon anges inte i meddelandeformaten. Alla information om datum och tidpunkter som utbyts via tjänsterna ska ange datum och tidpunkter i den tidszon som gäller/gällde i Sverige vid den tidpunkt som respektive datum- eller tidpunktsfält bär information om. Såväl tjänstekonsumenter som tjänsteproducenter skall med andra ord förutsätta att datum och tidpunkter som utbyts är i tidszonerna CET (svensk normaltid) respektive CEST (svensk normaltid med justering för sommartid).

### 4.5 Stöd för Ping-tjänst

Den tjänstekomponent som är tjänsteproducent för ett eller flera av tjänstekontrakten i denna tjänstedomän ska också erbjuda en tjänst enligt tjänstekontraktet urn:riv:itintegration:monitoring:PingForConfiguration:1. Det kan hämtas här (se rubriken ”Tjänsteövervakning”): http://code.google.com/p/rivta/

