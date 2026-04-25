-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Mag 29, 2022 alle 23:23
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `monumenti`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `monumenti`
--

CREATE TABLE `monumenti` (
  `id` int(11) NOT NULL,
  `id1` int(10) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `immagine` varchar(60) NOT NULL,
  `descrizione` text NOT NULL,
  `storia` text NOT NULL,
  `curiosita` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `monumenti`
--

INSERT INTO `monumenti` (`id`, `id1`, `nome`, `immagine`, `descrizione`, `storia`, `curiosita`) VALUES
(1, 0, 'Cavatore', 'img/cavatore.jpg', 'In piazza Matteotti vi è situata la statua del Cavatore, opera realizzata da Giuseppe Rito.', 'Situato, in Piazza Matteotti, in una nicchia del castello Normanno circondata da massi, il Cavatore è il simbolo del lavoro e della tenacia dei catanzaresi. A realizzarlo, tra il 1951 e il 1954, fu l’architetto Giuseppe Rito. Questo importante monumento venne inaugurato nel febbraio 1956.\r\nSuccessivamente nel 1970 un tratto del muro di cinta del castello cedette, l’opera venne trasferita nelle gallerie di Villa Trieste dove rimase per circa tredici anni prima di essere ricollocata nella sua posizione originaria.\r\nQuesto importante monumento ha rappresentato in passato e rappresenta ancora oggi un importante punto di riferimento non soltanto per gli abitanti di Catanzaro.\r\n', '“Ci vediamo al Cavatore” è un modo di dire sempre attuale. Un tempo quando due o più persone che arrivavano dai paesi vicini erano soliti restare d’accordo così: Quandu finimu ni vidimu duva chiddhu ccu picu.'),
(2, 0, 'Parco della Biodiversità', 'img/parco.jpg', 'È un parco dedicato principalmente alla flora e fauna tipiche della nostra zona.', 'A giugno del 2001 l’allora presidente di provincia Michele Traversa presentò il piano “Parco della Biodiversità Mediterranea”, esso era un ambizioso progetto per il recupero e la riqualificazione dei terreni ormai abbandonati da decenni nella vasta area nota ai catanzaresi come “Agraria”. Il progetto di riqualificazione naturalistica andò a bloccare la possibilità di edificarvi alloggi per dare spazio alla natura. Nel maggio del 2002, mentre il lavoro di recupero e bonifica prosegue, viene mostrato ai giornalisti e alla cittadinanza per la prima volta un plastico in miniatura del progetto finale del Parco. Il 22 maggio del 2004, in un clima di grande festa e animazione viene inaugurato il primo lotto del Parco, una zona attrezzata con strutture pensate per l’attività ricreativa di grandi e piccoli.', 'In pochi anni  la città assistette all’apertura di una parte del parco. Con il tempo poi tutto il parco fu reso accessibile al pubblico. Una velocità, quella dimostrata nella rivalutazione del parco dell’Agraria, che in Calabria si è vista in poche occasioni. Il risultato è stato sorprendente.'),
(3, 0, 'Duomo di Catanzaro', 'img/duomo.jpg', 'Il Duomo di Catanzaro è la sede dell’arcidiocesi e il principale luogo di culto.', 'Questa cattedrale, fu eretta su quel che restava dell’antica cattedrale normanna\r\nLa Cappella di San Vitaliano fu costruita accostata alla facciata sinistra della Cattedrale di Santa Maria Assunta nel 1309, in corrispondenza di una delle entrate dell\'edificio conosciuta come la “porta dell’olmo”. Le tre nicchie della Cappella contengono le reliquie di San Vitaliano, San Fortunato e San Ireneo. \r\nLa Cappella del Santissimo Sacramento venne edificata nel 1588 e grazie ad essa la struttura assunse la classica geometria planimetrica a croce latina.\r\n', 'La Cattedrale di Santa Maria Assunta, nonostante abbia subito varie modifiche, si presenta comunque come un edificio molto suggestivo, la cui visita è vivamente consigliata, soprattutto a chi non vuole perdersi il centro della cristianità di Catanzaro.\r\nL’edificio fu inaugurato nel 1121, con una celebrazione che vide la partecipazione del Papa Callisto II che era lì presente per consacrare la nuova costruzione.\r\n'),
(4, 0, 'Statua Francesco Stocco', 'img/tocco.jpg', 'L’opera, denuncia un linguaggio molto influenzato dalla retorica del risorgimento.', 'Venne dato l’incarico allo scultore calabrese Giuseppe Scerbo che fu anche autore di numerosi monumenti di medesimo tipo e di opere di soggetto religioso\r\nIl Monumento a Francesco Stocco, oggi si trova nella piazzetta che prende il suo stesso nome. Originariamente la statua era collocata in Piazza Indipendenza ma intorno agli anni ’60 venne trasferito dove è situata ancora oggi. Questa operazione ha senza dubbio influito sullo stato di conservazione dell’opera che oggi è soggetta ad un enorme inquinamento di gas di scarico prodotti dalla circolazione viaria.\r\n', 'La scultura poggia su un elegante ed alto basamento modanato e di gusto neoclassico nel quale, in basso, è inserita l’epigrafe dedicatoria.'),
(5, 0, 'Ponte Morandi', 'img/ponte.jpg', 'È uno dei più grandi ponti ad arco ed è costruito su un\'unica arcata in cemento armato.', 'Il nome ufficiale è Viadotto Bisantis, ma tutti lo chiamano \"Ponte Morandi\", è la strada principale del Paese per accedere a Catanzaro. Il Viadotto è stato inaugurato nel 1962, tre anni dopo l\'inizio dei lavori, e ha superato un\'impressionante prova di carico testimoniata da molti cittadini. In breve tempo divenne un simbolo della città. ', 'Nel 2012 Catanzaro ha celebrato il 50° del suo ponte con un importante Convegno ed una visitatissima Mostra storica, presso il Museo delle arti cittadino, con foto d\'epoca e documenti originali.'),
(6, 0, 'Complesso del San Giovanni', 'img/giovanni.jpg', 'Conosciuta da tutti come Chiesa, il San Giovanni presenta molti tipi di attrazioni turistiche.', 'Partiamo proprio da le ultime citate nell’introduzione, le Gallerie del San Giovanni sono conosciute anche come “segrete”, non solo perché come tutti i passaggi sotterranei veniva spesso usato per scappare o per raggiungere altri luoghi di nascosto, ma anche perché utilizzate per incontri illeciti tra signorotti locali. In realtà non esistono documenti ufficiali che ne testimoniano l’uso, e tutto ciò che viene raccontato è una deduzione legata a studi sulla storia della città.', 'Ad oggi il San Giovanni è molto amato e conosciuto da tutti i giovani che possono sostare nella terrazza a divertirsi e grazie ad una sala presente all’interno della struttura anche organizzare feste.'),
(7, 7, 'Cavatore', 'img/cavatore.jpg', '', 'Located in Piazza Matteotti, in a niche of the Norman castle surrounded by boulders, the Cavatore is the symbol of the work and tenacity of the people of Catanzaro. It was built between 1951 and 1954 by the architect Giuseppe Rito. This important monument was inaugurated in February 1956. Subsequently in 1970 a section of the surrounding wall of the castle gave way, the work was transferred to the galleries of Villa Trieste where it remained for about thirteen years before being relocated to its original position. This important monument has represented in the past and still represents an important point of reference not only for the inhabitants of Catanzaro.', '\"See you at the Cavatore\" is a way of saying that is always up-to-date. A time when two or more people who came from neighboring countries used to agree as follows: Quandu finimu ni vidimu duva chiddhu ccu picu.'),
(8, 8, 'Biodiversity Park', 'img/parco.jpg', '', 'In June 2001, the then president of the province Michele Traversa presented the plan \"Mediterranean Biodiversity Park\", it was an ambitious project for the recovery and redevelopment of land that had been abandoned for decades in the vast area known to the Catanzaro as \"Agriculture\". The naturalistic redevelopment project blocked the possibility of building accommodation to give space to nature. In May 2002, while the recovery and reclamation work continues, a miniature model of the final project of the Park is shown to journalists and citizens for the first time. On 22 May 2004, in an atmosphere of great celebration and entertainment, the first lot of the Park was inaugurated, an area equipped with facilities designed for the recreational activity of young and old.', 'In a few years the city witnessed the opening of a part of the park. Over time, the whole park was made accessible to the public. A speed, that demonstrated in the revaluation of the Agraria park, which has been seen in Calabria on a few occasions. The result was surprising.'),
(9, 9, 'Cathedral of Catanzaro', 'img/duomo.jpg', '', 'This cathedral was built on what remained of the ancient Norman cathedral The Chapel of San Vitaliano was built next to the left facade of the Cathedral of Santa Maria Assunta in 1309, at one of the entrances of the building known as the \"door of the Elm tree\". The three niches of the chapel contain the relics of San Vitaliano, San Fortunato and San Ireneo. The Chapel of the Blessed Sacrament was built in 1588 and thanks to it the structure assumed the classic Latin cross planimetric geometry.', 'The Cathedral of Santa Maria Assunta, despite having undergone various modifications, nevertheless presents itself as a very suggestive building, whose visit is highly recommended, especially for those who do not want to miss the center of Christianity in Catanzaro. The building was inaugurated in 1121, with a celebration that saw the participation of Pope Callixtus II who was there to consecrate the new construction.'),
(10, 10, 'Francesco Tocco\'s Statue', 'img/tocco.jpg', '', 'The job was given to the Calabrian sculptor Giuseppe Scerbo who was also the author of numerous monuments of the same type and works of religious subjects. The Monument to Francesco Stocco, today is located in the square that takes the same name. Originally the statue was located in Piazza Indipendenza but around the 1960s it was moved to where it is still located today. This operation has undoubtedly affected the state of conservation of the work which today is subject to enormous pollution of exhaust gases produced by road traffic.', 'The sculpture rests on an elegant and high molded base in neoclassical style in which, at the bottom, the dedicatory epigraph is inserted.'),
(11, 11, 'Morandi bridge', 'img/ponte.jpg', '', 'The official name is Viadotto Bisantis, but everyone calls it \"Ponte Morandi\", it is the main road in the country to access Catanzaro. The Viaduct was inaugurated in 1962, three years after construction began, and has passed an impressive load test witnessed by many citizens. In a short time it became a symbol of the city.', 'In 2012 Catanzaro celebrated the 50th anniversary of its bridge with an important conference and a highly visited historical exhibition, at the city museum of arts, with period photos and original documents.'),
(12, 12, 'San Giovanni complex', 'img/giovanni.jpg', '', 'Let\'s start with the last ones mentioned in the introduction, the San Giovanni Galleries are also known as \"secret\", not only because like all underground passages it was often used to escape or to reach other places secretly, but also because they were used for meetings offenses between local lords. In reality, there are no official documents that testify to its use, and all that is told is a deduction linked to studies on the history of the city.', 'Today the San Giovanni is much loved and known by all young people who can stop on the terrace to have fun and, thanks to a room inside the structure, also organize parties.');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `monumenti`
--
ALTER TABLE `monumenti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `monumenti`
--
ALTER TABLE `monumenti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
