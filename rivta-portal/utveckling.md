# Utveckling - RIV Tekniska Anvisningar — tjänstedomäner och regelverk v0.1.0

* [**Table of Contents**](toc.md)
* **Utveckling**

## Utveckling

RIV Tekniska Anvisningar Basic Profile 2.1 hittar du under [RIV Tekniska Anvisningar - Basic Profile 2.1](https://rivta.se/documents/ARK_0002/).

### Utveckling av tjänstekontrakt

Tjänstekontrakt är specifikationer som reglerar vilken information som utbyts mellan olika system. De baseras på internationella standarder och är upprättade enligt anvisningar för teknisk interoperabilitet. Inera förvaltar livscykeln för de nationella tjänstekontrakten, såsom hantering av förändrade krav och behov, versionshantering och spelreglerna vid utfasning.

* Anvisningar: * [RIV Tekniska Anvisningar - Domänschema](https://rivta.se/documents/ARK_0006/)
* [RIV Tekniska Anvisningar - Tjänsteschema](https://rivta.se/documents/ARK_0005/)
* [RIV Tekniska Anvisningar - Konfigurationsstyrning](https://rivta.se/documents/ARK_0007/)
* [Utveckling av testsvit](https://bitbucket.org/rivta-tools/servicedomain-test-framework/)
* [Best practice för datatypshantering](https://bitbucket.org/rivta-domains/best-practice/)
* [Verifiering av tjänsteproducent](https://confluence.nordicmedtest.se/display/NoWi)
* [Anvisning för utformning av nyttolast i tjänstekontrakt](https://rivta.se/documents/ARK_0061/)

  * Mallar: * [Tjänstekontraktsbeskrivning - Mall](https://rivta.se/documents/ARK_0015/)
* [Arkitekturella beslut - Mall](https://rivta.se/documents/ARK_0023/)
* [Informationsspecifikation - Mall](https://rivta.se/documents/ARK_0026/)

  * Verktyg: * [Tjänstekontraktsgenerator](http://rivtatools-prod.appspot.com/)
* [Verifieringsscript](https://bitbucket.org/rivta-tools/verify-scripts/)
* [Byggscriptsgenerator](https://bitbucket.org/rivta-tools/build-script-generators)
* [Tjänstekontrakt i integrationssamband (Hippo)](https://integrationer.tjansteplattform.se)

  * Granskningsmallar: * [T-granskning - Mall](https://rivta.se/documents/ARK_0051/)
* [S-granskning - Mall](https://rivta.se/documents/ARK_0050/)


### Utveckling av e-tjänster

Mallarna är främst tänkta som stöd för projekt som utvecklar gemensamma (nationella) tjänster, men de kan även fylla en viktig funktion i regionala eller lokala projekt.

* Mallar: * [Software Architecture Document - Mall](https://rivta.se/documents/ARK_0013/)
* [Arkitekturella beslut - Mall](https://rivta.se/documents/ARK_0023/)
* [Icke-funktionella krav - Mall och exempel](https://rivta.se/documents/ARK_0025/)


### Tjänsteplattform

En tjänsteplattform fungerar som en slags växel för system som vill utbyta information med varandra. Istället för att upprätta en direkt förbindelse mellan systemen sker informationsutbytet via tjänsteplattformen. På det sättet skapas lösa kopplingar mellan systemen. Det innebär att systemen har så få beroenden till varandra som möjligt för att förhindra dominoeffekter; om en verksamhet någonstans i Sverige bygger om sina interna system ska effekterna av det inte spridas och tvinga andra verksamheter i övriga landet att bygga om sina system.

RIV Tekniska anvisningar Tjänsteplattform innehåller de regler som måste tillämpas vid utveckling av tjänsteplattformar i enlighet med den tekniska referensarkitekturen i T-boken.

Syftet med regelverket är att underlätta utvecklings- och valideringsinsatser genom att samla de krav och regler som ställs på en tjänsteplattform. Målgruppen är tekniska arkitekter och utvecklare som ska realisera en tjänsteplattform enligt den tekniska referensarkitekturen i T-boken och RIV Tekniska anvisningar. Denna anvisning beskriver enbart tekniska regler. Därmed utelämnas ämnen som till exempel godkännandeprocess kring tjänstekontrakt och krav på loggning.

* Anvisningar: * [RIV Tekniska Anvisningar - Tjänsteplattform](https://rivta.se/documents/ARK_0034/)

  * Referensimplementation: * [Referensimplementation av tjänsteplattform (SKLTP)](https://inera.atlassian.net/wiki/spaces/SKLTP/)

  * Kodverk: * [Information om kodverksförvaltning](https://rivta.se/documents/ARK_0037/)


