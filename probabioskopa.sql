-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 11:59 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `probabioskopa`
--

-- --------------------------------------------------------

--
-- Table structure for table `bioskop`
--

CREATE TABLE `bioskop` (
  `idBioskopa` int(10) NOT NULL,
  `nazivBioskopa` varchar(50) NOT NULL,
  `grad` varchar(30) NOT NULL,
  `adresa` varchar(30) NOT NULL,
  `brojSala` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bioskop`
--

INSERT INTO `bioskop` (`idBioskopa`, `nazivBioskopa`, `grad`, `adresa`, `brojSala`) VALUES
(1, 'Cinema Trstenik', 'Trstenik', 'Trstenička 34', 4),
(2, 'Cinema Kaludjerica', 'Beograd', 'Svetozara Markovica 9', 5),
(3, 'Cinema Novi Beograd', 'Beograd', 'Bulevar oslobodjenja 23', 7),
(4, 'Cinema Novi Sad', 'Novi Sad', 'Novosadska petlja 15', 6),
(5, 'Cinema Lazarevac', 'Lazarevac', 'Partizanski put 8', 3),
(10, 'Cinema Karaburma', 'Beograd', 'Partizanski put 189', 3),
(12, 'Cinema Smederevo', 'Smederevo', 'Smederevski put 225', 3);

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `idFilma` int(10) NOT NULL,
  `nazivFilma` varchar(30) NOT NULL,
  `opis` varchar(2000) NOT NULL,
  `preporuka` enum('novi','najgledaniji','uskoro','obican') NOT NULL,
  `brojPoena` int(10) NOT NULL,
  `trejler` varchar(100) NOT NULL,
  `trajanje` int(10) NOT NULL,
  `zanr` varchar(100) NOT NULL,
  `linkSlike` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`idFilma`, `nazivFilma`, `opis`, `preporuka`, `brojPoena`, `trejler`, `trajanje`, `zanr`, `linkSlike`) VALUES
(1, 'Parasite', 'Film prati cetvoroclanu porodicu Kim, marginalce koji se svakodnevno snalaze i zicare za egzistenciju.', 'novi', 20, 'https://www.youtube.com/embed/SEUXfv87Wpk', 136, 'triler, drama', 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg'),
(2, 'Avengers Endgame', 'Kulminacija 22 međusobno povezana filma, četvrti dio Avengers sage će uvući gledatelje u film, kako bi vidjeli prekretnicu ovog epskog putovanja. Naši voljeni heroji će zaista shvatiti kako je ova realnost krhka i žrtve koje se moraju poduzeti kako bi se održale.', 'najgledaniji', 30, 'https://www.youtube.com/embed/XMfuHzeiYW8', 181, 'akcija, drama, scifi', 'https://i.pinimg.com/originals/92/c8/e0/92c8e00b34fcfdeaf605a0647c21adb3.jpg'),
(3, 'Dark Waters', 'Robert (Mark Ruffalo) je korporativni advokat čija firma brani velike hemijske kompanije. Na početku filma mu se obraća farmer Vilbur (Bill Camp) iz rodnog mesta njegove bake, koji je siguran da velika kompanija tajno skladišti otrovne hemikalije u blizini njegovog poseda.', 'najgledaniji', 20, 'https://www.youtube.com/embed/jvQUIt0BWcU', 120, 'drama, triler', 'https://m.media-amazon.com/images/M/MV5BODQ0M2Y5M2QtZGIwMC00MzJjLThlMzYtNmE3ZTMzZTYzOGEwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_UY1200_CR90,0,630,1200_AL_.jpg'),
(5, 'Joker', 'Joker je originalna, samostalna prica koju do sada nismo videli na velikom ekranu. U njen centar je smesten Artur Flek, usamljeni covek koji pokusava da pronadje svoj put i svoju srecu u neprijateljski nastrojenom Gotamu. Artur preko dana radi kao klovn, dok mu je san da postane cenjeni stendap komicar, ali zivot ga ne mazi i ispostavlja se da je nekako uvek on predmet sale.', 'obican', 25, 'https://www.youtube.com/embed/zAGVQLHvwOY', 124, 'drama, krimi', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg'),
(6, 'Venom', 'Eddie Brock bio je istraziteljski novinar koji je imao svoju vlastitu emisiju i bio je angazovan s advokatom Anne Weying. Medjutim, nakon sto je razgovor otisao u krivu s milijarderom Carltonom Drakeom, njegov zivot je nestao posto je izgubio svu verodostojnost novinara.', 'novi', 30, 'https://www.youtube.com/embed/vi9m0JRo71I', 140, 'akcija, scifi', 'https://upload.wikimedia.org/wikipedia/sr/2/2c/Venom_2018.jpeg'),
(7, 'Legend', 'Braca Krej su cuveni britanski gangsteri koji su harali istocnim Londonom tokom pedesetih i sezdesetih godina proslog veka. Sa odlicnim vezama u politici i visem stalezu, pre svega zbog svojih popularnih nocnih klubova, Krejevi su stekli status nedodirljivih i opasnih kriminalaca koji su se krili iza paravana uspesnih biznismena.', 'novi', 27, 'https://www.youtube.com/embed/yI3v6KfR9Mw', 152, 'drama, krimi', 'https://m.media-amazon.com/images/M/MV5BMDQ4MGY0NWUtY2MxOC00YzI5LTg0OTEtZjNmY2Q2ZmM0MTA1XkEyXkFqcGdeQXVyNTQzOTc3MTI@._V1_.jpg'),
(8, 'Black Widow', 'Nadolazeci film Marvel otkriva da se Natasha vraca kuci u Rusiju zbog tajne misije koja je ponovno okuplja sa svojom otudjenom ruskom spijunskom obitelji, koja ukljucuje njezina mladja sestra Yelena Belova, crveni gardist i ruska super spijunka Melina.', 'uskoro', 17, 'https://www.youtube.com/embed/ybji16u608U', 145, 'akcija', 'https://upload.wikimedia.org/wikipedia/sr/e/e7/Black_Widow_2020.jpeg'),
(11, 'Green book', 'Naslov filma Green Book potiÄe od naziva knjige The Negro Motorist Green Book, turistiÄkog vodiÄa koji je afro-amerikancima sluÅ¾io za sigurno putovanje kroz ameriÄku segregaciju. VodiÄ sadrÅ¾i spisak hotela kojima nije bitna boja koÅ¾e njihovih gostiju. NaÅ¡i junaci, suoÄeni sa opasnostima vezanim za rasizam, osloniÄe se na nju i jedan na drugog kako bi preÅ¾iveli putovanje koje Äe im promeniti Å¾ivote.', 'uskoro', 17, 'https://www.youtube.com/embed/uC-_Gon2p9M', 150, 'drama, komedija', 'https://3.bp.blogspot.com/-30f-iRODIXs/XEip43oYxLI/AAAAAAAANT8/rwIAXx7LUpMmx7ANN1CkEgZPwI9Qz3UMwCLcBGAs/s1600/green%2Bbook.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `klub`
--

CREATE TABLE `klub` (
  `idKluba` int(10) NOT NULL,
  `nazivKluba` varchar(30) NOT NULL,
  `opisPogodnosti` varchar(200) NOT NULL,
  `popust` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klub`
--

INSERT INTO `klub` (`idKluba`, `nazivKluba`, `opisPogodnosti`, `popust`) VALUES
(1, 'Porodicni klub', 'Porodicna kartica, uz kupljene kokice se dobija sok gratis.', 15),
(2, 'Ljubitelji filma', 'Kartica za jednu osobu. Rezervacija karata važi 10 minuta do početka filma.', 12),
(6, 'Marvel fanovi', 'Popusti za sve Marvel filmove.', 14);

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `idKorisnika` int(10) NOT NULL,
  `ime` varchar(20) NOT NULL,
  `prezime` varchar(30) NOT NULL,
  `telefon` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pol` enum('muski','zenski') NOT NULL,
  `korisnickoIme` varchar(15) NOT NULL,
  `lozinka` varchar(15) NOT NULL,
  `brojPoena` int(10) NOT NULL,
  `tipKorisnika` enum('Korisnik','Menadzer','Administrator') NOT NULL,
  `idKluba` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`idKorisnika`, `ime`, `prezime`, `telefon`, `email`, `pol`, `korisnickoIme`, `lozinka`, `brojPoena`, `tipKorisnika`, `idKluba`) VALUES
(1, 'Milos', 'Momcilovic', 62299170, 'milosm99@gmail.com', 'muski', 'MilosM99', '123456', 200, 'Menadzer', NULL),
(2, 'Nikola', 'Momcilovic', 66030891, 'nikolamomca96@gmail.com', 'muski', 'Nikola96', '123456', 100, 'Administrator', NULL),
(3, 'Jelena', 'Jovancevic', 615166163, 'jelenaj@gmail.com', 'zenski', 'JelenaJ', '123456', 330, 'Korisnik', 1),
(4, 'Marija', 'Djuric', 6545623, 'marija@gmail.com', 'zenski', 'MarijaDj', '123456', 220, 'Korisnik', NULL),
(5, 'Slobodan', 'Momcilovic', 46456489, 'slobamom@gmail.com', 'muski', 'SlobaM', '123456', 210, 'Korisnik', 1),
(6, 'Milos', 'Stankic', 654654654, 'stankela95@gmail.com', 'muski', 'Stankela', '123456', 273, 'Korisnik', 2),
(7, 'Tamara', 'Sandic', 656464546, 'tamaras@gmail.com', 'zenski', 'TamaraS', '123456', 180, 'Korisnik', 2),
(8, 'Natasa', 'Momcilovic', 54561264, 'natasham70@gmail.com', 'zenski', 'NatasaM', '123456', 100, 'Korisnik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `projekcija`
--

CREATE TABLE `projekcija` (
  `idProjekcije` int(10) NOT NULL,
  `nazivFilma` varchar(30) NOT NULL,
  `datumProjekcije` date NOT NULL,
  `vremeProjekcije` time NOT NULL,
  `tehnologija` enum('2D','3D') NOT NULL,
  `cena` int(10) NOT NULL,
  `nazivBioskopa` varchar(30) NOT NULL,
  `idSale` int(10) NOT NULL,
  `idFilma` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projekcija`
--

INSERT INTO `projekcija` (`idProjekcije`, `nazivFilma`, `datumProjekcije`, `vremeProjekcije`, `tehnologija`, `cena`, `nazivBioskopa`, `idSale`, `idFilma`) VALUES
(1, 'Avengers Endgame', '2020-04-28', '21:00:00', '3D', 500, 'Cinema Kaludjerica', 3, 2),
(2, 'Avengers Endgame', '2020-04-30', '20:00:00', '2D', 500, 'Cinema Kaludjerica', 4, 2),
(3, 'Parasite', '2020-04-28', '21:30:00', '2D', 470, 'Cinema Trstenik', 1, 1),
(4, 'Dark Waters', '2020-05-02', '20:45:00', '2D', 450, 'Cinema Trstenik', 1, 3),
(5, 'Joker', '2020-05-05', '21:00:00', '2D', 480, 'Cinema Novi Beograd', 462, 5),
(6, 'Venom', '2020-05-01', '20:15:00', '2D', 470, 'Cinema Lazarevac', 465, 6),
(7, 'Venom', '2020-05-02', '20:45:00', '3D', 470, 'Cinema Lazarevac', 457, 6),
(8, 'Legend', '2020-05-06', '20:30:00', '2D', 510, 'Cinema Novi Sad', 468, 7),
(10, 'Dark Waters', '2020-05-04', '19:45:00', '2D', 470, 'Cinema Novi Beograd', 455, 3),
(11, 'Avengers Endgame', '2020-05-07', '20:45:00', '2D', 500, 'Cinema Karaburma', 469, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacija`
--

CREATE TABLE `rezervacija` (
  `idRezervacije` int(10) NOT NULL,
  `nazivFilma` varchar(30) NOT NULL,
  `nazivBioskopa` varchar(50) NOT NULL,
  `datumProjekcije` date NOT NULL,
  `vremeProjekcije` time NOT NULL,
  `tehnologija` enum('2D','3D') NOT NULL,
  `tipSedista` enum('obicna','ljubavna','vip') NOT NULL,
  `cena` int(10) NOT NULL,
  `idSale` int(10) NOT NULL,
  `brojKarata` int(5) NOT NULL,
  `idKorisnika` int(10) NOT NULL,
  `idFilma` int(10) NOT NULL,
  `idProjekcije` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rezervacija`
--

INSERT INTO `rezervacija` (`idRezervacije`, `nazivFilma`, `nazivBioskopa`, `datumProjekcije`, `vremeProjekcije`, `tehnologija`, `tipSedista`, `cena`, `idSale`, `brojKarata`, `idKorisnika`, `idFilma`, `idProjekcije`) VALUES
(6, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-30', '20:00:00', '2D', 'obicna', 500, 4, 4, 3, 2, 2),
(7, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-28', '21:00:00', '3D', 'obicna', 500, 3, 2, 3, 2, 1),
(8, 'Parasite', 'Cinema Trstenik', '2020-04-28', '21:30:00', '2D', 'obicna', 470, 1, 2, 3, 3, 3),
(9, 'Legend', 'Cinema Novi Sad', '2020-05-06', '20:30:00', '2D', 'obicna', 510, 468, 4, 3, 8, 8),
(10, 'Venom', 'Cinema Lazarevac', '2020-05-02', '20:45:00', '2D', 'obicna', 470, 457, 3, 4, 7, 7),
(11, 'Parasite', 'Cinema Trstenik', '2020-04-28', '21:30:00', '2D', 'obicna', 470, 1, 2, 4, 3, 3),
(12, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-30', '20:00:00', '2D', 'obicna', 500, 4, 3, 4, 2, 2),
(13, 'Legend', 'Cinema Novi Sad', '2020-05-06', '20:30:00', '2D', 'obicna', 510, 468, 2, 4, 8, 8),
(14, 'Legend', 'Cinema Novi Sad', '2020-05-06', '20:30:00', '2D', 'obicna', 510, 468, 3, 4, 8, 8),
(15, 'Dark Waters', 'Cinema Trstenik', '2020-05-02', '20:45:00', '2D', 'obicna', 450, 1, 3, 4, 4, 4),
(16, 'Venom', 'Cinema Lazarevac', '2020-05-02', '20:45:00', '2D', 'obicna', 470, 457, 3, 3, 7, 7),
(18, 'Parasite', 'Cinema Trstenik', '2020-04-28', '21:30:00', '2D', 'obicna', 470, 1, 4, 4, 3, 3),
(19, 'Dark Waters', 'Cinema Trstenik', '2020-05-02', '20:45:00', '2D', 'obicna', 450, 1, 4, 3, 3, 4),
(20, 'Dark Waters', 'Cinema Trstenik', '2020-05-02', '20:45:00', '2D', 'obicna', 450, 1, 7, 4, 3, 4),
(21, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-30', '20:00:00', '2D', 'obicna', 500, 4, 6, 3, 2, 2),
(22, 'Parasite', 'Cinema Trstenik', '2020-04-28', '21:30:00', '2D', 'obicna', 470, 1, 3, 5, 1, 3),
(23, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-28', '21:00:00', '3D', 'ljubavna', 500, 3, 3, 3, 2, 1),
(24, 'Venom', 'Cinema Lazarevac', '2020-05-02', '20:45:00', '3D', 'vip', 470, 457, 2, 3, 6, 7),
(25, 'Parasite', 'Cinema Trstenik', '2020-04-28', '21:30:00', '2D', 'vip', 470, 1, 3, 5, 1, 3),
(28, 'Legend', 'Cinema Novi Sad', '2020-05-06', '20:30:00', '2D', 'obicna', 510, 468, 2, 6, 7, 8),
(29, 'Avengers Endgame', 'Cinema Karaburma', '2020-05-07', '20:45:00', '2D', 'vip', 500, 469, 3, 6, 2, 11),
(30, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-28', '21:00:00', '3D', 'obicna', 500, 3, 3, 5, 2, 1),
(31, 'Joker', 'Cinema Novi Beograd', '2020-05-05', '21:00:00', '2D', 'vip', 480, 462, 3, 6, 5, 5),
(32, 'Avengers Endgame', 'Cinema Karaburma', '2020-05-07', '20:45:00', '2D', 'obicna', 500, 469, 3, 7, 2, 11),
(33, 'Avengers Endgame', 'Cinema Kaludjerica', '2020-04-30', '20:00:00', '2D', 'obicna', 500, 4, 3, 7, 2, 2),
(34, 'Joker', 'Cinema Novi Beograd', '2020-05-05', '21:00:00', '2D', 'ljubavna', 480, 462, 2, 8, 5, 5),
(35, 'Joker', 'Cinema Novi Beograd', '2020-05-05', '21:00:00', '2D', 'vip', 480, 462, 2, 8, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `sala`
--

CREATE TABLE `sala` (
  `idSale` int(10) NOT NULL,
  `nazivBioskopa` varchar(50) NOT NULL,
  `brojSedista` int(200) NOT NULL,
  `idBioskopa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sala`
--

INSERT INTO `sala` (`idSale`, `nazivBioskopa`, `brojSedista`, `idBioskopa`) VALUES
(1, 'Cinema Trstenik', 85, 1),
(2, 'Cinema Trstenik', 120, 1),
(3, 'Cinema Kaludjerica', 150, 2),
(4, 'Cinema Kaludjerica', 140, 2),
(455, 'Cinema Novi Beograd', 232, 3),
(457, 'Cinema Lazarevac', 250, 5),
(458, 'Cinema Novi Beograd', 179, 3),
(459, 'Cinema Lazarevac', 120, 5),
(462, 'Cinema Novi Beograd', 777, 3),
(465, 'Cinema Lazarevac', 338, 5),
(467, 'Cinema Novi Sad', 120, 4),
(468, 'Cinema Novi Sad', 333, 4),
(469, 'Cinema Karaburma', 99, 10),
(470, 'Cinema Karaburma', 120, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bioskop`
--
ALTER TABLE `bioskop`
  ADD PRIMARY KEY (`idBioskopa`),
  ADD KEY `idBioskopa` (`idBioskopa`),
  ADD KEY `brojSala` (`brojSala`),
  ADD KEY `idBioskopa_2` (`idBioskopa`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`idFilma`);

--
-- Indexes for table `klub`
--
ALTER TABLE `klub`
  ADD PRIMARY KEY (`idKluba`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`idKorisnika`),
  ADD KEY `tipKorisnika` (`tipKorisnika`),
  ADD KEY `idKluba` (`idKluba`);

--
-- Indexes for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD PRIMARY KEY (`idProjekcije`),
  ADD KEY `idFilma` (`idFilma`),
  ADD KEY `idSale` (`idSale`);

--
-- Indexes for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD PRIMARY KEY (`idRezervacije`),
  ADD KEY `idKorisnika` (`idKorisnika`,`idFilma`),
  ADD KEY `idFilma` (`idFilma`),
  ADD KEY `idPrikazivanja` (`idProjekcije`),
  ADD KEY `idKorisnika_2` (`idKorisnika`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`idSale`),
  ADD KEY `idBioskopa` (`idBioskopa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bioskop`
--
ALTER TABLE `bioskop`
  MODIFY `idBioskopa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `idFilma` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `klub`
--
ALTER TABLE `klub`
  MODIFY `idKluba` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `idKorisnika` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `projekcija`
--
ALTER TABLE `projekcija`
  MODIFY `idProjekcije` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rezervacija`
--
ALTER TABLE `rezervacija`
  MODIFY `idRezervacije` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `idSale` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=473;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `korisnik_ibfk_1` FOREIGN KEY (`idKluba`) REFERENCES `klub` (`idKluba`);

--
-- Constraints for table `projekcija`
--
ALTER TABLE `projekcija`
  ADD CONSTRAINT `projekcija_ibfk_1` FOREIGN KEY (`idFilma`) REFERENCES `film` (`idFilma`),
  ADD CONSTRAINT `projekcija_ibfk_2` FOREIGN KEY (`idSale`) REFERENCES `sala` (`idSale`);

--
-- Constraints for table `rezervacija`
--
ALTER TABLE `rezervacija`
  ADD CONSTRAINT `rezervacija_ibfk_1` FOREIGN KEY (`idKorisnika`) REFERENCES `korisnik` (`idKorisnika`),
  ADD CONSTRAINT `rezervacija_ibfk_2` FOREIGN KEY (`idProjekcije`) REFERENCES `projekcija` (`idProjekcije`);

--
-- Constraints for table `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`idBioskopa`) REFERENCES `bioskop` (`idBioskopa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
