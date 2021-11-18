-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 24 okt 2021 om 00:11
-- Serverversie: 10.4.21-MariaDB
-- PHP-versie: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthone`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`) VALUES
(1, 'Roeitrainer', '', './img/categories/roeitrainer.jpg'),
(2, 'Crosstrainer', '', './img/categories/crosstrainer.jpg \r\n'),
(3, 'Hometrainer', '', './img/categories/hometrainer.jpg'),
(4, 'Loopband', '', './img/categories/loopband.jpg');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `category_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `products`
--

INSERT INTO `products` (`id`, `name`, `picture`, `description`, `category_id`) VALUES
(1, 'First Degree Fitness Viking PRO XL', 'https://resources.t-fitness.com/bilder/firstdegreefitness/FDF-VKPX/first-degree-fitness-viking-pro-xl_600.jpg\r\n', 'De ongekende Fluid Force-technologie zorgt ervoor dat er geen dode hoeken zijn tijdens de hele slag, waardoor gebruikers een krachtige training kunnen doen en het gevoel hebben dat ze door open water gaan. Viking Pro XL biedt alle premium functies zoals Bluetooth auto-adjust-technologie die instinctief de gekozen tank weerstand correleert met het console display. Slimme apparaat connectiviteit gekoppeld aan de sociale app van FDF, stelt gebruikers in staat om persoonlijke of clubrecords op te nemen, te bewaken en op te slaan. Hoewel dit model meer dan alleen geschikt is voor de topsport markt, is Viking Pro XL een uitzonderlijke keuze voor mensen van elk fitnessniveau vanwege het gebruiksvriendelijke karakter en het ergonomische ontwerp.', 1),
(2, 'LifeFitness Roeitrainer Row HX', 'https://resources.t-fitness.com/bilder/lifefitness/rudergeraet/Row%20HX%202020/lifefitness-row-hx-01_600.jpg', 'De nieuwe tank van de Row HX-trainer heeft een grote en eenvoudige draaiknop die een nauwkeurige en gelijkmatige training garandeert .Daarnaast is de handgreep verbeterd ten opzichte van het vorige model. Het handvat is nu ergonomisch gevormd.', 1),
(3, 'Taurus Roeitrainer RX7', 'https://resources.t-fitness.com/bilder/taurus/rudergeraete/rx7-3/taurus-rx7-01_600.jpg', 'De Taurus roeitrainer RX7 heeft een gecombineerd weerstandssysteem met magnetische weerstand en luchtweerstand. Dit biedt verschillende voordelen bij het roeien: Enerzijds kan de basisweerstand worden ingesteld. Bovendien biedt dit systeem een meer gelijkmatige roeibeweging bij elke intensiteit. De magnetische weerstand heeft de neiging om het onderste gebied aan te tasten, terwijl de luchtweerstand bij hoge itensiteit juist zorgt voor een prettiger bewegingsverloop. Dankzij de magnetische weerstand is het ook mogelijk om te trainen met watt-nauwkeurigheid, daardoor kan een watt-waarde tot wel 300 watt worden ingesteld. De computer regels vervolgens het weerstandsniveau afhankelijk van de roeisnelheid zodat deze watt-waarde constant wordt gehouden.Dankzij de luchtweerstand is er een veel hogere weerstand mogelijk, zo kunnen ook wedstrijdsporters trainen met de Taurus roeitrainer RX7. Als één van de weinige roeitoestellen biedt de RX7 ook een bedieningspaneel op de handgreep, zo kun je ook tijdens de training instellingen veranderen.', 1),
(4, 'Kettler Roeitrainer Rower H2O', 'https://resources.t-fitness.com/bilder/kettler/rudergeraete/h2o/RO1029-100%20KETTLER%20Rower%20H2O_600.jpg', 'De Kettler Rower H2O overtuigt door zijn watertankweerstandssysteem. Het voordeel van de Rower H2O is dat je traint zonder een \"dood punt\". Dit betekent dat je bij elke beweging vanaf het begin tegen voortdurende weerstand werkt. Hierdoor wordt de training een zeer realistiche roeitraining\r\n\r\nTijdens je training heb je door het aangename watergeluid het gevoel echt op het water te roeien. De waterweerstand zorgt daarnaast ook voor een nog realistischere ervaring. Net als bij roeien op het water, neemt de weerstand automatisch toe met de intensiteit en snelheid van je roeibewegingen!\r\n\r\nDe LCD-trainingscomputer geeft je alle relevante informatie tijdens je training. Informatie zoals slagfrequentie, tijd, calorieverbruik, afstand en snelheid worden duidelijk weergegeven op de display.\r\n\r\nDe H2O van Kettler is voorzien van transportrollen en kan dus ruimtebesparend verticaal opgesteld worden. Zo kun je het toestel in korte tijd voor of na je training naar de gewenste plek verplaatsen en opbergen op slechts 53 x 51 cm.', 1),
(5, 'First Degree Fitness Apollo Hybrid AR Roeitrainer', 'https://resources.t-fitness.com/bilder/firstdegreefitness/neu2/Apollo%20Plus/Apollo_Plus_02_600.jpg', 'Met de First Degree Fitness Apollo Hybrid AR Roeitrainer kun je altijd roeien, onafhankelijk van het weer en het tijdstip en altijd met een realistisch roeigevoel. De robuuste constructie bestaande uit een combinatie van staal en met de hand gelakt Amerikaans essenhout ziet er niet alleen mooi uit, maar is ook nog eens zeer stevig en belastbaar tot maar liefst 150 kg. De roeitrainer heeft een waterweerstandssysteem dat een natuurlijk roeigevoel mogelijk maakt, wat lijkt op roeien op het water. Voor de weerstand geldt, hoe krachtiger jouw roeibeweging, des te groter de weerstand. Dankzij de gepatenteerde AR (Adjustable Resistance)-functie is de basisweerstand eenvoudig in te stellen. De Apollo Hybrid Ar is zeer geschikt voor interval-training, maar ook voor het hele gezin, omdat iedereen er op zijn eigen niveau mee kan trainen.', 1),
(6, 'Darwin Roeitrainer RM50', 'https://resources.t-fitness.com/bilder/darwin/rudergeraet/rm50/darwin-rm50-01_600.jpg', 'De Darwin RM50 is een modern vormgegeven roeitrainer met waterweerstand. Mede hierdoor kom je met de RM50 dicht in de buurt van het natuurlijke roeigevoel wat je krijgt alsof je op het water bent. Roeien met op de achtergrond geruis van het water. Dit zorgt voor een ontspannen en prettige sfeer tijdens de training. Bij het trainen met een waterweerstandssysteem bepaal je zelf de intensiteit of de weerstand aan de hand van hoe hard je trekt. Hoe harder je trekt hoe intensiever je roeitraining wordt. Dit maakt de RM50 niet alleen het ideale fitnessapparaat voor beginners en gevorderden, maar stelt je ook in staat om een variatie aan trainingen te doen, bijvoorbeeld voor langdurige intervaltraining. Door bewegingskracht wordt het water via een driebladige rotor overgebracht. Het extra rotorblad maakt de beweging gelijkmatiger en er is geen zogeheten dood punt (geen weerstand) aan het einde van de beweging.', 1),
(7, 'VirtuFit CTR 3.0i Ergometer Crosstrainer', 'https://fitwinkel.nl/resize/virtufit-ctr-30i-ergometer-crosstrainer-gratis-trainingsschema_8151263209961.jpg/0/1100/True/virtufit-ctr-30i-ergometer-crosstrainer-gratis-trainingsschema-2.jpg', 'Train op een van de meest effectieve manieren met de VirtuFit CTR 3.0i Crosstrainer. Met deze crosstrainer train je je gehele lichaam, van je benen en armen tot je core. En dat op een fijne en soepele manier. Met 32 weerstandsniveaus en 18 verschillende trainingsprogramma\'s zet je iedere keer net dat stapje extra. En je prestaties? Die zie je terug op het ultramoderne LCD display mét bluetooth.', 2),
(8, 'VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer', 'https://fitwinkel.nl/resize/fdr25i_14388763184345.jpg/500/500/True/virtufit-elite-fdr-25i-semi-pro-crosstrainer-gratis-trainingsschema-2.jpg', 'De stevige en slijtbestendige VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer geeft je een stille, vloeiende oefening, zelfs op de hoogste snelheid. Dit apparaat heeft alles in huis om optimaal te trainen. Het zware vliegwiel zorgt voor een vloeiende en prettige beweging. De VirtuFit Elite FDR 2.5i Semi-Pro Crosstrainer is voorzien van een dubbele geleiding wat zorgt voor een stille en stabiele training. De wielen van de dubbele geleiding zijn slijtvast en gelagerd en hierdoor onderhoudsvrij.', 2),
(9, 'Flow Fitness Glider DCT2500i Crosstrainer', 'https://fitwinkel.nl/resize/flow-fitness-dct2500i-front-view_14451261933160.jpg/500/500/True/flow-fitness-glider-dct2500i-crosstrainer-gratis-trainingsschema-2.jpg', 'Een training met de Flow Fitness Glider DCT2500i Crosstrainer is een training met enorm veel variaties. Dankzij de bluetooth ontvanger is dit fitnessapparaat geschikt voor gebruik met populaire apps als Kinomap en iConsole. Daarnaast beschikt de crosstrainer ook nog eens over 24 programma\'s die je gewoon via het LCD scherm volgt en over 16 verschillende trainingsniveaus.', 2),
(10, 'Bowflex Max Trainer M10 ', 'https://fitwinkel.nl/resize/max-m10-rotation-01-16-19-135-1_11282512569690.png/500/500/True/bowflex-max-trainer-m10-inclusief-borstband-gratis-montage.png', 'De Bowflex Max Trainer M10 combineert een crosstrainer en een stepper in één fitnessapparaat. Hierdoor kun je alle spieren in je lichaam intensief trainen. Je verbrandt veel calorieën doordat je verschillende spiergroepen tegelijkertijd aan het trainen bent. De Bowflex Max M10 bevat innovatieve functies zoals connectivity met Netflix & Amazon Prime, gepersonaliseerde coaching, upper-body trainingsprogramma’s en high-intensity intervaltrainingen.', 2),
(11, 'Nautilus E628 Crosstrainer', 'https://fitwinkel.nl/resize/nautilus-e628-crosstrainer-black-gratis-montage_15695012584771.png/500/500/True/nautilus-e628-crosstrainer-black-gratis-trainingsschema.png', 'De Nautilus E628 Crosstrainer is niet te vergelijken met een normale crosstrainer voor thuisgebruik. Deze crosstrainer is specifiek gericht op fanatieke sporters die puur prestatiegericht trainen en het allerbeste uit zichzelf willen halen.', 2),
(12, 'Matrix E50 Crosstrainer - XR', 'https://fitwinkel.nl/resize/xr-1_17538763183819.jpg/500/500/True/matrix-e50-crosstrainer-xr-gratis-trainingsschema.jpg', 'Ga voor een full body workout zonder je gewrichten te belasten met de Matrix E50 Elliptical Crosstrainer - XR. Deze crosstrainer is niet alleen mooi vormgegeven, maar is ook nog eens voorzien van de beste technische snufjes. Met de PerfectStride technologie combineert dit apparaat de ideale staplengte met een ergonomische en correcte plaatsing van je voet. ', 2),
(13, 'cardiostrong crosstrainer EX60', 'https://resources.t-fitness.com/bilder/cardiostrong/crosstrainer/ex60/1/cst-ex60-crosstrainer-ex60-blau-002_600.jpg', 'cardiostrong is al 9 jaar dé expert op het gebied van kwalitatief hoogwaardige en innovatieve fitnessapparatuur. cardiostrong biedt zowel voor cardio- als voor krachttraining compleet uitgeruste fitnessapparatuur met een goede prijs-kwaliteitverhouding. De fitnessapparatuur van cardiostrong blinkt uit in het gebruiksgemak en de handige extra functies en is perfect geschikt voor thuisfitness.', 3),
(14, 'Life Fitness Crosstrainer E1 Go', 'https://resources.t-fitness.com/bilder/lifefitness/crosstrainer/e1-go/lifefitness-ellipical-e1-go-1_600.jpg', 'De Life Fitness Crosstrainer E1 Go is de opvolger van de populaire Life Fitness Crosstrainer X1 go (Fit for Fun Crosstrainer Testwinnar 11/2013). De Life Fitness Crosstrainer E1 Go biedt optimale trainingseigenschappen. De WhisperStride-technologie zorgt ervoor dat de trainingsbeweging vloeiend en soepel verloopt en dat de crosstrainer geruisloos is. Je kan hem dus overal gebruiken en tijdens het trainen ook ongestoord lezen, muziek luisteren of films en series bekijken. Ook de geringe pedaalafstand en de lange en vlakke elliptische beweging zorgen voor een soepele en aangename trainingsbeweging. De pedalen zijn zeer groot zodat je voeten er goed op passen en slipvrij, zodat je veilig kan trainen. De kleine stapbreedte en grote staplengte zorgen voor een zeer natuurlijke trainingsbeweging. De natuurlijke afstand tussen de voeten voorkomt verkeerde bewegingen in de heupen. Je kan dus veilig en gewrichtsbesparend trainen. Dankzij de lage bodemafstand van 34 cm kan je makkelijk op,- en afstappen. Dit is ideaal bij een lange en pittige workout en voor mensen met een beperkte mobiliteit. De crosstrainer is uitgerust met ergonomische houdstangen zodat je ook effectief je bovenlichaam kan trainen.', 3),
(15, 'cardiostrong Crosstrainer EX20', 'https://resources.t-fitness.com/bilder/cardiostrong/crosstrainer/ex20-b/cardiostrong-ex20-01_600.jpg', 'cardiostrong staat garant voor kwalitatief hoogwaardige fitnessapparatuur voor thuis. De fitnessapparaten van cardiostrong zijn compact, mooi vormgegeven en compleet uitgerust met speciale features, die jouw training veilig, comfortabel en effectief maken.', 3),
(16, 'Flow Fitness X2i Crosstrainer', 'https://resources.t-fitness.com/bilder/flowfitness/FF-X2i/Flow%20Fitness%20X2i%20Crosstrainer_600.jpg', 'De Flow Fitness X2i Crosstrainer is optimaal uitgerust voor een effectieve cardiotraining. De crosstrainer heeft een inductie magneetremsysteem waarmee je traploos en zeer nauwkeurig de weerstand kan verhogen of verlagen en op vermogen kan trainen. Met de maar liefst 69 weerstandniveaus kan je zeer intensief trainen en je spieren echt aan het werk zetten. Doordat je lichaam hard moet werken train je ook je conditie. De Flow Fitness X2i Crosstrainer is dus perfect geschikt voor zeer ervaren sporters. Maar ook beginnende sporters en mensen die moeten revalideren of fysiotherapie volgen kunnen met de crosstrainer trainen en hun trainingsniveau in hun eigen tempo opbouwen. Door het grote aantal weerstandniveaus biedt de X2i altijd voldoende trainingsuitdaging.', 3),
(17, 'Taurus Crosstrainer FX9.9', 'https://resources.t-fitness.com/bilder/taurus/crosstrainer/fx99/taurus-crosstrainer-fx99-01_600.jpg', 'Taurus staat voor topkwaliteit fitnessapparatuur. Het merk is gespecialiseerd in fitnessapparaten voor thuis- en semiprofessioneel gebruik. De apparatuur wordt gekenmerkt door een optimale stabiliteit, veiligheid en duurzaamheid, zelfs bij zeer regelmatig en intensief gebruik. Alle producten van Taurus voldoen aan de hoogste kwaliteitsnormen.', 3),
(18, 'Flow Fitness Glider DCT2500i Crosstrainer - Interactief Kinomap', 'https://resources.t-fitness.com/bilder/flowfitness/FF-DCT2500i/Flow%20Fitness%20DCT2500i%20Crosstrainer_600.jpg', 'De Flow Fitness Glider DCT2500i Crosstrainer - Interactief Kinomap is een kwalitatief hoogwaardige crosstrainer met een perfecte prijs-kwaliteitverhouding. Het frame heeft een stevige staalconstructie zodat de crosstrainer zeer stabiel staat. Je hoeft je met de DCT2500i geen seconde te vervelen. De crosstrainer is uitgerust met maar liefst 24 trainingsprogramma\'s, waaronder een handmatig programma, 12 voorgeïnstalleerde programma\'s, 4 gebruikerprogramma\'s, drie hartslaggestuurde programma\'s, 1 Target Heart Rate programma, een Constant Watt programma, een BMI-analyse en een Body Fat- en conditiemeting, waarmee je je trainingsprestaties- en voortgang kan volgen.', 3),
(19, 'cardiostrong Loopband TX90 Smart', 'https://resources.t-fitness.com/bilder/cardiostrong/laufbaender/tx90-2-hd/cst-tx90-01_600.jpg', 'De cardiostrong Loopband TX90 Smart biedt zeer veel mogelijkheden voor de beginnende loper en ook voor de gevorderde loper. Het gebruiksgemak staat bij deze loopband voorop, de snelheid en het stijgingspercentage kunnen beide via 8 keuzetoetsen worden ingesteld op de zijleuningen van de loopband. Zo kun je fijn door blijven trainen, terwijl je de instellingen veranderd. De snelheid is instelbaar van 0.8 – 20 km/h en het stijgingspercentage is verstelbaar tot en met 15%. Met de motor van 3.5 PK zal het deze loopband niet aan kracht ontbreken voor een training op maat. Met de keuze uit 44 trainingsprogramma’s kan er gevarieerd en effectief getraind worden. Het grote touchscreen van 15,6 inch laat je in één oogopslag zien wat je trainingstijd, snelheid, stijgingspercentage, tempo, calorieverbruik en hartslag is. De hartslag wordt gemeten met handsensoren. Daarbij is het ook mogelijk om een draadloze hartslagmeting te doen via de optioneel verkrijgbare borstband.', 4),
(20, 'Darwin Fitness Loopband TM70 Touch', 'https://resources.t-fitness.com/bilder/darwin/laufband/tm70/df-tm70-t-01_600.jpg', 'Met de Darwin Fitness Loopband TM70 Touch is geen enkele training hetzelfde. Danzkij de 49 verschillende, vooraf geïnstalleerde trainingsprogramma\'s waarvan de snelheid en helling al is ingesteld. Dit maakt elke training weer anders. Ook is het mogelijk om je training handmatig in te stellen.\r\nDe TM70 Touch heeft een groot en duidelijk trainingsdisplay met touchscreen. Op de computer kun je op elk gewenst moment je trainingstijd, afstand, snelheid, stijgingspercentage, calorieverbuik en hartslag aflezen. Het meten van de hartslag gaat via de handsensoren op de handvatten. Wil je dat je hartslag nog accurater gemeten wordt, of wil je trainen zonder je handen op de handvatten te hebben? Dan is het mogelijk om de (optioneel te verkrijgen) borstand te gebruiken, deze meet geheel draadloos de hartslag.', 4),
(21, 'cardiostrong Loopband TX20', 'https://resources.t-fitness.com/bilder/cardiostrong/laufbaender/tx20/cardiostrong-treadmill-tx20_01_600.jpg', 'De cardiostrong TX20 is een compacte en betaalbare loopband op instapniveau om thuis eenvoudige hardloop- en wandeltrainingen te doen. Dankzij zijn kleine afmetingen en een inklapmechanisme kan de loopband zelfs in kleine fitnessruimtes of woonkamers worden gebruikt.', 4),
(22, 'Bowflex Loopband 56', 'https://resources.t-fitness.com/bilder/bowflex/laufbaender/bxt56/bowflex-laufband-bxt56_600.jpg', 'Met de Bowflex Loopband 56 ben jij verzekerd van een loopband van semiprofessionele kwaliteit. Waarmee je ook nog eens kan genieten van allerlei streamingdiensten. Deze loopband van hoge kwaliteit maakt jouw trainingen tot een waar genot. Aan comfort zal het niet ontbreken in ieder geval.', 4),
(23, 'cardiostrong Loopband TX30', 'https://resources.t-fitness.com/bilder/cardiostrong/laufbaender/tx30/cardiostrong-treadmill-tx30-01_600.jpg', 'Snelle toegang tot je training: eenvoudige montage en zeer gebruiksvriendelijk\r\nGeeft o.a. tempo, rondetijd, helling of het calorieverbuik per uur weer\r\nMaak persoonlijke programma\'s aan op de cardiostrong Loopband TX30\r\nVeel trainingsprogramma\'s voor afwisseling en effectievere controle\r\nModern, gebruiksvriendelijk touchscreen-display met drie weergavemodi: atletiekbaan/ronde, overzicht met staafdiagrammen en snelheidsmeter\r\nLoopvlak met demping om de gewrichten te beschermen tijdens het lopen\r\nVeel snelkeuzetoetsen voor comfortabele bediening, bijvoorbeeld tijdens HIIT-training\r\nBluetooth-interface voor de borstband of om muziek van je smartphone af te spelen op de luidsprekers\r\nEnergiebesparingsmodus\r\nMax. gebruikersgewicht: 120 kg\r\nOpstelmaten - cardiostrong Loopband TX30: (L) 175.7 cm x (B) 79.1 cm x (H) 141.3 cm\r\nIngeklapt - cardiostrong Loopband TX30: (L) 114 cm x (B) 79 cm x (H) 148 cm', 4),
(24, 'Darwin Loopband TM30', 'https://resources.t-fitness.com/bilder/darwin/laufband/tm30/darwin-laufband-tm30-01_600.jpg', 'De TM30 loopband heeft een schokdempende plank die gebruik maakt van een speciaal, elastisch loopvlak als schokabsorberende kern. De verhoogde vering biedt voldoende flexibiliteit. Het gewicht van de gebruiker wordt opgevangen en gedempt, daardoor wordt ook het geluid verminderd, waardoor je een comfortabele loopervaring hebt. Het eenvoudig in te klappen apparaat heeft een hellingshoek van vier procent, zo kom je met het lopen op een lichte helling dichter bij het hardlopen op straat.', 4);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
