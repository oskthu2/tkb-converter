## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
clinicalprocess: activity: actions

Tjänstekontrakten är baserade på RIVTA 2.1 [R1] och reglerade genom arkitekturella beslut [R2].
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer). 
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Vård och omsorg, kärnprocess:hantera aktiviteter:aktiviteter
aktivitetshantering

### Beskrivning
Denna domän hanterar information gällande vårdaktiviteter kopplade till en patient, till exempel operationer och undersökningar. Syftet med domänen är att tillgängliggöra journalförd strukturerad information om aktiviteter i kärnprocessen på ett strukturerat sätt. Informationen i familjen av kontrakt som detta kontrakt tillhör möjliggör ett sätt att representera komplexa kliniska sammanhang i atomära delar. De atomära delarna sammanfogas med hjälp av sambandsklasser som kan skapa relationer mellan respektive del. Ett exempel på detta kan vara informationen om att en patient har genomgått en operation på grund av en tidigare ställd diagnos. Då har en koppling gjorts mellan den utförda operationen och diagnosen.
Tjänstedomänen ställer krav på att informationen är strukturerad och kodad. Denna domän ska tillgodose behov av återanvändning av strukturerad aktivitetsinformation som finns hos exempelvis kvalitetsregister, uppföljningssystem, system för den enskildes direktåtkomst, system för utlämnande, system för professionens åtkomst till sammanhållen journalföring och centrala system för rapportering till olika former av myndighetsregister.

