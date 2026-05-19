## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
followup:qualityregistry:nkrr
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänstedomänens omfattning är sammanställning av underlag från vårddokumentation för registrering i kvalitetsregister. Den kravställande processen är kvalitetsregistrens behov av att kunna hämta underlag om patient, samt den speciella juridik detta omges av.
Användare av tjänstekontrakt i denna domän har kännedom om specificerade krav på sammanställning av underlag från vårddokumentationen. Dessa krav speglar den formulärmodell för datainsamling som kvalitetsregistrens manuella datainsamling baserar sig på.
Tjänstedomänen har två tjänstekontrakt. Tjänstekontraktet ProcessRegistrationNotification används av vårdgivare för att notifiera kvalitetsregister om att vårdgivaren har uppgifter om en patient som vårdgivaren avser ska registreras i registret. Tjänstekontraktet GetFormData används av kvalitetsregister för att hämta uppgifter om en patient med hjälp av tjänsten Nationell kvalitetsregisterrapport, NKRR.
NKRR förutsätter att den faktiska vårddokumentationen som kvalitetsregistrets förfrågan gäller finns tillgänglig via tjänstekontrakt, samt att specifikationen av frågor och möjlig svarsmängd är definierad.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
uppföljning kärnprocess:kvalitetsregister:nkrr

