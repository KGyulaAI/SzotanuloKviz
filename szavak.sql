-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 28. 13:53
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `szavak`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `english` varchar(255) DEFAULT NULL,
  `hungarian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `words`
--

INSERT INTO `words` (`id`, `english`, `hungarian`) VALUES
(1, 'Abandon', 'Elhagy'),
(2, 'Aberration', 'Abszurd, rendellenesség'),
(3, 'Abstain', 'Tartózkodik'),
(4, 'Acclimate', 'Hozzá szokik'),
(5, 'Acquisition', 'Beszerzés'),
(6, 'Adept', 'Jártas'),
(7, 'Adversary', 'Ellenség'),
(8, 'Affluent', 'Jóléti'),
(9, 'Altruism', 'Önzetlenség'),
(10, 'Anomaly', 'Rendellenesség'),
(11, 'Antagonist', 'Ellenség'),
(12, 'Apathy', 'Közöny'),
(13, 'Apprehensive', 'Aggódó'),
(14, 'Arbitrary', 'Önkényes'),
(15, 'Ascertain', 'Megállapít'),
(16, 'Astringent', 'Fanyar'),
(17, 'Atrophy', 'Sorvadás'),
(18, 'Benevolent', 'Jóságos'),
(19, 'Belligerent', 'Harcias'),
(20, 'Benign', 'Jóindulatú'),
(21, 'Blatant', 'Nyilvánvaló'),
(22, 'Cacophony', 'Hangzavar'),
(23, 'Camaraderie', 'Barátság, társaság'),
(24, 'Capricious', 'Szeszélyes'),
(25, 'Censure', 'Megrovás'),
(26, 'Chronic', 'Krónikus'),
(27, 'Clairvoyant', 'Látnok'),
(28, 'Coerce', 'Kényszerít'),
(29, 'Cogent', 'Meggyőző'),
(30, 'Complacent', 'Elégedett'),
(31, 'Concur', 'Egyetért'),
(32, 'Condescending', 'Leereszkedő'),
(33, 'Confound', 'Megzavar'),
(34, 'Conjecture', 'Feltételezés'),
(35, 'Conscientious', 'Lelkiismeretes'),
(36, 'Contemplate', 'Elgondolkodik'),
(37, 'Contrive', 'Kiötöl'),
(38, 'Cumbersome', 'Nehézkes'),
(39, 'Debilitate', 'Gyengít'),
(40, 'Deceit', 'Ámítás'),
(41, 'Defenestration', 'Kirugás az ablakon'),
(42, 'Defiant', 'Dacoló'),
(43, 'Deliberate', 'Megfontolt'),
(44, 'Demeanor', 'Magatartás'),
(45, 'Denounce', 'Elítél'),
(46, 'Deprecate', 'Ellenez'),
(47, 'Desolate', 'Elhagyatott'),
(48, 'Deteriorate', 'Romlik'),
(49, 'Diligent', 'Szorgalmas'),
(50, 'Discrepancy', 'Eltérés'),
(51, 'Disdain', 'Megvetés'),
(52, 'Disseminate', 'Terjeszt'),
(53, 'Ebullient', 'Lelkesen sugárzó'),
(54, 'Eccentric', 'Különc'),
(55, 'Eclectic', 'Válogatott'),
(56, 'Effervescent', 'Pezsgő'),
(57, 'Elicit', 'Kihúz, kicsikar'),
(58, 'Enervate', 'Kimerít'),
(59, 'Enigmatic', 'Rejtélyes'),
(60, 'Enmity', 'Ellenségeskedés'),
(61, 'Ephemeral', 'Rövid életű'),
(62, 'Erratic', 'Szabálytalan'),
(63, 'Esoteric', 'Titkos'),
(64, 'Exacerbate', 'Súlyosbít'),
(65, 'Exhort', 'Bátorít'),
(66, 'Exonerate', 'Felment'),
(67, 'Extrapolate', 'Kivetít'),
(68, 'Facade', 'Homlokzat'),
(69, 'Fastidious', 'Igényes'),
(70, 'Fervent', 'Lelkes'),
(71, 'Flabbergasted', 'Megdöbbent'),
(72, 'Flourish', 'Virágzik'),
(73, 'Frivolous', 'Tényfelesleges'),
(74, 'Frugal', 'Takarékos'),
(75, 'Futile', 'Hiábavaló'),
(76, 'Garish', 'Pompás'),
(77, 'Garrulous', 'Túlbeszélő'),
(78, 'Grandiose', 'Nagyzoló'),
(79, 'Gregarious', 'Társaságkedvelő'),
(80, 'Hapless', 'Szerencsétlen'),
(81, 'Harangue', 'Kioktatás'),
(82, 'Hasten', 'Siettet'),
(83, 'Heinous', 'Felháborító'),
(84, 'Histrionic', 'Színpadias'),
(85, 'Hypocritical', 'Képmutató'),
(86, 'Iconoclast', 'Képromboló'),
(87, 'Ignominious', 'Megalázó'),
(88, 'Impetuous', 'Heves'),
(89, 'Imprudent', 'Megfontolatlan'),
(90, 'Inane', 'Értelmetlen'),
(91, 'Incongruous', 'Inkonzisztens'),
(92, 'Indignant', 'Felháborodott'),
(93, 'Inevitable', 'Elkerülhetetlen'),
(94, 'Infamous', 'Hírhedt'),
(95, 'Inhibit', 'Gátol'),
(96, 'Innate', 'Veleszületett'),
(97, 'Insidious', 'Ravasz, alattomos'),
(98, 'Intrepid', 'Bátor'),
(99, 'Irascible', 'Hamarosan felidegesíthető'),
(100, 'Juxtapose', 'Egymás mellé helyez'),
(101, 'Kaleidoscope', 'Kaleidoszkóp'),
(102, 'Languid', 'Kimerült'),
(103, 'Lethargic', 'Lassan mozgó'),
(104, 'Lugubrious', 'Melankolikus'),
(105, 'Malevolent', 'Rosszindulatú'),
(106, 'Mendacious', 'Hazug'),
(107, 'Miserly', 'Fukar'),
(108, 'Mitigate', 'Enyhít'),
(109, 'Morose', 'Komor'),
(110, 'Nefarious', 'Gonosz'),
(111, 'Negligible', 'Jelentéktelen'),
(112, 'Obfuscate', 'Elhomályosít'),
(113, 'Oblivious', 'Figyelmetlen'),
(114, 'Obsolete', 'Elavult'),
(115, 'Ominous', 'Baljós'),
(116, 'Opulent', 'Gazdag, dús'),
(117, 'Ostentatious', 'Felvágós'),
(118, 'Paradoxical', 'Paradox'),
(119, 'Pedantic', 'Tudálékos'),
(120, 'Penultimate', 'Utolsó előtti'),
(121, 'Perfunctory', 'Felületes'),
(122, 'Perspicacious', 'Éleslátó'),
(123, 'Pervasive', 'Elterjedt'),
(124, 'Plausible', 'Hihető'),
(125, 'Plentiful', 'Bőséges'),
(126, 'Pompous', 'Pompás'),
(127, 'Posthumous', 'Poszthumusz'),
(128, 'Precarious', 'Veszélyes'),
(129, 'Prevalent', 'Elterjedt'),
(130, 'Pristine', 'Tiszta, érintetlen'),
(131, 'Proclivity', 'Hajlam'),
(132, 'Prodigal', 'Tékozló'),
(133, 'Prolific', 'Termékeny'),
(134, 'Puerile', 'Gyerekes'),
(135, 'Quaint', 'Régimódi'),
(136, 'Quixotic', 'Idealista, elérhetetlen'),
(137, 'Rancorous', 'Haragos'),
(138, 'Recalcitrant', 'Makacs'),
(139, 'Redundant', 'Felesleges'),
(140, 'Resilient', 'Rugalmas'),
(141, 'Reticent', 'Zárkózott'),
(142, 'Sanguine', 'Derűlátó'),
(143, 'Scrupulous', 'Lelkiismeretes'),
(144, 'Skeptical', 'Kételkedő'),
(145, 'Soporific', 'Álmosító'),
(146, 'Spurious', 'Hamis'),
(147, 'Stoic', 'Szentimentális, filozófus'),
(148, 'Subjugate', 'Leigáz'),
(149, 'Superfluous', 'Felesleges'),
(150, 'Surreptitious', 'Titkos'),
(151, 'Tantamount', 'Egyenlő'),
(152, 'Tenuous', 'Gyenge, vékony'),
(153, 'Trepidation', 'Nyugtalanság'),
(154, 'Trivial', 'Jelentéktelen'),
(155, 'Ubiquitous', 'Mindenhol jelenlévő'),
(156, 'Uproarious', 'Hangerős'),
(157, 'Venerable', 'Tiszteletre méltó'),
(158, 'Vindictive', 'Bosszúálló'),
(159, 'Volatile', 'Ingadozó'),
(160, 'Wistful', 'Sóvárgó'),
(161, 'Zealous', 'Buzgó'),
(162, 'Zest', 'Lendület'),
(163, 'Zephyr', 'Szellő'),
(164, 'Abacus', 'Számolóléc'),
(165, 'Acumen', 'Éleslátás'),
(166, 'Affable', 'Barátságos'),
(167, 'Alleviate', 'Enyhít'),
(168, 'Anachronism', 'Időbeli eltérés'),
(169, 'Antithesis', 'Ellentét'),
(170, 'Apathy', 'Közöny'),
(171, 'Auspicious', 'Kedvező'),
(172, 'Brevity', 'Rövidség'),
(173, 'Capitulate', 'Megadja magát'),
(174, 'Cordial', 'Barátságos'),
(175, 'Cryptic', 'Rejtélyes'),
(176, 'Cynical', 'Cinikus'),
(177, 'Diligent', 'Szorgalmas'),
(178, 'Discreet', 'Diszkrét'),
(179, 'Elucidate', 'Megvilágít'),
(180, 'Enervating', 'Kimerítő'),
(181, 'Equanimity', 'Nyugalom'),
(182, 'Facetious', 'Szórakoztató'),
(183, 'Flimsy', 'Gyenge'),
(184, 'Fractious', 'Veszélyes'),
(185, 'Furrowed', 'Barázdált'),
(186, 'Garish', 'Giccses'),
(187, 'Glaring', 'Szembeszökő'),
(188, 'Hapless', 'Szerencsétlen'),
(189, 'Inebriated', 'Részeg'),
(190, 'Insubordinate', 'Engedetlen'),
(191, 'Irate', 'Mérges'),
(192, 'Jovial', 'Vidám'),
(193, 'Juxtaposition', 'Egymás mellé helyezés'),
(194, 'Kinetic', 'Mozgásban lévő'),
(195, 'Languid', 'Kimerült'),
(196, 'Lustrous', 'Fénylő'),
(197, 'Mediocre', 'Mediokre'),
(198, 'Nefarious', 'Gonosz'),
(199, 'Ominous', 'Baljós'),
(200, 'Pallid', 'Pallid'),
(201, 'Querulous', 'Panaszkodó'),
(202, 'Recalcitrant', 'Makacs'),
(203, 'Squalid', 'Koszos'),
(204, 'Surreptitious', 'Titkos'),
(205, 'Turbulent', 'Viharos'),
(206, 'Voracious', 'Felfaló'),
(207, 'Wistful', 'Sóvárgó'),
(208, 'Zealous', 'Buzgó'),
(209, 'Zephyr', 'Szellő');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
