# 1 Inledning

## 1.1 Allmänt

Så gott som alla vård- och omsorgssystem i Sverige idag hanterar enkla demografiska
uppgifter i någon form, t.ex. namn, adress och födelsedatum för de patienter
(brukare/invånare/medborgare) som hanteras. I de flesta fall kommer denna information
direkt eller indirekt från Skatteverkets register via SPAR som gör dem elektroniskt
tillgängliga via avtal. Uppgifterna är visserligen klassade som offentliga men den
tekniska tillgången är i många fall kostnadsbelagd och på annat sätt begränsad.

Ur vårdens perspektiv finns ofta behovet att dessutom hantera ytterligare uppgifter av
samma karaktär, t.ex. telefonnummer, tillfälliga adresser, andra tilltalsnamn eller
geografiska koordinater. Det vanliga är därför att varje landsting (eller annan
vårdgivare) upprättar någon form av lokal personuppgiftstjänst som baseras på
information om de invånare som är folkbokförda inom landstinget. Informationen erhålls
från SPAR via periodiska aviseringar. Information om patienter som är folkbokförda
utanför landstinget erhålls vanligen genom slagning on-line mot någon av Skatteverkets
tjänster (SPAR/Navet).

För de företag och organisationer som tillhandahåller tillämpningar för vården innebär
det idag att dessa måste anpassas mot varje lokal personuppgiftstjänst.

Syftet med dessa tjänstekontrakt är att de ska kunna tillämpas såväl nationellt som
lokalt och därmed förenkla utveckling av, och samverkan mellan, vårdtillämpningar som
därmed blir oberoende av vilken instans av personuppgiftstjänst som används.

## 1.2 Förändrade tjänstekontrakt

Nedan redovisas kompatibilitet mellan konsument och producent för tjänstekontrakten
som finns i flera versioner. Kompatibilitet avser här såväl format som semantik. För
definition av kompatibilitet mellan format, se RIV Tekniska Anvisningar, Översikt.

| Tjänstekontrakt | Konsument | Producent | Kompatibilitet |
|---|---|---|---|
| LookupResidentForFullProfile | 1.0 | 1.1 | Ja |
| LookupResidentForFullProfile | 1.1 | 1.0 | Nej |
| LookupResidentForFullProfile | 1.1 | 1.2 | Ja |
| LookupResidentForFullProfile | 1.2 | 1.1 | Ja |
| UpdateResident (utgått) | 1.1 | 1.0 | Nej |
| UpdateResident (utgått) | 1.0 | 1.1 | Nej |

_Not: källdokumentets tabell benämner kontraktet "LoockupResidentByFullProfile" — ett
uppenbart extraherings-/typografiskt fel i källdokumentet (jämför avsnitt 7 och den
faktiska WSDL-filen, som entydigt anger "LookupResidentForFullProfile"). Namnet har
normaliserats här. Se QUESTIONS.md._

## 1.3 Utgångna tjänstekontrakt

Utgångna sedan 1.0:

- **UpdateResident**: Domänen standardiserar inte längre hur innehållet i en
  personuppgiftstjänst administreras.

## 1.4 Bakgrund

Så gott som alla vård- och omsorgssystem i Sverige idag hanterar enkla demografiska
uppgifter i någon form. Uppgifterna erhålls oftast direkt eller indirekt från
Skatteverkets register via SPAR. Syftet med dessa tjänstekontrakt är att de ska kunna
tillämpas såväl nationellt som lokalt och därmed förenkla utveckling av, och samverkan
mellan, vårdtillämpningar.

## 1.5 Genomförande

Som underlag för arbetet har använts de behov som kunnat identifieras av ett antal
pågående projekt med behov av personuppgifter:

- Den nationella patientöversikten (NPÖ) avser att använda en högst begränsad
  uppsättning fält, bl.a. patientens namn och uppgift om sekretessmarkering och
  avliden. Uppgifterna avser alla invånare i hela landet men användningen är
  avtalsreglerad med vissa förbehåll.
- Region Skåne och Västra Götalandsregionen driver ett projekt för e-remiss i
  samarbete med Siemens (Melior).
