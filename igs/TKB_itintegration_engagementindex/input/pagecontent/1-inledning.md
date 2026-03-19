# 1 Inledning

Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
itintegration: engagementindex:
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

## Svenskt namn

Engagemangsindex

## Beskrivning

Engagemangsindex (EI) är en stödtjänst som används i syftet att underlätta lokalisering av patientinformation som kan vara spritt över flera informationskällor.

Från indexet får tjänstekonsumenten information om vilka tjänsteproducenter som har information om den specifika patienten. Det räcker därmed att tjänstekonsumenten anropar dessa istället för att anropa alla tänkbara tjänsteproducenter och fråga vilka av dem som faktiskt har information om den specifika patienten.

Indexet i sig innehåller inte någon detaljerad patientinformation.

Detta dokument beskriver tjänstekontrakten i tjänstedomänen "itintegration.engagementindex".

Den svenska namnet på tjänstedomänen är "infrastruktur:tjänsteförmedlingstjänster:engagemangsindex".

Det finns målgruppsanpassade avsnitt nedan för följande målgrupper:

* Förvaltare och utvecklare av engagemangsindexinstanser (samtliga tjänstekontrakt)
* Användare som behöver uppdatera informationen i index (konsumenter av tjänstekontraktet Update)
* Användare som behöver använda informationen i index (konsumenter av tjänstekontraktet FindContent)

Tjänstekontrakten är baserade på RIVTA 2.1 [Ref2] och reglerade genom arkitekturella beslut [Ref1].

Tjänstedomänen omfattar tjänstekontrakt för att stödja konsumtion av engagemangsinformation, uppdatering av engagemangsinformation och notifiering av prenumeranter av engagemangsinformation.

Tjänstekontraktsbeskrivningen är en specifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt.

Det kan finnas flera instanser som kan samverka till exempel en nationell instans samt instanser hos part som tillämpar nationella referensarkitekturen.

Respektive ägare av en instans av ett engagemangsindex beslutar om regelverk för informationens användning och hantering. Engagemangsindex som ingår i nationell samverkan kan påverkas av gemensamt överenskomna regler gällande uppdatering och användning.

Merparten av de regler som beskrivs här avser användning av engagemangsindex i nationell samverkan. Lokal användning för andra ändamål utformar sina egna regler och policys.

Den nationella Referensarkitektur för vård och omsorg - T-boken [Ref4], beskriver engagemangsindex i ett sammanhang. Syftet kan sammanfattas till att skapa förutsättningar för att sammanställa information ur ett nationellt eller lokalt (baserat på lokala instanser) patientperspektiv.

Detta dokument kompletterar reglerna i de tekniska kontrakten (WSDL-filer och XML-scheman). Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, som de regler som uttrycks i detta dokument. Tjänsteproducenter och konsumenter ska följa regelverket i RIV-TA [Ref9].
