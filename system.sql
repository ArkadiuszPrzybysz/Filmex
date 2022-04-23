-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 31 Mar 2022, 10:40
-- Wersja serwera: 10.4.14-MariaDB
-- Wersja PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `system`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `genre`
--

CREATE TABLE `genre` (
  `genre_id` int(11) NOT NULL,
  `genre_name` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `genre`
--

INSERT INTO `genre` (`genre_id`, `genre_name`) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Thriller'),
(4, 'Crime'),
(5, 'Drama'),
(6, 'Mystery'),
(7, 'Fantasy'),
(8, 'Horror'),
(9, 'Animation'),
(10, 'Comedy'),
(11, 'Family'),
(12, 'Documentary'),
(13, 'History'),
(14, 'Biography'),
(15, 'Music'),
(16, 'Sci-Fi');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movies`
--

CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `age` varchar(50) COLLATE utf8mb4_polish_ci NOT NULL,
  `runtime` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `vote` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `banner` varchar(1000) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `poster` varchar(1000) COLLATE utf8mb4_polish_ci NOT NULL,
  `trailer` varchar(1000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `movies`
--

INSERT INTO `movies` (`movie_id`, `title`, `description`, `age`, `runtime`, `vote`, `banner`, `poster`, `trailer`) VALUES
(1, 'Uncharted', 'Street-smart Nathan Drake is recruited by seasoned treasure hunter Victor \"Sully\" Sullivan to recover a fortune amassed by Ferdinand Magellan, and lost 500 years ago by the House of Moncada.', '12', '1h 56m', '6.7', 'https://pliki.ppe.pl/storage/25e5c7f4d96744c6772e/25e5c7f4d96744c6772e@widescreen.jpg', 'https://sm.ign.com/ign_pl/screenshot/default/uncharted-poster-full-1642086040683_h9zf.jpg', 'https://www.youtube.com/embed/eHp3MbsCbMg'),
(2, 'King\'s Man: Pierwsza misja', 'In the early years of the 20th century, the Kingsman agency is formed to stand against a cabal plotting a war to wipe out millions.', '16', '2h 11min', '6.4', 'https://hipertextual.com/wp-content/uploads/2021/12/the_kings_man_la_primera_mision_matthew_vaughn.jpg', 'https://fwcdn.pl/fpo/59/78/815978/7972498.3.jpg', 'https://www.youtube.com/embed/5zdBG-iGfes'),
(3, 'Śmierć na Nilu', 'While on vacation on the Nile, Hercule Poirot must investigate the murder of a young heiress.', '12', '2h 7min', '6.6', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/i_b.HXATVrVM/v1/-1x-1.jpg', 'https://fwcdn.pl/fpo/34/86/803486/7991275.3.jpg', 'https://www.youtube.com/embed/dZRqB0JLizw'),
(4, 'Zaułek koszmarów', 'An ambitious carny with a talent for manipulating people with a few well-chosen words hooks up with a female psychiatrist who is even more dangerous than he is.', '16', '2h 30min', '7.2', 'https://biletyna.pl/file/get/id/70333', 'https://fwcdn.pl/fpo/85/06/848506/8000133.3.jpg', 'https://www.youtube.com/embed/Q81Yf46Oj3s'),
(5, ' Spider-Man: Bez drogi do domu', 'With Spider-Man\'s identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.', '12', '2h 28min', '8.7', 'https://scroll.morele.net/wp-content/uploads/2022/01/spider-man-no-way-home-1.jpg', 'https://www.bstok.pl/wp-content/uploads/2021/12/spider-man-no-way-home-poster-official.jpg', 'https://www.youtube.com/embed/JfVOs4VSpmA'),
(6, 'Teksańska masakra piłą mechaniczną', 'After nearly 50 years of hiding, Leatherface returns to terrorize a group of idealistic young friends who accidentally disrupt his carefully shielded world in a remote Texas town.', '16', '1h 23min', '4.9', 'https://csn.naekranie.pl/wp-content/uploads/2022/01/Teksa%C5%84ska%20masakra%20pi%C5%82%C4%85%20mechaniczn%C4%85_61f14d7b90f62.jpeg', 'https://fwcdn.pl/fpo/52/41/865241/7998668.3.jpg', 'https://www.youtube.com/embed/zcI6SFiK_yk'),
(7, 'Nasze magiczne Encanto', 'A Colombian teenage girl has to face the frustration of being the only member of her family without magical powers.', '7', '1h 42min', '7.3', 'https://ocdn.eu/pulscms-transforms/1/jfTk9kpTURBXy9mYzA3ZjhmYjczOGE2YzM1NDg1YzhkYWUzNDc3MDMzMC5wbmeTlQMHAM0Fj80DIpMJpjg5ZWQ0NAaTBc0EsM0CdoGhMAE/nasze-magiczne-encanto.jpg', 'https://media.multikino.pl/thumbnails/50/rc/RTZBRkRG/eyJ0aHVtYm5haWwiOnsic2l6ZSI6WyIxMDAwMCIsIjEwMDAwIl0sIm1vZGUiOiJpbnNldCJ9fQ==/uploads/images/films_and_events/encanto-net-cut_91ce912078.jpg', 'https://www.youtube.com/embed/CaimKeDcudo'),
(8, 'Krzyk', 'Twenty-five years after the original series of murders in Woodsboro, a new Ghostface emerges, and Sidney Prescott must return to uncover the truth.', '16', '1h 54min', '6.6', 'https://planetagracza.pl/wp-content/uploads/2021/12/krzyk.jpg', 'https://fwcdn.pl/fpo/18/85/851885/7995142.3.jpg', 'https://www.youtube.com/embed/beToTslH17s'),
(9, 'Pogromcy duchów. Dziedzictwo', 'When a single mom and her two kids arrive in a small town, they begin to discover their connection to the original Ghostbusters and the secret legacy their grandfather left behind.', '13', '2h 4min', '7.2', 'https://zpopk.pl/wp-content/uploads/2021/11/thumb-1920-1183704.jpeg', 'https://fwcdn.pl/fpo/01/55/820155/7980045.3.jpg', 'https://www.youtube.com/embed/ahZFCF--uRY'),
(10, 'Diuna', 'Feature adaptation of Frank Herbert\'s science fiction novel about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.', '12', '2h 35min', '8.1', 'https://www.granice.pl/sys6/pliki/publikacje/67bc9856e77a8678ec3cf21c1921e3c6.jpeg', 'https://fwcdn.pl/fpo/94/76/469476/7972251.3.jpg', 'https://www.youtube.com/embed/8g18jFHCLXk'),
(11, 'Batman', 'When the Riddler, a sadistic serial killer, begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption and question his family\'s involvement.', '16', '2h 55min', '8.9', 'https://pliki.ppe.pl/storage/93998808f25885b5a8ce/93998808f25885b5a8ce.jpeg', 'https://cont1.naekranie.pl/wp-content/uploads/2022%2F01%2Fbatek_61f2cdadd7c61.jpeg', 'https://www.youtube.com/embed/mqqft2x_Aa4'),
(12, 'Free Guy', 'A bank teller discovers that he\'s actually an NPC inside a brutal, open world video game.', '12', '1h 55min', '7.2', 'https://ostatniatawerna.pl/wp-content/uploads/2021/08/free-guy-grafika-glowna.jpg', 'https://www.bilety24.pl/public/users/478/o/free-guy.jpg', 'https://www.youtube.com/embed/X2m-08cOAbc'),
(13, 'Dom Gucci', 'When Patrizia Reggiani, an outsider from humble beginnings, marries into the Gucci family, her unbridled ambition begins to unravel their legacy and triggers a reckless spiral of betrayal, decadence, revenge, and ultimately...murder.', '16', '2h 38min', '6.7', 'https://variance.pl/wp-content/uploads/2021/11/House-of-Gucci-plakat.jpg', 'https://pliki.well.pl/i/01/09/63/010963_1920.jpg', 'https://www.youtube.com/embed/pGi3Bgn7U5U'),
(14, 'Jackass Forever', 'After 11 years, the Jackass crew is back for their final crusade.', '16', '1h 36min', NULL, 'https://bi.im-g.pl/im/38/15/1a/z27349816IER,Jackass-Forever.jpg', 'https://www.themoviedb.org/t/p/w500/ruHDFumJfW7F2vEqTZEQQ9xT7CA.jpg', 'https://www.youtube.com/embed/FNq-QT2Jpng'),
(15, 'Nie czas umierać', 'James Bond has left active service. His peace is short-lived when Felix Leiter, an old friend from the CIA, turns up asking for help, leading Bond onto the trail of a mysterious villain armed with dangerous new technology.', '12', '2h 43min', '7.3', 'http://cdn.benchmark.pl/uploads/article/78554/MODERNICON/68875d7e20a87054d41aa2a7a2cefbdfd57200e4.jpg', 'https://fwcdn.pl/fpo/77/78/757778/7966011.3.jpg', 'https://www.youtube.com/embed/BIhNsAtPbPI'),
(16, 'Dunkierka', 'Allied soldiers from Belgium, the British Commonwealth and Empire, and France are surrounded by the German Army and evacuated during a fierce battle in World War II.', '16', '1h 46min', '7.8', 'https://starekonie.files.wordpress.com/2017/07/dunkirk-movie-wallpapers-2.jpg', 'https://m.media-amazon.com/images/I/71Ws7SxbmKL._AC_SY679_.jpg', 'https://www.youtube.com/embed/F-eMt3SrfFU'),
(17, 'Pewnego razu... w Hollywood', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood\'s Golden Age in 1969 Los Angeles.', '15', '2h 41min', '7.6', 'https://occ-0-1722-1723.1.nflxso.net/dnm/api/v6/E8vDc_W8CLv7-yMQu8KMEC7Rrr8/AAAABfLU9iA1PmbgANhVOiO9-kyA4FfcVaTGSrkXk_gm7IxjMtTgjczRtwoxx-q5yMz39ttUhyNyPYYPS4V2sTWeR0I-qaBu.jpg?r=8a2', 'https://fwcdn.pl/fpo/45/61/804561/7891889.3.jpg', 'https://www.youtube.com/embed/ELeMaP8EPAA'),
(18, 'Bohemian Rhapsody', 'The story of the legendary British rock band Queen and lead singer Freddie Mercury, leading up to their famous performance at Live Aid (1985).', '12', '2h 14min', '8.0', 'https://m.natemat.pl/1737ed6ef89a97bf5b36d0c07efa8450,2340,0,0,0.jpg', 'https://fwcdn.pl/fpo/92/01/619201/7863181.3.jpg', 'https://www.youtube.com/embed/mP0VHJYFOAU'),
(19, 'Legion Samobójców: The Suicide Squad', 'Supervillains Harley Quinn, Bloodsport, Peacemaker and a collection of nutty cons at Belle Reve prison join the super-secret, super-shady Task Force X as they are dropped off at the remote, enemy-infused island of Corto Maltese.', '16', '2h 12min', '7.2', 'https://planetagracza.pl/wp-content/uploads/2022/01/projekt-bez-tytulu-3-6-1216x684.jpg', 'https://fwcdn.pl/fpo/17/53/751753/7961163.3.jpg', 'https://www.youtube.com/embed/eg5ciqQzmK0'),
(20, ' Matrix Zmartwychwstania', 'Return to a world of two realities: one, everyday life; the other, what lies behind it. To find out if his reality is a construct, to truly know himself, Mr. Anderson will have to choose to follow the white rabbit once more.', '12', '2h 28min', '5.7', 'https://www.vogue.pl/uploads/repository/matrix_demontaz/matrix-ada.jpg', 'https://fwcdn.pl/fpo/85/24/838524/7983979.3.jpg', 'https://www.youtube.com/embed/9ix7TUGVYIo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movie_cast`
--

CREATE TABLE `movie_cast` (
  `movie_id` int(11) DEFAULT NULL,
  `person_id` int(11) DEFAULT NULL,
  `character_name` varchar(100) COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `movie_cast`
--

INSERT INTO `movie_cast` (`movie_id`, `person_id`, `character_name`) VALUES
(1, 1, 'Nathan Drake'),
(1, 2, 'Victor Sullivan'),
(1, 3, 'Santiago Moncada'),
(1, 4, 'Chloe Frazer'),
(1, 5, 'Braddock'),
(2, 6, 'Orlando Oxford'),
(2, 7, 'Polly'),
(2, 8, 'Grigori Rasputin'),
(2, 9, 'Conrad Oxford'),
(2, 10, 'Shola'),
(3, 11, 'Bouc'),
(3, 12, 'Linnet Ridgeway'),
(3, 13, 'Euphemia Bouc'),
(3, 14, 'Hercule Poirot'),
(3, 15, 'Windlesham'),
(4, 16, 'Stanton Carlisle'),
(4, 17, 'Dr. Lilith Ritter'),
(4, 18, 'Zeena the Seer'),
(4, 19, 'Clem Hoatley'),
(4, 20, 'Ezra Grindle'),
(5, 1, 'Peter Parker'),
(5, 21, 'MJ'),
(5, 22, 'Doctor Strange'),
(5, 23, 'Ned Leeds'),
(5, 24, 'Happy Hogan'),
(6, 25, 'Melody'),
(6, 26, 'Lila'),
(6, 27, 'Leatherface'),
(6, 28, 'Dante'),
(6, 29, 'Richter'),
(7, 30, 'Mirabel(voice)'),
(7, 31, 'Abuela Alma(voice)'),
(7, 32, 'Bruno(voice)'),
(7, 33, 'Félix(voice)'),
(7, 34, 'Luisa(voice)'),
(8, 35, 'Sidney Prescott'),
(8, 36, 'Gale Weathers'),
(8, 37, 'Dewey Riley'),
(8, 38, 'Sam Carpenter'),
(8, 39, 'Richie Kirsch'),
(9, 40, 'Callie'),
(9, 41, 'Grooberson'),
(9, 42, 'Trevor'),
(9, 43, 'Phoebe'),
(9, 44, 'Lucky'),
(10, 45, 'Paul Atreides'),
(10, 21, 'Chani'),
(10, 46, 'Lady Jessica Atreides'),
(10, 47, 'Duke Leto Atreides'),
(10, 48, 'Duncan Idaho'),
(11, 49, 'Bruce Wayne'),
(11, 50, 'Selina Kyle'),
(11, 51, 'Lt. James Gordon'),
(11, 52, 'Oz'),
(11, 53, 'The Riddler'),
(12, 54, 'Guy'),
(12, 55, 'Millie'),
(12, 56, 'Antwan'),
(12, 57, 'Buddy'),
(12, 58, 'Keys'),
(13, 59, 'Patrizia Reggiani'),
(13, 60, 'Maurizio Gucci'),
(13, 61, 'Aldo Gucci'),
(13, 62, 'Rodolfo Gucci'),
(13, 63, 'Paolo Gucci'),
(14, 64, 'Johnny Knoxville'),
(14, 65, 'Steve-O'),
(14, 66, 'Chris Pontius'),
(14, 67, 'Dave England'),
(14, 68, 'Jason \'Wee Man\' Acuña'),
(15, 69, 'James Bond'),
(15, 70, 'Paloma'),
(15, 71, 'Lyutsifer Safin'),
(15, 72, 'Madeleine'),
(15, 73, 'Nomi'),
(16, 74, 'Tommy'),
(16, 75, 'George'),
(16, 76, 'Mr. Dawson'),
(16, 77, 'Farrier'),
(16, 78, 'French Soldier'),
(17, 79, 'Rick Dalton'),
(17, 80, 'Cliff Booth'),
(17, 81, 'Sharon Tate'),
(17, 82, 'Jay Sebring'),
(17, 83, 'James Stacy'),
(18, 71, 'Freddie Mercury'),
(18, 84, 'Mary Austin'),
(18, 85, 'Brian May'),
(18, 86, 'Roger Taylor'),
(18, 87, 'John Reid'),
(19, 81, 'Harley Quinn'),
(19, 88, 'Bloodsport'),
(19, 89, 'Peacemaker'),
(19, 90, 'Colonel Rick Flag'),
(19, 91, 'Amanda Waller'),
(20, 92, 'Neo'),
(20, 93, 'Trinity'),
(20, 94, 'Morpheus'),
(20, 95, 'Smith'),
(20, 96, 'The Analyst');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `movie_genres`
--

CREATE TABLE `movie_genres` (
  `movie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `movie_genres`
--

INSERT INTO `movie_genres` (`movie_id`, `genre_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 4),
(4, 5),
(4, 3),
(5, 1),
(5, 2),
(5, 7),
(6, 4),
(6, 3),
(6, 8),
(7, 9),
(7, 10),
(7, 11),
(8, 8),
(8, 6),
(8, 3),
(9, 2),
(9, 10),
(9, 7),
(10, 1),
(10, 2),
(10, 5),
(11, 1),
(11, 4),
(11, 5),
(12, 1),
(12, 2),
(12, 10),
(13, 4),
(13, 5),
(14, 12),
(14, 1),
(14, 10),
(15, 1),
(15, 2),
(15, 3),
(16, 1),
(16, 5),
(16, 13),
(17, 10),
(17, 5),
(18, 14),
(18, 5),
(18, 15),
(19, 1),
(19, 2),
(19, 10),
(20, 1),
(20, 16);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `person`
--

CREATE TABLE `person` (
  `person_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `foto` varchar(1000) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Zrzut danych tabeli `person`
--

INSERT INTO `person` (`person_id`, `name`, `foto`) VALUES
(1, 'Tom Holland', 'https://fwcdn.pl/ppo/92/11/1619211/450788.3.jpg'),
(2, 'Mark Wahlberg', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Mark_Wahlberg_2017.jpg'),
(3, 'Antonio Banderas', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ee/Antonio_Banderas_3_%2849491445488%29.jpg/640px-Antonio_Banderas_3_%2849491445488%29.jpg'),
(4, 'Sophia Ali', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Sophia_Ali_%28cropped%29.jpg/1200px-Sophia_Ali_%28cropped%29.jpg'),
(5, 'Tati Gabrielle', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bb/Tati-gabrielle-attends-the-cfda-fashion-awards-in-new-york-6-681x1024.jpg/640px-Tati-gabrielle-attends-the-cfda-fashion-awards-in-new-york-6-681x1024.jpg'),
(6, 'Ralph Fiennes', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d4/Ralph_Fiennes.jpg/424px-Ralph_Fiennes.jpg'),
(7, 'Gemma Arterton', 'https://upload.wikimedia.org/wikipedia/commons/9/97/Gemma_Arterton_at_The_Prince%27s_Trust_Awards_%28cropped%29.jpg'),
(8, ' Rhys Ifans', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Rhys_Ifans_2011_cropped_%28cropped%29.jpg/640px-Rhys_Ifans_2011_cropped_%28cropped%29.jpg'),
(9, 'Harris Dickinson', 'https://static.wikia.nocookie.net/disney/images/1/19/Harris_Dickinson.jpg/revision/latest?cb=20211228050255&path-prefix=es'),
(10, 'Djimon Hounsou', 'https://upload.wikimedia.org/wikipedia/commons/3/31/Djimon_Hounsou_by_Gage_Skidmore_2.jpg'),
(11, ' Tom Bateman', 'https://i2.wp.com/www.wikifamouspeople.com/wp-content/uploads/2022/01/Tom-Bateman.jpg?fit=937%2C701&ssl=1'),
(12, 'Gal Gadot', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Gal_Gadot_at_the_2018_Comic-Con_International_9_%28cropped%29.jpg/1200px-Gal_Gadot_at_the_2018_Comic-Con_International_9_%28cropped%29.jpg'),
(13, 'Annette Bening', 'https://fwcdn.pl/ppo/03/87/387/450117.2.jpg'),
(14, 'Kenneth Branagh', 'https://upload.wikimedia.org/wikipedia/commons/c/c7/KennethBranaghApr2011.jpg'),
(15, 'Russell Brand', 'https://fwcdn.pl/ppo/34/71/743471/453888.2.jpg'),
(16, ' Bradley Cooper', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bd/Glasto17-44_%2835547413626%29_Cropped.jpg/640px-Glasto17-44_%2835547413626%29_Cropped.jpg'),
(17, 'Cate Blanchett', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Cate_Blanchett-0547_%28cropped%29.jpg/1200px-Cate_Blanchett-0547_%28cropped%29.jpg'),
(18, ' Toni Collette', 'https://fwcdn.pl/ppo/31/77/3177/450137.2.jpg'),
(19, 'Willem Dafoe', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Willem_Dafoe_2014_%28cropped%29.jpg/800px-Willem_Dafoe_2014_%28cropped%29.jpg'),
(20, ' Richard Jenkins', 'https://upload.wikimedia.org/wikipedia/commons/3/30/RichardJenkins2AAFeb09.jpg'),
(21, 'Zendaya', 'https://static.wikia.nocookie.net/disney/images/b/ba/640-Zendaya_2019_by_Glenn_Francis.jpg/revision/latest?cb=20200708104806&path-prefix=pl'),
(22, 'Benedict Cumberbatch', 'https://static.wikia.nocookie.net/lotr/images/0/06/Benedict_cumberbatch.jpg/revision/latest/top-crop/width/360/height/450?cb=20150114200134&path-prefix=pl'),
(23, 'Jacob Batalon', 'https://upload.wikimedia.org/wikipedia/commons/9/99/Jacob_Batalon_by_Gage_Skidmore.jpg'),
(24, 'Jon Favreau', 'https://upload.wikimedia.org/wikipedia/commons/0/08/Jon_Favreau_%2825875971690%29.jpg'),
(25, 'Sarah Yarkin', 'https://m.media-amazon.com/images/M/MV5BZDIxYjJmMTAtYjAzMy00NmJmLWE5NDgtMTM4OTYyNDE4MGVmXkEyXkFqcGdeQXVyNDc2MjI0ODM@._V1_.jpg'),
(26, 'Elsie Fisher', 'https://m.media-amazon.com/images/M/MV5BMTUzODI3MDkwN15BMl5BanBnXkFtZTgwMTMxNTM5NTM@._V1_.jpg'),
(27, 'Mark Burnham', 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fmubi.com%2Fcast%2Fmark-burnham&psig=AOvVaw1KxgKarZN54fFZbcu3WLCi&ust=1646133635407000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCLiOpOmjovYCFQAAAAAdAAAAABAD'),
(28, 'Jacob Latimore', 'https://i.scdn.co/image/ab6761610000e5eb85f5f80a3ba7ca9ba1bcab3f'),
(29, 'Moe Dunford', 'https://www.themoviedb.org/t/p/original/7H42LjYTJG1f4GHy0bzuXhp0C2M.jpg'),
(30, ' Stephanie Beatriz', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/Stephanie_Beatriz_2018.jpg/1200px-Stephanie_Beatriz_2018.jpg'),
(31, ' María Cecilia Botero', 'https://superstarsbio.com/wp-content/uploads/2022/02/maria-cecilia-botero.jpg'),
(32, 'John Leguizamo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/John_Leguizamo_2_by_David_Shankbone.jpg/1200px-John_Leguizamo_2_by_David_Shankbone.jpg'),
(33, 'Mauro Castillo', 'https://superstarsbio.com/wp-content/uploads/2022/02/Mauro-Castillo.jpg'),
(34, 'Jessica Darrow', 'https://54below-media.nyc3.digitaloceanspaces.com/app/uploads/2022/01/Jessica-Darrow.png'),
(35, 'Neve Campbell', 'https://fwcdn.pl/ppo/00/17/17/450781.2.jpg'),
(36, 'Courteney Cox', 'https://fwcdn.pl/ppo/00/23/23/450031.3.jpg'),
(37, 'David Arquette', 'https://m.media-amazon.com/images/M/MV5BMjEzODYyNjg3NV5BMl5BanBnXkFtZTcwMzYwOTgyNg@@._V1_.jpg'),
(38, 'Melissa Barrera', 'https://fwcdn.pl/ppo/65/66/916566/459560.2.jpg'),
(39, 'Jack Quaid', 'https://fwcdn.pl/ppo/56/47/1605647/451808.2.jpg'),
(40, 'Carrie Coon', 'https://fwcdn.pl/ppo/34/72/1813472/451459.3.jpg'),
(41, 'Paul Rudd', 'https://static.wikia.nocookie.net/m__/images/d/d5/Paul_Rudd.jpg/revision/latest?cb=20180506190402&path-prefix=marvel%2Fpl'),
(42, ' Finn Wolfhard', 'https://fwcdn.pl/ppo/90/83/2249083/450884.2.jpg'),
(43, 'Mckenna Grace', 'https://upload.wikimedia.org/wikipedia/commons/0/03/Mckenna_Grace_2017_%28cropped%29.jpg'),
(44, 'Celeste O\'Connor', 'https://fwcdn.pl/ppo/12/27/2591227/457368.2.jpg'),
(45, 'Timothée Chalamet', 'https://fwcdn.pl/ppo/37/72/1543772/451634.2.jpg'),
(46, 'Rebecca Ferguson', 'https://fwcdn.pl/ppo/15/21/151521/450799.2.jpg'),
(47, 'Oscar Isaac', 'https://fwcdn.pl/ppo/16/13/511613/450637.2.jpg'),
(48, 'Jason Momoa', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/58/Jason_Momoa_by_Gage_Skidmore_2.jpg/800px-Jason_Momoa_by_Gage_Skidmore_2.jpg'),
(49, 'Robert Pattinson', 'https://fwcdn.pl/ppo/44/50/164450/450997.2.jpg'),
(50, 'Zoë Kravitz', 'https://fwcdn.pl/ppo/18/82/621882/450412.2.jpg'),
(51, 'Jeffrey Wright', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Jeffrey_Wright_by_Gage_Skidmore_3.jpg/800px-Jeffrey_Wright_by_Gage_Skidmore_3.jpg'),
(52, 'Colin Farrell', 'https://static.wikia.nocookie.net/harrypotter/images/c/ce/Colin_Farrell.jpg/revision/latest?cb=20180909114649&path-prefix=pl'),
(53, 'Paul Dano', 'https://upload.wikimedia.org/wikipedia/commons/8/87/Paul_Dano_Cannes_2015.jpg'),
(54, 'Ryan Reynolds', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Deadpool_2_Japan_Premiere_Red_Carpet_Ryan_Reynolds_%28cropped%29.jpg/160px-Deadpool_2_Japan_Premiere_Red_Carpet_Ryan_Reynolds_%28cropped%29.jpg'),
(55, ' Jodie Comer', 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/Jodie_Comer_during_an_interview%2C_September_2021.png/800px-Jodie_Comer_during_an_interview%2C_September_2021.png'),
(56, 'Taika Waititi', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/13/Taika_Waititi_by_Gage_Skidmore_2.jpg/640px-Taika_Waititi_by_Gage_Skidmore_2.jpg'),
(57, 'Lil Rel Howery', 'https://m.media-amazon.com/images/M/MV5BNjM1NTI1MjIwMl5BMl5BanBnXkFtZTgwNzk0NDI0NjE@._V1_.jpg'),
(58, 'Joe Keery', 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/22/Joe_Keery_by_Gage_Skidmore.jpg/173px-Joe_Keery_by_Gage_Skidmore.jpg'),
(59, 'Lady Gaga', 'https://fwcdn.pl/ppo/71/13/1147113/452004.2.jpg'),
(60, 'Adam Driver', 'https://fwcdn.pl/ppo/66/63/1306663/450584.2.jpg'),
(61, 'Al Pacino', 'https://fwcdn.pl/ppo/00/78/78/449651.2.jpg'),
(62, 'Jeremy Irons', 'https://fwcdn.pl/ppo/00/52/52/450244.2.jpg'),
(63, 'Jared Leto', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Jared_Leto%2C_San_Diego_Comic_Con_2016_%282%29.jpg/640px-Jared_Leto%2C_San_Diego_Comic_Con_2016_%282%29.jpg'),
(64, 'Johnny Knoxville', 'https://fwcdn.pl/ppo/64/87/56487/452643.2.jpg'),
(65, 'Steve-O', 'https://fwcdn.pl/ppo/54/88/65488/463840.2.jpg'),
(66, 'Chris Pontius', 'https://fwcdn.pl/ppo/54/89/65489/459880.2.jpg'),
(67, 'Dave England', 'https://m.media-amazon.com/images/M/MV5BOTIwNDQ2MDYyOV5BMl5BanBnXkFtZTcwNzYyMDkwOA@@._V1_.jpg'),
(68, 'Jason \'Wee Man\' Acuña', 'https://upload.wikimedia.org/wikipedia/commons/2/24/Jason_Acu%C3%B1a_-_Wee-Man_-_Waterfront_Marriott%2C_Portland%2C_Oregon_-_August_15%2C_2009_-_Full_Body_%28cropped%29.jpg'),
(69, 'Daniel Craig', 'https://fwcdn.pl/ppo/35/52/3552/449879.3.jpg'),
(70, 'Ana de Armas', 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Ana_de_Armas_by_Gage_Skidmore_%28cropped%29.jpg'),
(71, 'Rami Malek', 'https://fwcdn.pl/ppo/34/09/563409/449652.2.jpg'),
(72, 'Léa Seydoux', 'https://upload.wikimedia.org/wikipedia/commons/6/69/L%C3%A9a_Seydoux_Cannes_2016_%28cropped%29.jpg'),
(73, 'Lashana Lynch', 'https://fwcdn.pl/ppo/81/98/1698198/454109.2.jpg'),
(74, 'Fionn Whitehead', 'https://s3.eu-west-1.amazonaws.com/clwyd/Headshots/Fionn_Whitehead.jpg'),
(75, 'Barry Keoghan', 'https://fwcdn.pl/ppo/11/95/1701195/452777.2.jpg'),
(76, 'Mark Rylance', 'https://fwcdn.pl/ppo/32/64/3264/452007.3.jpg'),
(77, 'Tom Hardy', 'https://fwcdn.pl/ppo/71/04/57104/449672.2.jpg'),
(78, 'Damien Bonnard', 'https://upload.wikimedia.org/wikipedia/commons/f/f0/Damien_Bonnard_Cannes_2019.jpg'),
(79, 'Leonardo DiCaprio', 'https://fwcdn.pl/ppo/00/30/30/449647.2.jpg'),
(80, 'Brad Pitt', 'https://fwcdn.pl/ppo/02/05/205/449687.2.jpg'),
(81, 'Margot Robbie', 'https://fwcdn.pl/ppo/66/54/956654/449936.2.jpg'),
(82, 'Emile Hirsch', 'https://m.media-amazon.com/images/M/MV5BZjM4OTg0NTMtN2NmNS00ZGVjLWFmNWEtZDZiY2Y1ZDFjYWYzXkEyXkFqcGdeQXVyNjk1MjYyNTA@._V1_UY1200_CR149,0,630,1200_AL_.jpg'),
(83, 'Timothy Olyphant', 'https://upload.wikimedia.org/wikipedia/commons/2/2b/Timothy_Olyphant_%288166716475%29_Cropped.jpg'),
(84, 'Lucy Boynton', 'https://fwcdn.pl/ppo/48/79/654879/452003.1.jpg'),
(85, 'Gwilym Lee', 'https://fwcdn.pl/ppo/28/13/1012813/452060.2.jpg'),
(86, 'Ben Hardy', 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Ben_Hardy_by_Gage_Skidmore.jpg/800px-Ben_Hardy_by_Gage_Skidmore.jpg'),
(87, ' Aidan Gillen', 'https://fwcdn.pl/ppo/29/05/42905/449898.2.jpg'),
(88, 'Idris Elba', 'https://fwcdn.pl/ppo/13/10/111310/450557.3.jpg'),
(89, 'John Cena', 'https://upload.wikimedia.org/wikipedia/commons/6/60/John_Cena_July_2018.jpg'),
(90, 'Joel Kinnaman', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Joel_Kinnaman_%2828494159712%29_%28cropped%29.jpg/800px-Joel_Kinnaman_%2828494159712%29_%28cropped%29.jpg'),
(91, ' Viola Davis', 'https://fwcdn.pl/ppo/72/44/67244/450084.2.jpg'),
(92, 'Keanu Reeves', 'https://fwcdn.pl/ppo/00/87/87/450015.2.jpg'),
(93, ' Carrie-Anne Moss', 'https://fwcdn.pl/ppo/03/15/315/450189.2.jpg'),
(94, ' Yahya Abdul-Mateen II', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/Yahya_Abdul-Mateen_II_by_Gage_Skidmore.jpg/640px-Yahya_Abdul-Mateen_II_by_Gage_Skidmore.jpg'),
(95, 'Jonathan Groff', 'https://fwcdn.pl/ppo/80/41/828041/451234.2.jpg'),
(96, 'Neil Patrick Harris', 'https://fwcdn.pl/ppo/46/18/4618/449902.2.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `u_name` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `u_email` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `u_pass` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genre_id`);

--
-- Indeksy dla tabeli `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indeksy dla tabeli `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `person_id` (`person_id`);

--
-- Indeksy dla tabeli `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD KEY `genre_id` (`genre_id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indeksy dla tabeli `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`person_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `genre`
--
ALTER TABLE `genre`
  MODIFY `genre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT dla tabeli `movies`
--
ALTER TABLE `movies`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `movie_cast`
--
ALTER TABLE `movie_cast`
  ADD CONSTRAINT `movie_cast_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`),
  ADD CONSTRAINT `movie_cast_ibfk_2` FOREIGN KEY (`person_id`) REFERENCES `person` (`person_id`);

--
-- Ograniczenia dla tabeli `movie_genres`
--
ALTER TABLE `movie_genres`
  ADD CONSTRAINT `movie_genres_ibfk_1` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`genre_id`),
  ADD CONSTRAINT `movie_genres_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`movie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
