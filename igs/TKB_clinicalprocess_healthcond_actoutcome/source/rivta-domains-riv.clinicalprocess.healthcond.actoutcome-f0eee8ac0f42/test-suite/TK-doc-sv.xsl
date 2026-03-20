<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/testsuite">
		<html>
			<head>
				<style>
					ul {
						margin-top: 10px;
						margin-bottom: 10px;
					}
					h2, h3 {
						color: #196619;
					}
				</style>
			</head>
			<body>
				<h1>TK-testsvit för <xsl:value-of select="id"/></h1>
				<p>Domänversion: 4.1</p>
				<h2>Om testsviten</h2>
				<p>Detta dokument beskriver testsviten för <xsl:value-of select="id"/>. Testsviten innehåller ett antal testfall som kan användas för att verifiera implementationen innan integrationen med den nationella tjänsteplattformen.<br/>
				Testsviten innehåller ett antal testfall som kan användas för att samla in information om anslutande system. Denna information kan sedan ligga till grund för ett underlag för godkännande.<br/>
				Ett testfall med ej förväntat utfall ska med andra ord ses som en informationskälla för den avvikelse som ska rapporteras i självdeklarationen.
				I dessa fall rekommenderas mer omfattande tester och en utförlig dokumentation av vad man observerat, för att informationen redan i första granskningsrundan skall vara tillräcklig för beslut.<br/>

				Detta underlag för godkännande kommer att granskas av Inera Test och Utveckling som rapporterar eventuella avvikelser. Avvikelserna granskas därefter av Ineras avvikelsegrupp. Avvikelsegruppen kan besluta om tre olika utfall:
				<ul>
					<li>Avvikelsen är stoppande för produktion och kräver åtgärd.</li>
					<li>Avvikelsen är ej stoppande för produktion men kräver åtgärd.</li>
					<li>godkänd avvikelse.</li>
				</ul>
				<br/>
				I samtliga fall så ansvarar avvikelsegruppen för att informera leveransansvarig samt aktuell förvaltningsgrupp.<br/>
				Patientsäkerhet, interoperabilitet samt följsamhet mot tekniska regelverk är några av de kriterier som väger tungt och avgör hur avvikelsen klassas.<br/>
				Historiskt godkända avvikelser finns för jämförelse på <a target="blank" href="https://www.inera.se">www.inera.se</a>. Att motsvarande avvikelse finns på denna lista ska endast ses som en vägledning då varje fall bedöms enskilt. <br/>
				
				Testsviten använder SoapUI för att verifiera implementationen. Dokumentation om SoapUI hittas här: <a target="blank" href="https://www.soapui.org/getting-started/introduction.html">www.soapui.org</a>.<br/>
				Klicka på <a target="blank" href="https://www.soapui.org/downloads/soapui.html">den här länken</a> för att ladda hem en gratisversion av SoapUI. Installera enligt anvisning.</p>
				<h2>Förberedelser</h2>
				<p>
					<ul>
						<li>Gå till mappen <b>test-suite</b> i release-paketet</li>
						<li>Kopiera filen <b>‘soapui-support-N.N.NN.jar’</b> ('N.N.NN' är versionsnummer) till mappen <b>/bin/ext</b> där Soap-UI är installerat (leta efter mappen <b>/Program Files/Smartbear</b> på PC eller <b>/contents/java/app</b> på MAC OS)</li>
						<li>Öppna SoapUI och importera SoapUI-projektet (<b>test-suite/<xsl:value-of select="contractName"/>/<xsl:value-of select="contractName"/>-soapui-project.xml</b>) (välj ‘Import Project’ från menyn 'File')</li>
						<li>Om din webservice kräver ett SSL-certifikat, kan detta konfigureras via 'Preferences' (via menyn 'File').  
						I fönstret för inställningar, gå till fliken 'SSL Settings' och importera ditt certifikat under 'Keystore'</li>
						<li>Uppdatera <i>data.xml</i> så att den matchar den testdata du har i ditt system. Om du inte har testdata som passar så behöver detta läggas in i källsystemet (se nedan för instruktioner)</li>
						<li>Du borde nu kunna köra testfallen i SoapUI</li>
					</ul>
				</p>
				
				<h2>Testdata i <i>data.xml</i></h2>
				<p>
					Innan man kör testfallen i SoapUI så måste den data som skickas med i anropen anpassas utifrån det system som man vill testa. Detta görs genom att ändra i filen <i>data.xml</i> enligt nedan.<br/>
					<br/>
					Filen är i XML-format och i början finns en sektion som heter "globaldata". Här anger man den konfiguration som kommer att användas av alla testfall.<br/>
					Varje element i "globaldata" kan omdefinieras för ett specifikt testfall vid behov. Följande element är globala:
					<ul>
						<xsl:for-each select="globaldata/*">
							<li>
								<xsl:value-of select="name()"/>
							</li>
						</xsl:for-each>
					</ul>
					Globaldata innehåller ett antal konfigurationsparametrar för loggning: <br/>
                    <b>logTestData:</b> Sätts till true/false beroende på om loggning ska utföras eller ej. <b> Observera att patientdata kan lagras vid påslagen loggning.</b> <br/>
                    <b>logTestDataPath:</b> Sökvägen till den katalog där loggfilerna sparas, måste vara en katalog som användaren har rättighet att skriva i. <br/>
                    <b>logTestDataFilesAllowed:</b> Max antal filer som sparas. Det blir en fil för varje testfall som körs. När max antal filer har uppnåtts tas de äldsta bort så nya kan sparas.<br/>
				</p>
				
				<h2>Allmänna tips</h2>
				<p>
					<ul>
						<li>Kör ett testfall i taget och verifiera resultatet. Man kan också köra en hel testsvit (t.ex. "1 Basic tests") för att köra igenom alla testfall i just den sviten.<br/>
						Om du gör någon ändring som ska påverka ett specifikt testfall, kan man efter att ha verifierat just det testfallet köra genom hela sviten för att snabbt se att det "hänger ihop".</li>
						<li>Eventuella felmeddelanden skrivs ut dels till fönstret för testfallet och dels i sektionen "assertions" i anrops-fönstret.</li>
					</ul>
				</p>
				
				<h2>Beskrivning av testfallen</h2>
				<p>De parametrar man anger för ett specifikt testfall kompletterar och/eller omdefinierar de parametrar som anges i "globaldata".<br/>
				Det betyder att både parametrar från "globaldata" och det specifika testfallets sektion i filen används för det aktuella testfallet.<br/>
				OBS! Om en parameter med samma namn definieras både i "globaldata" och specifikt för testfallet, så kommer värdet från testfalls-sektionen att användas.<br/>
				Ett exempel kan vara "patientId". Denna definieras i "globaldata", eftersom det är troligt att det mesta av testdatan kommer att röra samma patient.<br/>
				Men för vissa testfall vill man kunna använda en annan patient och för dessa testfall definierar man detta genom att ta bort kommentars-markeringen runt parametern "patientId" i testfallets sektion.<br/>
				Glöm inte att spara <i>data.xml</i> efter att du har ändrat i den.</p>
				<ul style="list-style-type:none">
					<xsl:for-each select="testcase|section">
						<h3>
							<li>
								<xsl:value-of select="@id"/>
							</li>
						</h3>
						<p>
							<xsl:choose>
								<xsl:when test="starts-with(@id, '1.1.1 ')">Filtrering. Verifierar att resultatet endast innehåller poster för given patient.</xsl:when>
								<xsl:when test="starts-with(@id, '1.1.2 ')">Filtrering. Testfall för filtrering på samordningsnummer. Ersätt patientId med det samordningsnummer som du vill filtrera på.</xsl:when>
								<xsl:when test="starts-with(@id, '1.1.3 ')">Filtrering. Testfall för filtrering på reservnummer. Ersätt patientId med det reservnummer som du vill filtrera på och ersätt patientIdType med lokalt definierat OID för reservnummer.</xsl:when>
								<xsl:when test="starts-with(@id, '1.3 ')">Filtrering. Verifierar att resultatet endast innehåller poster för given vårdenhet.</xsl:when>
								<xsl:when test="starts-with(@id, '1.4 ')">Filtrering. Verifierar att resultatet endast innehåller poster för givet källsystem.</xsl:when>
								<xsl:when test="starts-with(@id, '1.5 ')">Filtrering. Verifierar att resultatet endast innehåller poster för given vårdkontakt.
									<br/><b>careContactId</b> är vårdkontaktens unika id.</xsl:when>
								<xsl:when test="starts-with(@id, '1.6 ')">Filtrering. Verifierar att resultatet endast innehåller poster för given vårdgivare.</xsl:when>
								<xsl:when test="starts-with(@id, '1.7 ')">Filtrering. Verifierar att tjänsteproducenten kan filtrera resultatet baserat på HTTP-headern <b>x-rivta-original-serviceconsumer-hsaid</b>. 
									<br/>Undersök och jämför det ofiltrerade svaret från producenten med det senare svaret vars begäran använt ett tjänstekonsumentHSAId på vilket producenten utfört bortfiltrering,<br/> antalet poster skall i det senare svaret vara färre och
									parametern filterString skall då inte finnas i det filtrerade svaret. Testfallet är ej applicerbart för system som inte implementerat denna typ av filtrering.</xsl:when>
								<xsl:when test="starts-with(@id, '1.8 ')">Verifierar att responsen är ett <b>SOAP Fault</b>.<br/>Detta testfall kräver att tjänsteproducenten skapar förutsättningar för ett internt fel att uppstå, t.ex. att man stänger av kopplingen mot en databas.<br/>OBS! Manuell kontroll av svarsmeddelandet krävs för att säkerställa att meddelandet inte innehåller personuppgifter och att medföljande log-id inte är spårbart till patienten.</xsl:when>
								<xsl:when test="starts-with(@id, '2.1 ')">Verifierar att
									<ul>
										<li>Header-attributet "Content-type" har, om attributet finns, en teckenuppsättning som är satt till UTF-8 eller UTF-16</li>
										<li>Attributet "XML Prolog" har, om attributet finns, en teckenuppsättning som är satt till UTF-8 eller UTF-16</li>
										<li>Om båda attributen finns så ska de vara lika</li>
									</ul></xsl:when>
								<xsl:when test="starts-with(@id, '2.2 ')">Verifierar att responsen innehåller en sträng med specialtecken.<br/>
									Denna sträng behöver läggas upp på en post i källsystemet och bör innehålla så många specialtecken som möjligt.</xsl:when>
								<!--xsl:when test="starts-with(@id, '3.1 ')">Verifierar att alla returnerade poster innehåller elementen <b>healthcareProfessionalCareUnitHSAId</b> och <b>healthcareProfessionalCareGiverHSAId</b>, som krävs för PDL-loggning.</xsl:when-->
								<!--xsl:when test="starts-with(@id, '3.2 ')">Verifierar att en av de returnerade posterna innehåller tidpunkt då informationen registrerades. Element <b>authorTime</b>.</xsl:when-->
								<xsl:when test="starts-with(@id, '4.1 ')">Verifierar att tjänsteproducenten kan returnera en post som talar om att informationen får delas till patient. Element <b>approvedForPatient</b>.</xsl:when>
								<xsl:when test="starts-with(@id, '4.2 ')">Verifierar att tjänsteproducenten kan returnera en post som talar om att informationen inte får delas till patient. Element <b>approvedForPatient</b>.</xsl:when>
								<xsl:when test="starts-with(@id, '5.1 signed')">Verifierar att tjänsteproducenten kan returnera en signerad post. Element <b>legalAuthenticator</b>.</xsl:when>
								<xsl:when test="starts-with(@id, '5.2 unsigned')">Verifierar att tjänsteproducenten kan returnera en osignerad post. Element <b>legalAuthenticator</b>.</xsl:when>
								<xsl:when test="starts-with(@id, '5.3 locked')">Verifierar att tjänsteproducenten kan returnera en post som har låsts av systemet efter att en viss tid har förflutit utan att någon har signerat den. Element <b>legalAuthenticator</b>.</xsl:when>
								<xsl:when test="starts-with(@id, '6.1 Loadtest')">
								Lasttester. Testfallen 6.1.1 och 6.1.2 finns under fliken Load tests i 6.1 Loadtest. Öppna testfallen genom att dubbelklicka på dem och klicka på den gröna pilen för att köra testet.<br />
								<br/>
								<b>6.1.1 Grund</b><br />
								Syftet med testet är dels att verifiera att systemet kan hantera minst 10 samtidiga trådar, dels att skapa sig en bild av systemets prestanda. Testet är designat att ta max 3 minuter.<br />
								Defaultinställning för testfallet är: Threads (10), Strategy (Simple), Test Delay (1000), Random (0.5), Limit (180 Seconds).<br />
								I SLA-kapitlet i självdeklarationen, under "Övrig kommentar", ange genomsnittlig responstid. Ta värdet som visas i sista raden i kolumn "avg" och dela med antal anrop (oftast 2). Ange sedan värdet med enhet millisekunder (ms).
								<br /><br /><b>6.1.2 Uthållighet</b><br />
								Syftet med testet är att undersöka prestanda hos systemet över längre tid (30 minuter).<br />
								Defaultinställning för testfallet är: Threads (5), Strategy (Variance), Interval (60), Variance (1.0), Limit (1800 Seconds).<br />
								I SLA-kapitlet i självdeklarationen, under "Övrig kommentar", notera om testet gick att genomföra utan problem. Om inte, notera hur lång tid det var möjligt att köra.	</xsl:when>
								<xsl:when test="starts-with(@id, '6.2 Recovery')">
								Återhämtningstest. Testfallet 6.2.1 finns under fliken Load tests i 6.2 Recovery. Öppna testfallet genom att dubbelklicka på det och klicka på den gröna pilen för att köra testet.<br />
								<br/>
								<b>6.2.1 Återhämtning</b><br />
								Syftet med testet är att utsätta systemet för maximal last och att verifiera att systemet automatiskt återhämtar sig.<br />
								Defaultinställning för testfallet är: Threads (10), Strategy (Thread), Start Threads (10), End Threads (100), Limit (300 Seconds).<br />
								För att kontrollera att systemet har kunnat återhämta sig efter maximal last så rekommenderas att köra testfall "1.1.1 Personnummer" för att se att systemet svarar. I SLA-kapitlet i självdeklarationen, under "Övrig kommentar", notera om systemet kunde återhämta sig efter att ha utsatts för maximal last. Ange även hur många trådar som testet avslutades med.</xsl:when>
								<xsl:otherwise>
									<xsl:copy-of select="description"/>
								</xsl:otherwise>							
							</xsl:choose>							
						</p>
						<xsl:if test="data/*">
							<b>Testfalls-specifika parametrar</b>
						</xsl:if>
						<ul>
							<xsl:for-each select="data/*">
								<li>
									<xsl:value-of select="name()"/>
								</li>
							</xsl:for-each>
						</ul>
					</xsl:for-each>
				</ul>
				<br/>
				<br/>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet> 