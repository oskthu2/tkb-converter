// GENERERAD av scripts/sync_field_descriptions.py från fälttabellerna i
// input/pagecontent/ — redigera inte för hand, ändra tabellen och kör om skriptet.

RuleSet: RequestExemptionStatusesRequestFieldDescriptions
* requestId ^definition = "Unikt Id för begäran om utlämnandet. Det är konsuments ansvar att säkerställa identifierarens unikitet. Producent kommer därefter att använda denna identifierare i sitt svar som sker asynkront via tjänstekontraktet ProcessExemptionStatuses"
* requestId ^comment = "TKB-fält: `requestId` (`IIType`, kardinalitet 1..1)."
* patientId ^definition = "Id för patienten där fältet id sätts till patientens identifierare. Anges med 12 tecken utan avskiljare.

Tjänsteproducenten skall i svaret leverera all information på en begäran riktad mot individens huvudidentitet, dvs även information som tidigare har registrerats på andra till individen kopplade identiteter (LRID, NRID, tidigare SNR, eller tidigare PNR)

Fältet type sätts till OID för typ av identifierare.

1) För PNR skall Skatteverkets oid för PNR (1.2.752.129.2.1.3.1) användas.

2) För SNR skall Skatteverkets oid för SNR (1.2.752.129.2.1.3.3) användas.

3) För NRID skall Ineras oid för NRID (1.2.752.74.9.1) användas.

4) Tjänsteproducenter skall även stödja sökning på LRID med hjälp av att ange lokalt definierade oid’ar för LRID, exempelvis SLL’s LRID(1.2.752.97.3.1.3).

OBS LRID kan ej användas tillsammans med EI och aggregerande tjänster då dessa komponenter idag inte är anpassade för att stödja typ av id, inga uppdateringar till EI skall göras av en tjänsteproducent för LRID.

En tjänstekonsument som vill begära mha LRID måste därmed använda sig av systemadressering och ha vetskap om vilken LRID-oid som gäller vid anrop mot en specifik tjänsteproducent."
* patientId ^comment = "TKB-fält: `patientId` (`IIType`, kardinalitet 1..1)."
* actor ^definition = "Aktören som begär utlämnandet.

Aktören är antingen invånare som begär ut sin information alternativt vårdnadshavare som begär ut barnets information.

Aktören kan även vara en vårdgivare som begär ut patients information från annan vårdgivare."
* actor ^comment = "TKB-fält: `actor` (`ActorType`, kardinalitet 1..1)."
* actor.actorTypeEnum ^definition = "Enumeration som visar typ av aktör. Kan vara en av följande:

CITIZEN

GUARDIAN

CAREGIVER"
* actor.actorTypeEnum ^comment = "TKB-fält: `actor.actorTypeEnum` (`ActorTypeEnum`, kardinalitet 1..1)."
* actor.actorId ^definition = "Beroende på typ av aktör anges antingen aktörens personnummer eller HSAId.

För CITIZEN och GUARDIAN anges ett personnummer, se attributet patientId för hur personnummer anges.

För CAREGIVER anges ett HSAId för vårdpersonal. I det fall sätts:

actor.actorId.root = 1.2.752.129.2.1.4.1

actor.actorId.extension = `<HSA Id>`"
* actor.actorId ^comment = "TKB-fält: `actor.actorId` (`IIType`, kardinalitet 1..1)."
* actor.careGiverId ^definition = "Om aktören är CAREGIVER ska HSAId för vårdgivare anges. Annars ska detta fält utelämnas.

För vårdgivare sätts:

actor.careGiverId.root = 1.2.752.129.2.1.4.1

actor.careGiverId.extension = `<HSA Id>`"
* actor.careGiverId ^comment = "TKB-fält: `actor.careGiverId` (`IIType`, kardinalitet 0..1)."
* responseLogicalAddress ^definition = "Logisk adress dit utlämnandet senare ska skickas. Anropande part av detta tjänstekontrakt måste således även vara producent för tjänstekontraktet ProcessExemptionStatuses, dit svaret/utlämnandet senare skickas asynkront. Det betyder att anropande part behöver vara upplagd i tjänsteadresseringskatalogen (TAK) som producent samt att konsument av ProcessExemptionStatuses givits anropsbehörighet till anropande part."
* responseLogicalAddress ^comment = "TKB-fält: `responseLogicalAddress` (`String`, kardinalitet 1..1)."
