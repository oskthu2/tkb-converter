<!-- Genererad av scripts/build_portal.py — redigera portal-data/ i stället. -->
<p>Syftet med denna domän är primärt att göra personuppgifter tillgängliga som är registrerade i Skatteverkets folkbokföringsregister. Folkbokföringsuppgifterna omfattar bland annat namn, adress, fastighetsuppgifter m.m. Domänen har även stöd för att kunna utfärda och hantera reservidentiteter (reservnummer), samt stöd för personens egna tilläggsuppgifter, såsom kontaktuppgifter och kontaktpersoner.
 
Konsumenter av domänens information är de flesta vård- och omsorgssystem som hanterar patienter/invånare. Konsumenter kan också vara system som hanterar medarbetare, identitetshanteringssystem och liknande.

*OBSERVERA: I releasepaketet nedan finns testsviter för sex av tjänstekontrakten, dessa testsviter kan med fördel användas vid testning. Skicka i nuläget däremot inte in testresultat i de mallar för självdeklarationer som också finns där, då Ineras testmodell ännu inte är införd för den här tjänsten.”</p>
<table class="grid">
<tr><th>Svenskt kortnamn</th><td>personuppgiftshantering</td></tr>
<tr><th>Svenskt namn</th><td>underlagförprocesstöd:invånare:personuppgifter</td></tr>
<tr><th>Typ</th><td>Nationell tjänstedomän</td></tr>
<tr><th>FHIR IG</th><td><a href="https://oskthu2.github.io/tkb-converter/TKB_strategicresourcemanagement_persons_person/index.html">TKB_strategicresourcemanagement_persons_person</a></td></tr>
<tr><th>Källkod</th><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src">Bitbucket</a></td></tr>
</table>

### Tjänstekontrakt

<table class="grid">
<thead><tr><th>Tjänstekontrakt</th><th>Version</th><th>RIV-TA-profil</th><th>Namnrymd</th></tr></thead>
<tbody>
<tr><td>GetFilesForOrderId</td><td>3.0</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetFilesForOrderId:3:rivtabp21</code></td></tr>
<tr><td>GetPersonContactInformation</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformation:3:rivtabp21</code></td></tr>
<tr><td>GetPersonContactInformationUnrestricted</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetPersonContactInformationUnrestricted:3:rivtabp21</code></td></tr>
<tr><td>GetPersonsForProfile</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfile:3:rivtabp21</code></td></tr>
<tr><td>GetPersonsForProfileUnresricted</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnresricted:3:rivtabp21</code></td></tr>
<tr><td>GetPersonsForProfileUnrestricted</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:GetPersonsForProfileUnrestricted:3:rivtabp21</code></td></tr>
<tr><td>LinkPersonIdentity</td><td>3.0</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:LinkPersonIdentity:3:rivtabp21</code></td></tr>
<tr><td>SearchPersonsForProfile</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfile:3:rivtabp21</code></td></tr>
<tr><td>SearchPersonsForProfileByOrder</td><td>3.2</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrder:3:rivtabp21</code></td></tr>
<tr><td>SearchPersonsForProfileByOrderUnrestricted</td><td>3.2</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileByOrderUnrestricted:3:rivtabp21</code></td></tr>
<tr><td>SearchPersonsForProfileUnrestricted</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:SearchPersonsForProfileUnrestricted:3:rivtabp21</code></td></tr>
<tr><td>UnlinkPersonIdentity</td><td>3.0</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:UnlinkPersonIdentity:3:rivtabp21</code></td></tr>
<tr><td>UpdatePerson</td><td>3.3</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:UpdatePerson:3:rivtabp21</code></td></tr>
<tr><td>UpdatePersonContactInformation</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformation:3:rivtabp21</code></td></tr>
<tr><td>UpdatePersonContactInformationUnrestricted</td><td>3.1</td><td>rivtabp21</td><td><code>urn:riv:strategicresourcemanagement:persons:person:UpdatePersonContactInformationUnrestricted:3:rivtabp21</code></td></tr>
</tbody>
</table>

### Versioner

<table class="grid">
<thead><tr><th>Version</th><th>Dokument</th><th>Granskningar</th><th>Nedladdning</th></tr></thead>
<tbody>
<tr><td>3.3.1</td><td>AB, IS, TKB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning - strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/VIS_granskning - strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/T-granskning -  strategicresourcemanagement_persons_person_3.3.1.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3.1/ServiceContracts_strategicresourcemanagement_persons_person_3.3.1.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3.1">källkod</a></td></tr>
<tr><td>3.3</td><td>TKB, IS, AB</td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/T-granskning -   strategicresourcemanagement_persons_person_3.3.docx">Arkitektur &amp; Regelverk: Teknik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning - strategicresourcemanagement_persons_person_3.3_.docx">Arkitektur &amp; Regelverk: Informatik: Godkänd</a><br/><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/VIS_granskning - strategicresourcemanagement_persons_person_3.3_.docx">Arkitektur &amp; Regelverk: Säkerhet: Godkänd</a></td><td><a href="http://rivta.se/downloads//strategicresourcemanagement_persons_person/3.3/ServiceContracts_strategicresourcemanagement_persons_person_3.3.zip">zip</a> · <a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/3.3">källkod</a></td></tr>
<tr><td>trunk</td><td>TKB, IS, AB</td><td></td><td><a href="https://bitbucket.org/rivta-domains/riv.strategicresourcemanagement.persons.person/src/master">källkod</a></td></tr>
</tbody>
</table>

<p><a href="tjanstedomaner.html">← Alla tjänstedomäner</a></p>