- Tillämpningen "Mina vårdkontakter" (MVK) använder redan idag uppgifter från SPAR via
  eget avtal, men skulle av ekonomiska skäl vilja använda uppgifter från deltagande
  landstings lokala personuppgiftssystem (som redan har avtal med SPAR).

Tjänstekontrakten är utarbetade av en arbetsgrupp med deltagare från ovanstående
projekt/förvaltningar och fastställda av arkitekturledningen (AL-T).

## 1.6 Behov och principer

För att underlätta förståelsen för tjänsterna sammanfattas här de behov och
lösningsprinciper som varit drivande vid utformningen:

1. Det mest centrala behovet är uppslagning av en specifik person baserat på
   personnummer.
2. Behovet av rena urvalsfrågor (t.ex. alla Larsson med kommunkod kommun 098) är inte
   prioriterat.
3. Alla tillämpningar har inte samma behov av information från Skatteverket/SPAR. Det
   är önskvärt att tillåta olika delmängder av fält — detta kan avse både bredden,
   dvs. vilka fält som tillgängliggörs, och djupet, dvs. vilka personer som
   tillgängliggörs.
4. Det kan synas en omöjlig uppgift att skapa interoperabilitet om inte bredden alltid
   är densamma, men bara det att en gemensam och nationellt normerad
   informationsmodell används är ett stort steg åt rätt håll. Modellen är en
   bruttolista med alla fält som potentiellt kan ingå i nationella personuppgifter.
   Denna har datatypen `ResidentType`.
5. För att definiera den delmängd av fält som faktiskt tillhandahålls av en viss
   tjänsteproducent används **profiler**. En profil har som enda syfte att entydigt
   kunna namnge denna delmängd.
6. En tjänstekonsument måste följaktligen försäkra sig om att tjänsteproducenten
   klarar en viss profil för att garantera interoperabilitet. Profilen utgör därför
   en del av tjänstekontraktets namn, vilket innebär att det finns flera olika
   tjänstekontrakt för uppslagning; alla med namn på formen `LookupResidentFor<Profile>`.
7. Eftersom fälten i bruttolistan (med undantag av personnummer) är valfria i
   XML-schemat innebär det ingen prestandamässig belastning att schemat innehåller
   fler fält än vad den aktuella profilen gör.
8. Det är omöjligt att en gång för alla fastställa ett exakt och slutgiltigt utseende
   på `ResidentType`. Utökningar kommer att vara nödvändiga i takt med att nya behov
   identifieras. Initialt ingår (merparten av) de fält som definierats av
   Skatteverket i `ResidentType`, s.k. **grundläggande fält**. Det finns dock ett
   grundläggande behov att standardisera åtkomst till ytterligare typer av
   personuppgifter (t.ex. telefonnummer, sms-nummer, vald husläkare), s.k.
   **utökade fält**. Utökade fält ska dock inte innehålla klinisk information eller
   vara knutna till en viss vårdprocess.
9. Tekniskt hanteras utökningar genom att `ResidentType` versionsmärks med ny
   namnrymd enligt den metod som anvisats av AL-T. En utökning påverkar inte
   befintliga `LookupResidentFor`-kontrakt eftersom varje version av kontraktet alltid
   är knuten till en specifik version av `ResidentType`. Vid definition av XML-schema
   finns även möjlighet att utöka en datatyp med arv, vilket kan utnyttjas för att vid
   behov skapa lokala (icke nationella) profiler med s.k. lokala fält (t.ex.
   "pnr i Finland").

## 1.7 Definitioner

- **Grundläggande fält**: fält som härrör från Skatteverkets folkbokföringsregister
  (SPAR/Navet).
- **Utökade fält**: kompletterande fält utanför Skatteverkets källa (t.ex.
  telefonnummer), som inte får innehålla klinisk information eller vara knutna till
  en vårdprocess.
- **Profil**: en namngiven delmängd av fälten i `ResidentType` som en viss
  tjänsteproducent garanterar att tillhandahålla. Profilen är en del av
  tjänstekontraktets namn (`LookupResidentFor<Profile>`).
