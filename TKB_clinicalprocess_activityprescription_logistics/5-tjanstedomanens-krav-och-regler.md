# 5 Tjänstedomänens krav och regler - clinicalprocess: activityprescription: logistics — Ordinationslogistik v1.0.2

* [**Table of Contents**](toc.md)
* **5 Tjänstedomänens krav och regler**

## 5 Tjänstedomänens krav och regler

# 5 Tjänstedomänens krav och regler

Dessa gäller alla tjänstekontrakt i hela tjänstedomänen om inte undantag görs för specifika tjänstekontrakt senare i dokumentet.

## 5.1 Informationssäkerhet och juridik

### Tjänster för Läkemedelsförteckningen

Hanteringen av Läkemedelsförteckningen regleras i Lag om läkemedelsförteckning.

eHälsomyndigheten har personuppgiftsansvar för Läkemedelsförteckningen. Detta innebär att eHälsomyndigheten är ansvarig för att en tillräckligt god informations- och IT-säkerhet uppnås för att bibehålla patientens personliga integritet och patientsäkerhet. eHälsomyndigheten kommer därför att fortlöpande verifiera att tillräcklig säkerhet bibehålls enligt lagen om Läkemedelsförteckningen.

Skada och kränkning av den personliga integriteten som uppkommer till följd av till exempel bristande säkerhet kan leda till skadestånd enligt lagen om Läkemedelsförteckningen.

## 5.2 Felhantering

### Logiska fel

Kommer att resultera i resultatCode ERROR med beskrivande text i fältet comment.

### Tekniska fel

Ett fel (SoapFault) inträffade som inte har med skickad information att göra. Denna typ av fel kan fås om mottagande system ej svarar (time-out) eller liknande fel.

Tekniska fel får inte förmedla känsliga personuppgifter. Rekommenderas att returnera anropsidentitet i förekommande fall för felsökningsändamål.

En omsändning av informationen bör göras.

## 5.3 Krav på en tjänstekonsument

Följande krav skall beaktas då ett system agerar som en tjänstekonsument för tjänstedomänens ingående tjänster.

### Behörighetskontroll för Läkemedelsförteckningen

Behörighetskontroll ska ske i anropande system. Behöriga roller att anropa tjänsterna är:

* Förskrivare av läkemedel
* Legitimerad sjuksköterska

### Krav när Läkemedelsförteckningen visas som en separat lista

Se gällande version av eHälsomyndighetens dokument - Läkemedelsförteckningen för vårdaktörer, bilaga till handboken för Vårdaktörer.

### Säkerhetskrav för Läkemedelsförteckningen

Se gällande version av eHälsomyndighetens dokument - Säkerhetskrav på extern part som ansluter till eHälsomyndigheten IT-tjänster.

### Avtal för Läkemedelsförteckningen

Avtal behöver tecknas mellan eHälsomyndigheten och vårdaktör för att anslutning till tjänsterna skall vara möjlig att genomföra.

## 5.4 Krav på en tjänsteproducent

### Krav för Läkemedelsförteckningen

Följande krav skall beaktas då ett system (en part) agerar som en tjänsteproducent för ingående tjänster kring Läkemedelsförteckningen:

Den part som tillhandahåller tjänsterna måste uppfylla kraven enligt Lag om Läkemedelsförteckning.

### SLA krav

SLA-krav är inte specifierade på tjänstedomän-nivån. Se respektive tjänst för SLA-krav i förekommande fall.

