## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
ehr:accesscontrol
Den svenska benämningen är ”infrastruktur:säkerhetstjänster:patientrelation”. Vid nästa uppdatering som bryter bakåtkompatibilitet planeras överföring av det enda tjänstekontrakt som finns i ehr:accesscontrol till tjänstedomänen infrastructure:securityservices:patientrelationship som har det svenska namnet ”infrastruktur:säkerhetstjänster:patientrelation”.
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Domänen innehåller i denna version endast tjänstekontraktet AssertCareEngagement (kallas ibland ”TGP-kontraktet”). Kortfattat syftar funktionen till att möjliggöra för tillämpningar som bereder professionen åtkomst till sammanhållen journalföring att elektroniskt styrka att medarbetaren (användaren) agerar i uppdrag av en verksamhet där berörd patient har eller har haft ett behörighetsgrundande engagemang.
Exakt vad som avses med ett behörighetsgrundande engagemang, uttrycks genom regler i vårdgivarens verksamhetssystem. Det är med andra ord den verksamhet som bereder medarbetaren tillgång till sammanhållen journalföring, som ansvarar för vilka elektroniska spår som representerar ett åtkomstgrundande engagemang. Observera att det gäller varje verksamhet med medarbetare som bereds åtkomst till sammanhållen journalföring, oavsett om verksamheten är ansluten som producent.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
infrastruktur:säkerhetstjänster:patientrelation
tillgänglig patient (TGP)

### WEB beskrivning
Tjänstekontraktet för Tillgänglig patient (TGP) används av fristående e-tjänster som erbjuder professionen direktåtkomst till sammanhållen journalföring. Tjänsteproducenter för tjänstekontraktet ger svar på om aktuell användare av en sådan e-tjänst (t.ex. NPÖ-tjänsten) genom sitt medarbetaruppdrag har dokumenterad relation till patienten som styrker att tjänstekonsumenten (e-tjänsten) ska erbjuda användaren åtkomst till sammanhållen journalföring.
Vanligen är PAS- eller journalsystemen tjänsteproducenter för kontraktet. Det är alltså den egna verksamhetens IT-system som agerar tjänsteproducent när en medarbetare begär åtkomst till sammanhållen journalföring via en fristående e-tjänst.

