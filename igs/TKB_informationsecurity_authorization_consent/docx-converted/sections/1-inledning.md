## Inledning
Detta är beskrivningen av tjänstekontrakten i tjänstedomänen
informationsecurity: authorization : consent
Tjänstekontrakten är baserade på RIVTA 2.1 [R2] och reglerade genom arkitekturella beslut [R1].
Tjänsterna syftar till att vårdgivare eller omsorgsutförare inom svensk vård- och omsorg får verktyg att uppfylla Lagen om sammanhållen vård- och omsorgsdokumentation [R2] och Socialstyrelsens föreskrifter (SOSFS 2008:14 med handbok [R3]) gällande krav på samtycke för direktåtkomst till patientuppgifter från andra vårdgivare eller omsorgsutförare.
Genom att nationellt standardisera tjänstekontrakt för samverkan mellan vård- och omsorgsinformationsystem och samtyckestjänst skapas kompatibilitet mellan alla journalsystem och alla samtyckestjänster. Därigenom undviks huvudmanna-specifika anpassningar av journalsystem som behöver integration med samtyckestjänst.
Tjänstedomänen omfattar interaktioner för
att registrera patientens/brukarens eller dennes företrädares samtycke till att personal inom vård och omsorg får direktåtkomst till uppgifter från andra vårdgivare/omsorgsutförare (sammanhållen journalföring enligt Lagen om sammanhållen vård- och omsorgsdokumentation)
att registrera nödsituationer där samtycke inte kan inhämtas och uppgifterna behövs för nödvändig vård av patienten/brukaren
att hämta ut samtyckesunderlag för intern kontroll av samtycke i journalsystem
att via anrop från journalsystem kontrollera om samtycke finns
att ge medarbetare en sammanställd lista av patients/brukares alla samtycken som finns registrerade hos vårdgivare/utförare
att ge patienten/brukaren en sammanställd lista av dennes alla samtycken som finns registrerade oavsett vårdgivare
att ge patienten/brukaren möjlighet att, från en begäran av vården/omsorgen, kunna ge sitt samtycke
att ge patienten/brukaren möjlighet att avsluta ett tidigare givet samtycke
En utgångspunkt för tjänstedomänen är CeHis uppdrag Patientdatalagen i Praktiken (PDLiP [R1]), som syftat till att skapa förutsättningar för en nationell samsyn av tolkning och tillämpning av Patientdatalagen för informationssamverkan inom och mellan vårdgivare.
Arbetet baseras på RIV-specifikation för PDLiP [RIV PDLiP] som bland annat omfattar hanteringen av direktåtkomst inom sammanhållen journalföring.
Tjänstekontraktsbeskrivningen är en kravspecifikation. Den skall fungera som ett teknikneutralt, formellt regelverk som reglerar integrationskrav för parter (tjänstekonsumenter och tjänsteproducenter) som avser ansluta system för samverkan enligt dessa tjänstekontrakt. Tjänstekontraktsbeskrivningen är också ett viktigt underlag för skapande av de tekniska kontrakten (scheman och WSDL-filer).
Detta dokument kompletterar reglerna i de tekniska kontrakten. Tjänsteproducenter och tjänstekonsumenter ska m.a.o. följa såväl de maskintolkbara reglerna i de tekniska kontrakten, så väl som de regler som uttrycks verbalt i detta dokument.

### Svenskt namn
Samtyckestjänst
Kortnamn Informationssäkerhet:Säkerhetstjänster:Samtyckestjänst

