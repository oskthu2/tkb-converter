## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
infrastructure:itintegration:dataexchange
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Denna domän hanterar utbyte av ostrukturerad information. Domänen syftar till att tillmötesgå vårdprofessionens behov av direktåtkomst till patientens vårdinformation (så kallad sammanhållen journalföring). Domänen syftar även till att användas för patientens egen åtkomst till sin vårdinformation.
Tjänstekontrakten i denna domän hanterar specifikt binära data i form av bilagor till annan vårddokumentation eller vårddokumentation vars ursprungsform är binär data. Domänens kontrakt stödjer tjänsteinteraktioner där konsumenten är i behov av att läsa informationen från ett eller flera källsystem.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska med andra ord följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:tjänsteförmedlingstjänster:datautbyte
Datautbyte

