## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure: directory:synchronization

Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Denna tjänstedomän specificerar generella tjänstekontrakt för aktualisering av lokala kopior av masterdata. Tjänstekontrakten är generella i förhållande till respektive masterdatakällas semantik. Syftet är att alla masterdatakällor ska vara tjänsteproducenter av dessa kontrakt. Med hjälp av Tjänstekontrakten kan en kopiehållande tjänstekonsument periodiskt efterfråga ändringshistorik från en kompatibel masterdatakälla. Ändringshistoriken innehåller bara metadata om ändringarna – inte det specifika masterdatainnehållet. Därför behöver en kopiehållande tjänstekonsument använda dessa kontrakt i kombination med masterdatakällans primära tjänstekontrakt (ex. tjänstekontrakt för organisationsuppgifter) för att nå målet med synkroniseringen.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter (TP) och tjänstekonsumenter (TK) ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastrukturtjänster:katalogtjänster:synkronisering
katalogsynkronisering

