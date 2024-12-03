-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Dec 03. 15:50
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szotanulokviz`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szavak`
--

CREATE TABLE `szavak` (
  `Id` int(11) NOT NULL,
  `WordText` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Meaning` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CorrectAnswers` int(11) DEFAULT 0,
  `Mistakes` int(11) DEFAULT 0,
  `CorrectStreak` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavak`
--

INSERT INTO `szavak` (`Id`, `WordText`, `Meaning`, `CorrectAnswers`, `Mistakes`, `CorrectStreak`) VALUES
(1, 'Abandon', 'Elhagy', 0, 0, 0),
(2, 'Aberration', 'Abszurd, rendellenesség', 0, 0, 0),
(3, 'Abstain', 'Tartózkodik', 0, 0, 0),
(4, 'Acclimate', 'Hozzá szokik', 0, 0, 0),
(5, 'Acquisition', 'Beszerzés', 0, 0, 0),
(6, 'Adept', 'Jártas', 0, 0, 0),
(7, 'Adversary', 'Ellenség', 0, 0, 0),
(8, 'Affluent', 'Jóléti', 0, 0, 0),
(9, 'Altruism', 'Önzetlenség', 0, 0, 0),
(10, 'Anomaly', 'Rendellenesség', 0, 0, 0),
(11, 'Antagonist', 'Ellenség', 0, 0, 0),
(12, 'Apathy', 'Közöny', 0, 0, 0),
(13, 'Apprehensive', 'Aggódó', 0, 0, 0),
(14, 'Arbitrary', 'Önkényes', 0, 0, 0),
(15, 'Ascertain', 'Megállapít', 0, 0, 0),
(16, 'Astringent', 'Fanyar', 0, 0, 0),
(17, 'Atrophy', 'Sorvadás', 0, 0, 0),
(18, 'Benevolent', 'Jóságos', 0, 0, 0),
(19, 'Belligerent', 'Harcias', 0, 0, 0),
(20, 'Benign', 'Jóindulatú', 0, 0, 0),
(21, 'Blatant', 'Nyilvánvaló', 0, 0, 0),
(22, 'Cacophony', 'Hangzavar', 0, 0, 0),
(23, 'Camaraderie', 'Barátság, társaság', 0, 0, 0),
(24, 'Capricious', 'Szeszélyes', 0, 0, 0),
(25, 'Censure', 'Megrovás', 0, 0, 0),
(26, 'Chronic', 'Krónikus', 0, 0, 0),
(27, 'Clairvoyant', 'Látnok', 0, 0, 0),
(28, 'Coerce', 'Kényszerít', 0, 0, 0),
(29, 'Cogent', 'Meggyőző', 0, 0, 0),
(30, 'Complacent', 'Elégedett', 0, 0, 0),
(31, 'Concur', 'Egyetért', 0, 0, 0),
(32, 'Condescending', 'Leereszkedő', 0, 0, 0),
(33, 'Confound', 'Megzavar', 0, 0, 0),
(34, 'Conjecture', 'Feltételezés', 0, 0, 0),
(35, 'Conscientious', 'Lelkiismeretes', 0, 0, 0),
(36, 'Contemplate', 'Elgondolkodik', 0, 0, 0),
(37, 'Contrive', 'Kiötöl', 0, 0, 0),
(38, 'Cumbersome', 'Nehézkes', 0, 0, 0),
(39, 'Debilitate', 'Gyengít', 0, 0, 0),
(40, 'Deceit', 'Ámítás', 0, 0, 0),
(41, 'Defenestration', 'Kirugás az ablakon', 0, 0, 0),
(42, 'Defiant', 'Dacoló', 0, 0, 0),
(43, 'Deliberate', 'Megfontolt', 0, 0, 0),
(44, 'Demeanor', 'Magatartás', 0, 0, 0),
(45, 'Denounce', 'Elítél', 0, 0, 0),
(46, 'Deprecate', 'Ellenez', 0, 0, 0),
(47, 'Desolate', 'Elhagyatott', 0, 0, 0),
(48, 'Deteriorate', 'Romlik', 0, 0, 0),
(49, 'Diligent', 'Szorgalmas', 0, 0, 0),
(50, 'Discrepancy', 'Eltérés', 0, 0, 0),
(51, 'Disdain', 'Megvetés', 0, 0, 0),
(52, 'Disseminate', 'Terjeszt', 0, 0, 0),
(53, 'Ebullient', 'Lelkesen sugárzó', 0, 0, 0),
(54, 'Eccentric', 'Különc', 0, 0, 0),
(55, 'Eclectic', 'Válogatott', 0, 0, 0),
(56, 'Effervescent', 'Pezsgő', 0, 0, 0),
(57, 'Elicit', 'Kihúz, kicsikar', 0, 0, 0),
(58, 'Enervate', 'Kimerít', 0, 0, 0),
(59, 'Enigmatic', 'Rejtélyes', 0, 0, 0),
(60, 'Enmity', 'Ellenségeskedés', 0, 0, 0),
(61, 'Ephemeral', 'Rövid életű', 0, 0, 0),
(62, 'Erratic', 'Szabálytalan', 0, 0, 0),
(63, 'Esoteric', 'Titkos', 0, 0, 0),
(64, 'Exacerbate', 'Súlyosbít', 0, 0, 0),
(65, 'Exhort', 'Bátorít', 0, 0, 0),
(66, 'Exonerate', 'Felment', 0, 0, 0),
(67, 'Extrapolate', 'Kivetít', 0, 0, 0),
(68, 'Facade', 'Homlokzat', 0, 0, 0),
(69, 'Fastidious', 'Igényes', 0, 0, 0),
(70, 'Fervent', 'Lelkes', 0, 0, 0),
(71, 'Flabbergasted', 'Megdöbbent', 0, 0, 0),
(72, 'Flourish', 'Virágzik', 0, 0, 0),
(73, 'Frivolous', 'Tényfelesleges', 0, 0, 0),
(74, 'Frugal', 'Takarékos', 0, 0, 0),
(75, 'Futile', 'Hiábavaló', 0, 0, 0),
(76, 'Garish', 'Pompás', 0, 0, 0),
(77, 'Garrulous', 'Túlbeszélő', 0, 0, 0),
(78, 'Grandiose', 'Nagyzoló', 0, 0, 0),
(79, 'Gregarious', 'Társaságkedvelő', 0, 0, 0),
(80, 'Hapless', 'Szerencsétlen', 0, 0, 0),
(81, 'Harangue', 'Kioktatás', 0, 0, 0),
(82, 'Hasten', 'Siettet', 0, 0, 0),
(83, 'Heinous', 'Felháborító', 0, 0, 0),
(84, 'Histrionic', 'Színpadias', 0, 0, 0),
(85, 'Hypocritical', 'Képmutató', 0, 0, 0),
(86, 'Iconoclast', 'Képromboló', 0, 0, 0),
(87, 'Ignominious', 'Megalázó', 0, 0, 0),
(88, 'Impetuous', 'Heves', 0, 0, 0),
(89, 'Imprudent', 'Megfontolatlan', 0, 0, 0),
(90, 'Inane', 'Értelmetlen', 0, 0, 0),
(91, 'Incongruous', 'Inkonzisztens', 0, 0, 0),
(92, 'Indignant', 'Felháborodott', 0, 0, 0),
(93, 'Inevitable', 'Elkerülhetetlen', 0, 0, 0),
(94, 'Infamous', 'Hírhedt', 0, 0, 0),
(95, 'Inhibit', 'Gátol', 0, 0, 0),
(96, 'Innate', 'Veleszületett', 0, 0, 0),
(97, 'Insidious', 'Ravasz, alattomos', 0, 0, 0),
(98, 'Intrepid', 'Bátor', 0, 0, 0),
(99, 'Irascible', 'Hamarosan felidegesíthető', 0, 0, 0),
(100, 'Juxtapose', 'Egymás mellé helyez', 0, 0, 0),
(101, 'Kaleidoscope', 'Kaleidoszkóp', 0, 0, 0),
(102, 'Languid', 'Kimerült', 0, 0, 0),
(103, 'Lethargic', 'Lassan mozgó', 0, 0, 0),
(104, 'Lugubrious', 'Melankolikus', 0, 0, 0),
(105, 'Malevolent', 'Rosszindulatú', 0, 0, 0),
(106, 'Mendacious', 'Hazug', 0, 0, 0),
(107, 'Miserly', 'Fukar', 0, 0, 0),
(108, 'Mitigate', 'Enyhít', 0, 0, 0),
(109, 'Morose', 'Komor', 0, 0, 0),
(110, 'Nefarious', 'Gonosz', 0, 0, 0),
(111, 'Negligible', 'Jelentéktelen', 0, 0, 0),
(112, 'Obfuscate', 'Elhomályosít', 0, 0, 0),
(113, 'Oblivious', 'Figyelmetlen', 0, 0, 0),
(114, 'Obsolete', 'Elavult', 0, 0, 0),
(115, 'Ominous', 'Baljós', 0, 0, 0),
(116, 'Opulent', 'Gazdag, dús', 0, 0, 0),
(117, 'Ostentatious', 'Felvágós', 0, 0, 0),
(118, 'Paradoxical', 'Paradox', 0, 0, 0),
(119, 'Pedantic', 'Tudálékos', 0, 0, 0),
(120, 'Penultimate', 'Utolsó előtti', 0, 0, 0),
(121, 'Perfunctory', 'Felületes', 0, 0, 0),
(122, 'Perspicacious', 'Éleslátó', 0, 0, 0),
(123, 'Pervasive', 'Elterjedt', 0, 0, 0),
(124, 'Plausible', 'Hihető', 0, 0, 0),
(125, 'Plentiful', 'Bőséges', 0, 0, 0),
(126, 'Pompous', 'Pompás', 0, 0, 0),
(127, 'Posthumous', 'Poszthumusz', 0, 0, 0),
(128, 'Precarious', 'Veszélyes', 0, 0, 0),
(129, 'Prevalent', 'Elterjedt', 0, 0, 0),
(130, 'Pristine', 'Tiszta, érintetlen', 0, 0, 0),
(131, 'Proclivity', 'Hajlam', 0, 0, 0),
(132, 'Prodigal', 'Tékozló', 0, 0, 0),
(133, 'Prolific', 'Termékeny', 0, 0, 0),
(134, 'Puerile', 'Gyerekes', 0, 0, 0),
(135, 'Quaint', 'Régimódi', 0, 0, 0),
(136, 'Quixotic', 'Idealista, elérhetetlen', 0, 0, 0),
(137, 'Rancorous', 'Haragos', 0, 0, 0),
(138, 'Recalcitrant', 'Makacs', 0, 0, 0),
(139, 'Redundant', 'Felesleges', 0, 0, 0),
(140, 'Resilient', 'Rugalmas', 0, 0, 0),
(141, 'Reticent', 'Zárkózott', 0, 0, 0),
(142, 'Sanguine', 'Derűlátó', 0, 0, 0),
(143, 'Scrupulous', 'Lelkiismeretes', 0, 0, 0),
(144, 'Skeptical', 'Kételkedő', 0, 0, 0),
(145, 'Soporific', 'Álmosító', 0, 0, 0),
(146, 'Spurious', 'Hamis', 0, 0, 0),
(147, 'Stoic', 'Szentimentális, filozófus', 0, 0, 0),
(148, 'Subjugate', 'Leigáz', 0, 0, 0),
(149, 'Superfluous', 'Felesleges', 0, 0, 0),
(150, 'Surreptitious', 'Titkos', 0, 0, 0),
(151, 'Tantamount', 'Egyenlő', 0, 0, 0),
(152, 'Tenuous', 'Gyenge, vékony', 0, 0, 0),
(153, 'Trepidation', 'Nyugtalanság', 0, 0, 0),
(154, 'Trivial', 'Jelentéktelen', 0, 0, 0),
(155, 'Ubiquitous', 'Mindenhol jelenlévő', 0, 0, 0),
(156, 'Uproarious', 'Hangerős', 0, 0, 0),
(157, 'Venerable', 'Tiszteletre méltó', 0, 0, 0),
(158, 'Vindictive', 'Bosszúálló', 0, 0, 0),
(159, 'Volatile', 'Ingadozó', 0, 0, 0),
(160, 'Wistful', 'Sóvárgó', 0, 0, 0),
(161, 'Zealous', 'Buzgó', 0, 0, 0),
(162, 'Zest', 'Lendület', 0, 0, 0),
(163, 'Zephyr', 'Szellő', 0, 0, 0),
(164, 'Abacus', 'Számolóléc', 0, 0, 0),
(165, 'Acumen', 'Éleslátás', 0, 0, 0),
(166, 'Affable', 'Barátságos', 0, 0, 0),
(167, 'Alleviate', 'Enyhít', 0, 0, 0),
(168, 'Anachronism', 'Időbeli eltérés', 0, 0, 0),
(169, 'Antithesis', 'Ellentét', 0, 0, 0),
(170, 'Apathy', 'Közöny', 0, 0, 0),
(171, 'Auspicious', 'Kedvező', 0, 0, 0),
(172, 'Brevity', 'Rövidség', 0, 0, 0),
(173, 'Capitulate', 'Megadja magát', 0, 0, 0),
(174, 'Cordial', 'Barátságos', 0, 0, 0),
(175, 'Cryptic', 'Rejtélyes', 0, 0, 0),
(176, 'Cynical', 'Cinikus', 0, 0, 0),
(177, 'Diligent', 'Szorgalmas', 0, 0, 0),
(178, 'Discreet', 'Diszkrét', 0, 0, 0),
(179, 'Elucidate', 'Megvilágít', 0, 0, 0),
(180, 'Enervating', 'Kimerítő', 0, 0, 0),
(181, 'Equanimity', 'Nyugalom', 0, 0, 0),
(182, 'Facetious', 'Szórakoztató', 0, 0, 0),
(183, 'Flimsy', 'Gyenge', 0, 0, 0),
(184, 'Fractious', 'Veszélyes', 0, 0, 0),
(185, 'Furrowed', 'Barázdált', 0, 0, 0),
(186, 'Garish', 'Giccses', 0, 0, 0),
(187, 'Glaring', 'Szembeszökő', 0, 0, 0),
(188, 'Hapless', 'Szerencsétlen', 0, 0, 0),
(189, 'Inebriated', 'Részeg', 0, 0, 0),
(190, 'Insubordinate', 'Engedetlen', 0, 0, 0),
(191, 'Irate', 'Mérges', 0, 0, 0),
(192, 'Jovial', 'Vidám', 0, 0, 0),
(193, 'Juxtaposition', 'Egymás mellé helyezés', 0, 0, 0),
(194, 'Kinetic', 'Mozgásban lévő', 0, 0, 0),
(195, 'Languid', 'Kimerült', 0, 0, 0),
(196, 'Lustrous', 'Fénylő', 0, 0, 0),
(197, 'Mediocre', 'Mediokre', 0, 0, 0),
(198, 'Nefarious', 'Gonosz', 0, 0, 0),
(199, 'Ominous', 'Baljós', 0, 0, 0),
(200, 'Pallid', 'Pallid', 0, 0, 0),
(201, 'Querulous', 'Panaszkodó', 0, 0, 0),
(202, 'Recalcitrant', 'Makacs', 0, 0, 0),
(203, 'Squalid', 'Koszos', 0, 0, 0),
(204, 'Surreptitious', 'Titkos', 0, 0, 0),
(205, 'Turbulent', 'Viharos', 0, 0, 0),
(206, 'Voracious', 'Felfaló', 0, 0, 0),
(207, 'Wistful', 'Sóvárgó', 0, 0, 0),
(208, 'Zealous', 'Buzgó', 0, 0, 0),
(209, 'Zephyr', 'Szellő', 0, 0, 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `szavak`
--
ALTER TABLE `szavak`
  ADD PRIMARY KEY (`Id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `szavak`
--
ALTER TABLE `szavak`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
