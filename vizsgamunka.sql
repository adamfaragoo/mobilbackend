-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 09. 10:52
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsgamunka`
--
CREATE DATABASE IF NOT EXISTS `vizsgamunka` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `vizsgamunka`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ajanlas`
--

CREATE TABLE `ajanlas` (
  `ajanlas_id` int(11) NOT NULL,
  `ajanlas_szoveg` varchar(100) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ajanlas`
--

INSERT INTO `ajanlas` (`ajanlas_id`, `ajanlas_szoveg`) VALUES
(4, '5'),
(5, 'Keresztapa 2'),
(6, 'T'),
(7, 'Z'),
(8, 'Baratok kozt'),
(9, 'Heló ');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ertekeles`
--

CREATE TABLE `ertekeles` (
  `ertekeles_id` int(11) NOT NULL,
  `ertekeles_ertek` int(11) NOT NULL,
  `ertekeles_sorozat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ertekeles`
--

INSERT INTO `ertekeles` (`ertekeles_id`, `ertekeles_ertek`, `ertekeles_sorozat_id`) VALUES
(57, 4, 3),
(60, 3, 1),
(61, 1, 1),
(62, 5, 1),
(63, 4, 1),
(64, 6, 1),
(65, 7, 1),
(66, 8, 1),
(67, 10, 1),
(68, 9, 4),
(69, 8, 10),
(70, 6, 11),
(71, 8, 9),
(72, 3, 27),
(73, 2, 27),
(74, 3, 27),
(75, 4, 27),
(76, 4, 27),
(77, 4, 27),
(78, 4, 27),
(79, 3, 27),
(80, 4, 27),
(81, 4, 27),
(82, 4, 27),
(83, 10, 1),
(84, 10, 1),
(85, 10, 1),
(86, 10, 1),
(87, 10, 1),
(88, 10, 1),
(89, 10, 1),
(90, 10, 1),
(91, 10, 1),
(92, 10, 1),
(93, 10, 1),
(94, 10, 1),
(95, 10, 1),
(96, 10, 1),
(97, 10, 1),
(98, 10, 1),
(99, 10, 1),
(100, 10, 1),
(101, 10, 1),
(102, 10, 1),
(103, 10, 1),
(104, 10, 1),
(105, 10, 1),
(106, 10, 1),
(107, 10, 1),
(108, 10, 1),
(109, 10, 1),
(110, 10, 1),
(111, 10, 1),
(112, 10, 1),
(113, 10, 1),
(114, 10, 4),
(115, 10, 4),
(116, 10, 4),
(117, 10, 4),
(118, 10, 4),
(119, 10, 4),
(120, 10, 4),
(121, 10, 4),
(122, 10, 4),
(123, 10, 4),
(124, 7, 8),
(125, 8, 8),
(126, 6, 8),
(127, 7, 8),
(128, 9, 8),
(129, 10, 10),
(130, 5, 1),
(131, 9, 15);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `filmek`
--

CREATE TABLE `filmek` (
  `film_id` int(11) NOT NULL,
  `film_cim` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `film_ev` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `film_hossz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `film_mufaj` int(50) NOT NULL,
  `film_kep` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `film_leiras` varchar(1500) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `filmek`
--

INSERT INTO `filmek` (`film_id`, `film_cim`, `film_ev`, `film_hossz`, `film_mufaj`, `film_kep`, `film_leiras`) VALUES
(1, ' A keresztapa ', '1972', '175 ', 1, 'keresztapa.jpg', 'Az 1945 és 1955 között játszódó történet a Vito Corleone (Brando) vezette Corleone család krónikája, és a legfiatalabb fiú, Michael Corleone (Pacino) átalakulására összpontosít, aki a család vonakodó kívülállójából kegyetlen maffiafőnökké válik.'),
(2, 'Harcosok klubja', '1999', '139', 2, 'harcosokklubja.jpg', 'A névtelen elbeszélő (Edward Norton) egy autógyár álmatlanságtól szenvedő, örökké úton lévő alkalmazottja. Orvosa – aki nem hajlandó neki gyógyszert felírni – azt tanácsolja, keressen fel egy betegeket támogató csoportot, hogy rájöjjön, mások sokkal jobban szenvednek. Az elbeszélő részt vesz a hererákosokat segítő csoport gyűlésén, ahol elhiteti, hogy ő is a betegség áldozata. Itt olyan érzelmi megkönnyebbülést él át, amitől elmúlik álmatlansága is. Függőség alakul ki benne a segítőcsoportok iránt, ahol áldozatnak tettetheti magát, de egy másik imposztor, Marla Singer (Helena Bonham Carter) jelenléte megzavarja az idillt, ezért megpróbál egyezségre jutni a nővel, hogy felosszák egymás között a csoportokat.'),
(3, 'Harry Potter és a bölcsek köve', '2001', '146', 3, 'harrypotter1.png', 'A tízéves Harry Potter árva, aki a kitaláltban él London Surrey kis Whinging külvárosa Dursleyékkel: gondozatlan Petunia nénivel, undorító Vernon bácsival és elkényeztetett unokatestvérével, Dudley-val. Dursleyék alig tolerálják Harryt, és Dudley bántalmazza. Egy nap Harry meglepődik, amikor a lépcső alatti szekrényben (ahol alszik) levelet kap neki. Mielőtt azonban kinyitná a levelet, Vernon bácsi átveszi. A későbbiekben egyre többször érkeznek levelek Harry számára, de Vernon bácsi mindet széttépi, végül, hogy megpróbálják elmenekülni a missziók elől, Dursleyék egy kis sziget nyomorúságos kunyhójához mennek. Harry 11. születésnapján megérkezik egy Hagrid nevű óriás, aki elárulja, hogy Harry varázsló, és hogy befogadták a Roxfort Boszorkányság és Varázslat Iskolájába. Megvilágítja Harry múltját is, tájékoztatva a fiút, hogy szüleit, egy varázslót és egy boszorkányt Voldemort gonosz varázsló meggyilkolt, és hogy Harry a végzetes konfrontáció során megszerezte a homlokán található villám hegét.'),
(4, 'V. Henrik', '2019', '140', 4, 'vhenrik.jpg', 'Az önfejű Hal hercegnek fel kell hagynia a tivornyázással, és az Angliáért vívott csatában harcos királyként meg kell fékeznie a vár falain belüli és kívüli ellenségeket.'),
(5, 'Pókember: Nincs hazaút', '2021', '150', 5, 'pokember1.jpg', 'A Pókember: Idegenben eseményeit követően Peter Parker élete és hírneve a feje tetejére áll, miután Mysterio leleplezte személyazonosságát. Dr. Stephen Strange segítségét kéri, hogy megpróbáljon mindent helyrehozni, de a dolgok hamarosan sokkal veszélyesebbé válnak, amikor számtalan gonosztevő átkerül az ő univerzumukba, akik mind a saját Pókemberük elleni harcukban lelték vesztüket.'),
(6, 'A Gucci-ház', '2021', '158', 1, 'guccihaz.jpg', 'Maurizio Guccival, az ikonikus divattervezővel bérgyilkosok végeztek, a nyomozati szálak pedig feleségéhez, Patrizia Reggianihoz vezettek. Az asszonyt 26 év börtönbüntetésre ítélték.Ridley Scott a gyilkosságot és annak körülményeit dolgozta fel Sara Gay Forden című kötetének felhasználásával. A film főbb szerepeiben Al Pacino, Salma Hayek, Jared Leto, Jeremy Irons, Lady Gaga, Adam Driver, Jack Huston, Camille Cottin és Reeve Carney látható. A House of Gucci várhatóan 2021 novemberében érkezik a hazai mozikba.'),
(7, 'John Wick', '2014', '101', 1, 'johnwick.jpg', 'John Wick (Keanu Reeves) nyugodt életre vágyik. Magányosan akarja tölteni a napjait: kutyája, sportkocsija, üres, hideg lakása éppen elég neki - nincs szüksége többre. De egy nyugdíjas bérgyilkos nem pihenhet. És amikor bántják, ő sem marad tétlen. Előveszi rég elrejtett fegyvereit, és elindul véres bosszúhadjáratára. Egyetlen ember harcol gengszterek és bérgyilkosok egész hadserege ellen, New York pedig valódi csatatérré válik. És az őrült, véres ütközetben mégsem egyértelmű, ki fog győzni: a gyilkosok légiója vagy a magányos harcos. Hiszen ő John Wick.'),
(8, 'Nem vénnek való vidék', '2007', '122', 1, 'nemvennekvalovidek.jpg', 'Minden úgy kezdődik, hogy Llewelyn Moss talál egy teherautót, amelyet egy csapat hulla őriz. A kocsiban egy jó adag heroin és két millió dollár pihen. Amikor Moss elveszi a pénzt, olyan katasztrofális erőszakhullámot indít el, melyet még a korosodó, kiábrándult Bell sheriff személyében képviselt törvény sem tud megfékezni. Ahogy Moss megpróbál egérutat nyerni üldözői, de legfőképp egy rejtélyes figura elől, aki pénzfeldobással dönt emberi életekről, a film úgy növi ki a krimi kereteit, és kezd felölelni olyan témákat, melyek egyfelől ősiek, mint maga a Biblia, másfelől véresen frissek, mint a ma reggeli hírek.'),
(9, 'A tégla', '2006', '151', 1, 'ategla.jpg', 'Az ír maffia legtehetségesebb fiatal tagja felvételizik a Massachusettsi Rendőrakadémiára. Azt a feladatot kapta, hogy legyen tökéletes rendőr, szerezzen magának egyre magasabb rangot a testületben, és jelentsen mindent igazi megbízóinak. Ám egy másik fiatal rendőrtiszt hasonló feladatot kap: neki Boston nagyhatalmú bűnszövetkezetébe kell jelentkeznie, hogy ott lehetőleg a keresztapa közelébe kerüljön. A két beépített ember jól végzi a munkáját. Mindketten sejteni kezdik, hogy az ellenfélnek is van egy kéme a közelükben: amelyikük hamarabb leleplezi a másik kémet, az talán életben maradhat végül.'),
(10, 'Megsebezve', '2020', '129', 2, 'megsebezve.jpg', 'A kegyvesztett MMA-harcos megragadja a ketrecben az utolsó esélyt a megváltásra, amikor fia, akiről lemondott, visszatér az életébe. Főszereplő és rendező: Halle Berry.'),
(11, 'Happy, a flúgos golfos', '1996', '92', 7, 'happy.jpg', 'Happy Gilmore (Adam Sandler) világéletében profi hokis szeretett volna lenni, ám nem tud egyebet, mint nagyot ütni, rondán beszélni és kiválóan bunyózni. Miután sokadszorra rúgják ki a válogatásról, ráadásul a nagyitól is elvették a házat, Happy, hogy összegyűjtse a pénzt a nagyinak, golfosnak áll. Hamarosan hatalmas sikert arat a közönség soraiban négyszáz méterre elütött labdáival és képernyőt nem tűrő stílusával. Sikerével azonban magára vonja Shooter McGavin (Christopher McDonald) haragját, aki a golfbajnokság aranyzakójára pályázik.'),
(12, 'Másnaposok', '2009', '100', 7, 'masnaposok.jpg', 'Házasodni többször is lehet, de legénybúcsú csak egyszer van az ember életében. Phil (Bradley Cooper) a haverjai segítségével meg is szervezik a fergeteges bulit, ami túlságosan is jól sikerül. Másnap reggel megdöbbenve ébrednek, a leendő férj nyomtalanul eltűnt, a szálloda szobája pedig teljesen le van rombolva. Az előző napi dorbézolásról mindössze néhány nyom maradt: egy tigris a fürdőszobában, egy csecsemő a cipős fiókban és Mike Tyson a nappaliban.'),
(13, 'Haláli hullák hajnala', '2004', '99', 7, 'halalihullak.jpg', 'Shaun a törzshelyén, a Winchester Pubban tölti zsákutcába jutott életét legjobb cimborája, Ed társaságában, emellett állandóan veszekszik az anyjával és elhanyagolja a barátnőjét. Amikor Liz kiteszi a szűrét, Shaun rászánja magát, hogy ráncba szedje életét. Újra el kell nyernie barátnője szerelmét, rendbe kell hoznia a kapcsolatát anyjával, és szembe kell néznie a felelősségteljes felnőttkor nehézségeivel. Balszerencséjére azonban zombijárvány tör ki. Shaun, Ed, a mama és a mostohaapa, valamint Liz és barátai a Shaun által ismert legbiztonságosabb helyen, vagyis a Winchesterben barikádozzák el magukat.'),
(14, '1917', '2019', '147', 4, '1917.jpg', 'Javában zajlik az I. világháború, amikor két fiatal brit katonát egy lehetetlennek tűnő küldetéssel bíznak meg: az ellenséges vonalon kell áthatolniuk, hogy egy üzenetet kézbesítsenek bajtársaiknak. Egy napjuk van, hogy célhoz érjenek, különben 1600 társuk, köztük egyikük testvére is odavész. A két bátor harcos hihetetlen elszántsággal indul neki a német frontnak…\r\nAz Oscar-díjas Sam Mendes (Skyfall, Amerikai szépség) gyönyörűen fényképezett, elképesztően feszült atmoszférájú filmjének egyik különlegessége, hogy látszólag vágás nélkül kerül a nézők elé a két katona élet-halál harca, olyan érzést keltve, mintha valós időben követnék nyomon az izgalmas akciókat. Mendes az Oscar-díjas Roger Deakinst (Szárnyas fejvadász 2049, Sicario – A bérgyilkos) kérte fel az operatőri munkára, akinek erőteljes képeivel az 1917 egy felejthetetlen mozélménnyé válik minden néző számára. A főszerepekben George MacKay.'),
(15, 'Becstelen brigantyk', '2009', '153', 4, 'becstelen.jpg', 'A megszállt Franciaországban Shosanna szemtanúja lesz, ahogy a német Hans Landa ezredes lemészároltatja a családját. A lánynak sikerül megszöknie. Új személyiséget felvéve Párizsban telepszik le, ahol egy mozit üzemeltet. Közben az amerikai Aldo Raine hadnagy zsidó katonákból verbuvál csapatot, amely a brutális akciói miatt kétes hírnévre tesz szert a németek között. A német vezetés Shosanna moziját szemeli ki az új propagandafilm premierjére, melyen a Führer és a többi vezető is megjelenik. Miközben Shosanna merényletre készül, Raine csapata is akcióba lendül, hogy a helyzetet kihasználja.'),
(16, 'Ryan közlegény megmentése', '1998', '169', 4, 'ryankozlegeny.jpg', '1944. június 6 - a normandiai partraszállás napja. Az Omaha Beach kódnevet kapott tengerparton a csónakokból védhető fedezékbe igyekvő szövetséges katonák pergőtűzbe kerülnek, a vérveszteség óriási. Mindenütt halottak, sebesültek, cafatokra szakadt emberi testrészek, haldoklók halálhörgései. A pokol első bugyrán éppen csak túljutott Miller százados (Tom Hanks) megmaradt embereivel újabb szinte lehetetlen próbatétel előtt áll. Egy kis csapat élén be kell hatolnia az ellenséges hátországba, hogy felkutasson egy amerikai katonát, James Ryan közlegényt. A főparancsnokság utasítására ugyanis azonnal le kell szerelni, mivel három bátyja a világháború különböző frontjain szinte egyszerre vesztette életét, s a hadsereg ezzel adózik a család tragédiájának. De a hosszú és veszélyes úton mindenkiben felmerül a kérdés: vajon miért ér ennek az egy embernek az élete többet, mint az érte küldött kilenc emberé? A sikerrendező Steven Spielberg 1999-ben öt Oscar-díjat nyert el a filmjével, köztük a legjobb rendezésért járót is.'),
(17, 'Szellemirtók: Az örökség', '2021', '124', 3, 'szellemirtok.jpg', 'Eltűnhetnek a szellemek? Azóta, hogy négy elszánt lúzer felvette a harcot a New Yorkot elözönlő túlvilági lényekkel, és visszakényszerítette őket oda, ahonnan előbújtak, senki nem találkozott kis zöld vagy nagy lila, a falon is áthatoló, gyilkos humorú szörnyekkel.\r\nDe a nyugalom csak átmeneti. És a világnak megint szüksége van rá, hogy néhány rettenthetetlen harcos a kezébe vegye a plazmafegyvert. Csak sajnos, nincs jelentkező…Kivéve az egyik egykori szellemirtó feltűnően kiskorú unokáját, aki megtalálja a nagyapja pincéjében az eredeti felszerelés poros-pókhálós maradékát. És amikor már minden sarokban szellemek kísértenek, beindítja a régi járgányt, és elindul, hogy rendre utasítsa a hívatlanul érkezett túlvilági lényeket.\r\nA legendás és örökzöld Szellemirtók végre méltó módon folytatódik: az eredeti nagy csapat közreműködésével, de a szellemirtók új generációjával folytatódik a halhatatlan vígjáték.'),
(18, 'A Gyűrűk Ura: A király visszatér ', '2003', '210', 3, 'gyurukura1.jpg', 'Gandalf (Ian McKellen) Pipinnel (Billy Boyd) Gondorba vágtat, hogy Denethort (John Noble) felkészítse Szauron túlerejével szemben. Théoden király (Bernard Hill) összevonja seregeit Gondor segélyhívására. Aragorn (Viggo Mortensen) végül vállalja sorsát, és hű társaival harcba szólítja a hegyek közt élő holtakat. Középfölde sorsa azonban egészen máshol fog eldőlni. Frodó (Elijah Wood) és Samu (Sean Astin) a Hatalom gyűrűjével Mordor sötét útvesztőit járja. De minél közelebb kerülnek a Végzet hegyéhez, Frodót annál jobban húzza a Gyűrű szörnyű súlya. A világ sorsa egy apró hobbit kezében van, aki kétséges, hogy ellen tud állni a legnagyobbakat is legyőző kísértésnek.'),
(19, 'Apokalipszis most', '1979', '182', 4, 'apokalipszismost.jpg', 'Williard kapitány azt a megbízatást kapja a saigoni CIA-tól, hogy likvidáljon egy nyilvánvalóan megőrült ezredest. Az ezredes ugyanis a kambodzsai dzsungelben alakította ki saját birodalmát, amelyben magát istenként imádtatja és kíméletlen magánháborút folytat. Williard útja felfelé a folyón, a háborús területen keresztül egyre inkább erős színekkel festett rémálmokhoz hasonlít.'),
(20, 'Blöff ', '2000', '104', 7, 'bloff.jpg', 'A gyémántokra specializálódott, minden hájjal megkent ékszertolvaj, Franky Four Fingers, miután teljesítette legfrissebb megbízatását, New Yorkba indul, hogy szállítsa az árut főnökének, Avinak. Útközben azonban megáll Londonban, ahol apróbb brilleket kell kézbesítenie megbízója ügyfeleinek. Boris, egy szélhámos orosz azonban ráveszi Frankyt, hogy fogadjon egy illegális bokszmeccsen, ahol tervei szerint kirabolja majd a férfit...'),
(21, 'A bakancslista', '2007', '97', 7, 'bakancslista.jpg', 'A bakancslista azon dolgok sora, amelyeket az ember meg akar tenni az életben, mielőtt feldobná a bakancsot. Carter Chambers (Morgan Freeman) is kénytelen összeírni, amikor kórházba kerül. A milliárdos Edward Cole-t (Jack Nicholson), akit csakis a pénzcsinálás érdekel, szintén kénytelen szembenézni a véggel, és osztozni a kórházi szobán Carterrel. A két, egymástól teljesen különböző ember elhatározza, hogy hátralevő idejükben végrehajtják mindazt, amiről álmodoztak.'),
(22, 'A remény rabjai', '1994', '142', 2, 'remenyrabjai.jpg', '1946-ban egy Andy Dufresne nevű bankárt - noha makacsul hangoztatja ártatlanságát - kettős gyilkosság elkövetése miatt életfogytiglani börtönbüntetésre ítélnek. Dufresne egy Maine állambeli büntetés-végrehajtó intézetbe kerül és hamar meg kell ismerkedjen a börtönélet kegyetlen mindennapjaival, a szadista börtönszemélyzettel, a szinte elállatiasodott rabokkal. Azonban Andy nem törik meg. A bankéletben szerzett tapasztalatai segítségével elnyeri az őrök kegyét és azzal, hogy elvállalja egyik rabtársa illegális akcióiból származó bevételeinek könyvelését, kivívja \"társai\" elismerését is. Cserébe viszont lehetőséget kap a börtön könyvtár fejlesztésére, ezzel némi emberi méltóságot csempészve a keserű körülmények között élő rabok mindennapjaiba.'),
(23, 'Forrest Gump', '1994', '142', 2, 'forestgump.jpg', 'A georgiai Savannah városka árnyas buszmegállójában különös mesemondó üldögél. Forrest Gump mindent látott és mindent átélt, de nem mindent értett. Nem éppen a legfényesebb elme. De hát az anyja is mindig azt mondta: \"Csak az a hülye, aki hülyeséget csinál.\" Forrest Gump pedig semmi egyebet nem csinált, mint jelen volt a XX. század minden fontos eseményén a focipályától a harctérig, az elnökök klubjától a médiavitákig, míg végül meg nem pihent egyetlen igaz szerelme karjában. Forrest Gump IQ-ja nem szárnyal az egekig, de rendkívül becsületes és jólelkű fiú. Különös véletlenek azonban hozzásegítik, hogy az 1950-es évektől 1970-ig Amerika minden jelentős eseményén részt vegyen, és minden jelentős személyiségével találkozzon, köztük: Elvis Presley-vel, JFK-vel, Lyndon Johnsonnal, Richard Nixonnal. Forrest elvégzi a főiskolát, harcol Vietnamban, élsportoló lesz, az egyetlen probléma csak az, hogy túl buta ahhoz, hogy megértse ezen fontos események jelentőségét.'),
(24, 'A chicagói 7-ek tárgyalása', '2020', '130', 2, 'chicagoi7.jpg', 'Ami békés tüntetésnek indult, erőszakos rendőrségi összecsapásba torkollott. Ami utána következett, azt a történelem egyik leghírhedtebb pereként tartják számon.'),
(25, 'Shang-Chi és a Tíz Gyűrű legendája', '2021', '132', 3, 'shangchi.jpg', 'Shang-Chi azt hitte, végleg lezárta a múltat, ám mikor a Tíz Gyűrű elnevezésű titokzatos szervezet hálójába kerül, kénytelen lesz újra szembenézni vele. A SHANG-CHI ÉS A TÍZ GYŰRŰ LEGENDÁJA címszerepét Simu Liu játssza, partnerei többek között Tony Leung, Awkwafina és Michelle Yeoh. A Marvel Studios filmje 2021 szeptemberétől a mozikban!'),
(26, 'Avatar', '2009', '162', 3, 'avatar.jpg', 'Egy deréktól lefelé megbénult háborús veterán a távoli Pandorára utazik. A bolygó lakói, a Na\'vik az emberhez hasonló faj - de nyelvük és kultúrájuk felfoghatatlanul különbözik a miénktől. Ebben a gyönyörű és halálos veszélyeket rejtő világban a földieknek nagyon nagy árat kell fizetniük a túlélésért. De nagyon nagy lehetőséghez is jutnak: a régi agyuk megőrzésével új testet ölthetnek, és az új testben, egy idegen lény szemével figyelhetik magukat és a körülöttük lévő felfoghatatlan, vad világot. A veterán azonban más céllal érkezett. Az új test új, titkos feladatot is jelent számára, amit mindenáron végre kell hajtania.'),
(27, 'Mátrix', '1999', '150', 5, 'matrix.jpg', 'Ahogy látjuk: Szürke, egyhangú világunk valóságos.\r\nA valóság: Ez a világ csak átverés, egy nagyszabású összeesküvés része, amelynek kiagyalói mesterséges intelligenciájú gépek. A hatalom az ő kezükben van és az emberek mind rabszolgák. Kemény!\r\nEláll a lélegzeted a trükköktől, elszáll az agyad az akciójelenetektől és megáll az eszed a történettől.\r\nKeanu Reeves és Laurence Fishburne vezetik az emberiség felszabadításáért folytatott harcot a Mátrixban, a Wachowski fivérek (Fülledtség) korszakalkotó filmjében, amelyet nem lehet elégszer megnézni. A történet lebilincselő, a speciális effektusok páratlanul újszerűek - a film egyszerűen zseniális.'),
(28, 'King\'s Man: A kezdetek', '2021', '131', 5, 'kingsman.jpg', 'Mikor a történelem legszörnyűbb zsarnokai és bűnöző lángelméi összegyűlnek, hogy háborút kirobbantva emberek milliót tüntessék el a föld színéről, egyetlen férfi képes rá, hogy versenyt kell futva az idővel megállítsa őket. Fedezd fel, miként született a legelső független hírszerző ügynökség a KING\'S MAN – A KEZDETEK-ben, 2021 decemberétől a mozikban!'),
(29, 'Die Hard', '1988', '132', 5, 'diehard.jpg', 'John McClane (Bruce Willis) nyomozó New Yorkból Los Angelesbe tart, hogy rendbe hozza házasságát. Még csak nem is sejti, hogy rajta kívül még mások is nagy dobásra készülnek Los Angelesben, méghozzá éppen a szeretet ünnepén. Terroristák egy csapata a hidegvérű Hans Gruber (Alan Rickman) vezényletével arra készül, hogy megszabadítsa a multinacionális Nakatomi céget a kötvényeitől. A terroristák behatolnak az épületbe, túszul ejtik a Nakatomi cég dolgozóit, köztük McClane feleségét, Hollyt (Bonnie Bedelia), és nekilátnak, hogy kinyissák a cég széfjét. Ám McClane, akiről a támadóknak fogalma sincs, mindent elkövet, hogy meghiúsítsa ezt. Nem könnyű feladata, hiszen a terroristák nemcsak létszámbeli fölényben vannak, hanem hatalmas fegyverarzenállal is rendelkeznek, szemben McClane szolgálati fegyverével. A 34 emeletes épületben megkezdődik a macska-egér harc.'),
(30, 'Infinite', '2021', '106', 5, 'infinite.jpg', 'Egy tudathasadással diagnosztizált férfi képzelgéseiről kiderül, hogy előző életének eseményei peregnek le újra és újra a képzeletében; ő is egyike volt az újjászülető szuperemberek társaságának. Eljött az idő, amikor ismét segítenie kell nekik, mert óriási veszély leselkedik a világra. Az év egyik legjobban várt akció-scifije, a Végtelen 2021-ben a UIP-Duna forgalmazásában a magyarországi mozikban Wahlberg mellett olyan sztárokkal a főbb szerepekben, mint  Dylan O\'Brien, Sophie Cookson és Rupert Friend. \r\n'),
(31, 'Silent Hill - A halott város', '2006', '127', 6, 'silenthill.jpg', 'Egy gyógyíthatatlan beteg kislány édesanyja Rose (Radha Mitchell) képtelen beletörődni az orvosok diagnózisába. A gyógyulás útját keresve megszökteti lányát, férje (Sean Bean) minden tiltakozása ellenére. A szökés során balesetet szenvednek és Silent Hill elhagyatott, hátborzongató városába jutva szem elől veszítik egymást, ami nem csoda, hiszen a városra állandó köd telepedik. Silent Hill nem csak ebben különbözik a többi várostól: furcsa lények lakják és időről időre az élő Sötétség telepedik rá, megfertőzve mindazokat, akiket megérint. Rose gyermeke keresése közben egyre többet tud meg a város történetéről és rá kell döbbennie, hogy lánya eltűnése csupán apró porszem egy sokkal komolyabb játékban.'),
(32, 'Fűrész', '2004', '103', 6, 'furesz1.jpg', 'Mit tennél meg azért, hogy mentsd az életed? Készülj egy idegborzoló utazásra a terror legsötétebb bugyraiba. A megháborodott szadista sorozatgyilkos áldozatait megszállottan az élet értékére akarja megtanítani úgy, hogy erkölcsileg szilárd embereket rabol el, és hátborzongató játékra kényszeríti őket, melynek tétje a saját életük. Az áldozatok mindegyikének képtelen döntési helyzetekkel szembesülve kell megküzdenie azért, hogy visszanyerje életét, vagy ellenkező esetben belehaljon a próbálkozásokba.'),
(33, 'Annabelle', '2014', '99', 6, 'annabelle.jpg', 'John (Ward Horton) különleges ajándékot talál feleségének, Miának (Annabelle Wallis). Egy hófehér menyasszonyi ruhába öltöztetett, ritka, régi porcelánbabát. Ám Mia nem örülhet sokáig az ajándéknak, mert a babának szörnyű titka van. S egy borzalmas éjszakán a titokra fény derül. Egy sátánista, baljós szeánszon kiszabadul a babába zárt gonoszt, Annabelle.'),
(34, 'Démonok között', '2013', '112', 6, 'demonokkozott1.jpg', 'Azt hihetnénk, hogy ilyesmi csak egy forgatókönyv-írónak juthat eszébe, pedig ez a történet megtörtént eseten alapul. A paranormális esetek két világhírű kutatója, Ed és Lorraine Warren jegyezte fel annak a családnak a történetét, melyet a világtól távol, egy tanyaházban nem evilági lények terrorizáltak.\r\nPerronék öt gyerekükkel költöznek be új, magányosan álló vidéki házukba, és nem tudják, hogy valaki már él a falak között. Valaki, aki minden percben jelen van, gonosz, és képtelenség megszabadulni tőle. A megmagyarázhatatlan földöntúli jelenlét pokollá teszi a napjaikat, és egyre veszélyesebb, ijesztőbb módokat talál, hogy jelezze: övé a ház, és nem engedi át másnak. Kénytelenek paranormális ügyek nyomozóihoz fordulni: azokhoz, akik az amityville-i esetet is lejegyezték. A szakemberek nekilátnak, hogy kifüstöljék a gonoszt a házból de úgy tűnik, még ők sem bírnak vele.'),
(35, 'Hang nélkül 2', '2020', '97', 6, 'hangnelkul2.jpg', 'Az otthonukban történt halálos eseményeket követően az Abbott családnak a külvilág borzalmaival kell szembesülnie, miközben tovább küzdenek a túlélésért – a legnagyobb csendben. Miután arra kényszerülnek, hogy nekivágjanak az ismeretlennek, gyorsan ráeszmélnek, hogy nem csak a hangra vadászó szörnyek jelentenek fenyegetést a homokösvényen túl...'),
(2432, '534', '3', '5', 2, 'letoltes.jpg', 'asdasd');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film_ertekeles`
--

CREATE TABLE `film_ertekeles` (
  `film_ertekeles_id` int(11) NOT NULL,
  `film_ertekeles_ertek` int(11) NOT NULL,
  `film_ertekeles_film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film_ertekeles`
--

INSERT INTO `film_ertekeles` (`film_ertekeles_id`, `film_ertekeles_ertek`, `film_ertekeles_film_id`) VALUES
(1, 4, 1),
(2, 9, 1),
(3, 7, 14),
(4, 4, 21),
(5, 3, 24),
(6, 9, 6),
(7, 3, 18),
(8, 5, 22),
(9, 5, 19),
(10, 3, 26),
(11, 9, 18),
(12, 10, 18),
(13, 5, 21),
(14, 4, 21),
(15, 3, 21),
(16, 6, 21),
(17, 5, 21),
(18, 5, 21),
(19, 7, 21),
(20, 5, 21),
(21, 10, 24),
(22, 10, 24),
(23, 10, 25),
(24, 8, 15),
(25, 9, 15),
(26, 10, 15),
(27, 8, 15),
(28, 5, 15),
(29, 7, 15),
(30, 9, 15),
(31, 10, 15),
(32, 10, 16),
(33, 10, 16),
(34, 10, 16),
(35, 10, 16),
(36, 10, 16),
(37, 10, 16),
(38, 10, 35),
(39, 8, 35),
(40, 8, 35),
(41, 9, 35),
(42, 8, 35),
(43, 2, 16),
(44, 3, 16),
(45, 4, 16),
(46, 3, 16),
(47, 4, 16),
(48, 4, 16),
(49, 10, 15),
(50, 9, 7),
(51, 1, 7),
(52, 1, 7),
(53, 1, 7),
(54, 8, 11),
(55, 8, 3),
(56, 9, 3),
(57, 8, 3),
(58, 7, 3),
(59, 10, 3),
(60, 10, 3),
(61, 10, 3),
(62, 10, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film_komment`
--

CREATE TABLE `film_komment` (
  `film_komment_id` int(11) NOT NULL,
  `film_komment_nev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `film_komment_szoveg` varchar(500) COLLATE utf8_hungarian_ci NOT NULL,
  `film_komment_film_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film_komment`
--

INSERT INTO `film_komment` (`film_komment_id`, `film_komment_nev`, `film_komment_szoveg`, `film_komment_film_id`) VALUES
(10, 'Jaja', 'Jsjs', 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film_mufajok`
--

CREATE TABLE `film_mufajok` (
  `mufaj_id` int(11) NOT NULL,
  `mufaj_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film_mufajok`
--

INSERT INTO `film_mufajok` (`mufaj_id`, `mufaj_nev`) VALUES
(1, 'Bűnügyi'),
(2, 'Dráma'),
(3, 'Fantasy'),
(4, 'Háborús'),
(5, 'Akció'),
(6, 'Horror'),
(7, 'Vígjáték'),
(8, 'Kaland');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `komment`
--

CREATE TABLE `komment` (
  `komment_id` int(11) NOT NULL,
  `komment_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `komment_szoveg` varchar(200) COLLATE utf8_hungarian_ci NOT NULL,
  `komment_sorozat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `komment`
--

INSERT INTO `komment` (`komment_id`, `komment_nev`, `komment_szoveg`, `komment_sorozat_id`) VALUES
(39, 'Asd', 'Tetves szar', 29),
(40, 'a', 'sads', 10);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `mufaj`
--

CREATE TABLE `mufaj` (
  `mufaj_id` int(11) NOT NULL,
  `mufaj_nev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `mufaj`
--

INSERT INTO `mufaj` (`mufaj_id`, `mufaj_nev`) VALUES
(1, 'Sitcom'),
(2, 'Dráma'),
(3, 'Akció'),
(4, 'Animációs'),
(5, 'Thriller'),
(6, 'Fantasy');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sorozat`
--

CREATE TABLE `sorozat` (
  `sorozat_id` int(11) NOT NULL,
  `sorozat_cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `sorozat_ev` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `sorozat_hossz` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `sorozat_mufaj` int(11) NOT NULL,
  `sorozat_kep` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `sorozat_leiras` varchar(1500) COLLATE utf8_hungarian_ci NOT NULL,
  `sorozat_evadszam` int(11) NOT NULL,
  `sorozat_epizodszam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `sorozat`
--

INSERT INTO `sorozat` (`sorozat_id`, `sorozat_cim`, `sorozat_ev`, `sorozat_hossz`, `sorozat_mufaj`, `sorozat_kep`, `sorozat_leiras`, `sorozat_evadszam`, `sorozat_epizodszam`) VALUES
(1, 'Agymenők', '2007-2019', '18-22', 1, 'agymenok.jpg', 'A történet a kaliforniai Pasadena városában játszódik. Itt él egy bérelt lakásban a két főszereplő Caltech-tudós: a kísérleti fizikus Leonard Hofstadter és az elméleti fizikus Sheldon Cooper. Két legjobb barátjuk is állandó szereplője a sorozatnak: Howard és Rajesh. Howard gépészmérnök és Rajesh asztrofizikus a Caltechen. Életüket mindjárt az első epizódban felforgatja egy csinos, szőke pincérlány, Penny érkezése a szemben lévő lakásba. A négy zseni gondolkodásmódja és „kockasága” merőben eltér az átlagos életet élő emberek életvitelétől, ami a poénok egyik fő forrásává válik', 12, 279),
(2, 'Peaky Blinders', '2013-', '55-65', 2, 'peaky.jpg', 'Az angliai Birminghamben játszódó történet a Peaky Blinders (Pengesapkások) néven hírhedt Shelby bűnözőcsalád történetét dolgozza fel a 20. század első évtizedeiben, az első világháború befejeződésével kezdődően. A fiktív családot részben a valóban létező Peaky Blinders nevű, 19. századi utcai bűnbandáról nevezték el és mintázták. Nevüket sajátos szokásukról kapták: tányérsapkájuk ellenzőjébe fegyverként, pl. ellenségeik megvakítására használt borotvapengéket varrtak – ezt a fegyvert a sorozatbeli szereplők is használják', 5, 30),
(3, 'Stranger Things', '2016-', '42-60', 3, 'strangerthings.jpg', 'Egy kisfiú rejtélyes és hirtelen eltűnése után egy kisváros lakói egy kormányzati laboratórium titkait, egy másik világba vezető portálokat és baljós szörnyeket kezdenek felfedezni. A fiú édesanyja (Joyce) kétségbeesetten próbálja megtalálni a fiút, mert meg van győződve arról, hogy komoly veszélyben van, miközben a rendőrfőnök válaszokat keres.', 3, 25),
(4, 'Így jártam anyátokkal', '2005-2014', '20-22', 1, 'himym.jpg', 'A történet főszereplője Ted Mosby, aki 2030-ban meséli el két gyerekének a hosszabb történetét (mert a rövidet már ismerik) annak, hogyan találkozott az anyjukkal. A jövőbeli Ted narrálja az eseményeket (az eredetiben Bob Saget hangján), melyek a múltban történtek, 2005-től kezdve, amikor is rájött, hogy meg kell találnia az igazit az életben. Összesen 208 epizód készült, az utolsót (mely kissé negatív fogadtatásban részesült', 9, 208),
(5, 'Gravity Falls', '2012-2016', '20-24', 4, 'gravityfalls.jpg', 'A sorozat egy 12 éves ikerpár, Dipper és Mabel Pines nyári vakációját követi nyomon, akiket a szüleik erre az időre az Oregon állambeli Gravity Falls nevű helyre küldtek el, ahol a nagybátyjuk Stan is dolgozik. Ő az itt látható turistaattrakciót futtatja a városban, a Rejtély kalyibát, mely a környék természetfeletti legendáiból csinál pénzt. Dipper azonban felfedezi, hogy a városban valami természetfeletti valóban történik..', 2, 40),
(6, 'The Mandalorian', '2019-', '32-52', 6, 'mandalorian.jpg', 'A főszereplő egy magányos mandalori harcos, aki öt évvel a birodalom bukása után fejvadászként él. Egy birodalmi ügyfél megbízást ad neki: egy ötvenéves személy felkutatását. A fejvadász felfedezi, hogy ez az ötvenéves gyermek sokkal nagyobb jelentőséggel bír, mint amire valaha is gondolt. Grogu (a Gyermek) ugyanazon fajból származik, mint Yoda mester. A fejvadász-céh szabályaival ellentétben úgy dönt, hogy visszaveszi a gyermeket az ügyféltől, és inkább megvédi őt, emiatt a többi fejvadász célpontjává válik.', 2, 16),
(7, 'Dexter', '2006-2013', '47-58', 5, 'dexter.jpg', 'A sorozat Dexter Morgan (Michael C. Hall), a Miami rendőrség vérmintaelemzőjének életét követi, aki kettős életet él. Miközben a gyilkossági osztályon gyilkosságok után nyomoz, Dexter olyan gyilkosokra vadászik és öl, akik elmenekültek az igazságszolgáltatás elől.', 9, 96),
(8, 'Breaking Bad', '2008-2013', '47', 2, 'breakingbad.jpg', 'A Breaking Bad az Új-Mexikó állambeli Albuquerque városában és környékén játszódik 2008 és 2010 között. Főszereplője az operálhatatlan tüdőrákkal küzdő Walter White, aki a cselekmény során egy csetlő-botló, kissé szerencsétlen középiskolai kémiatanárból, aki csak a családja megélhetését akarja biztosítani, átalakul egy kegyetlen és erőszakos metamfetamin-készítővé és kereskedővé. Eleinte csak kisebb adagokat készített egykori diákjával, az eszes, de léha Jesse Pinkmannel, majd amikor a különleges receptjüknek hála kék színű anyagukért megindul a kereslet, úgy indul be az üzlet, annak minden gondjával együtt. Hogy identitása titokban maradjon, Walter a Heisenberg álnevet használja. Tetteivel felforgatja a családi életét, veszélybe sodorja a saját és az ő életüket, miután a helyi terjesztők és a mexikói kartell érdekeit is veszélyezteti, ráadásul a sógora, Hank Schrader a drogelhárításnál dolgozik, aki eltökélte magát, hogy elfogja Heisenberget.', 5, 62),
(9, 'A Nagy Pénzrablás', '2017-2021', '41-58', 3, 'moneyheist.jpg', 'A cselekmény egy bankrablásról szól, amelyet egy csoport hajt végre, amelynek élén a Professzor nevű lángelme áll. ... A rablócsoportot városokról nevezik el: Tokió, Moszkva, Denver, Nairobi, Rio, Helsinki, Oslo és Berlin. Az első két évadban egy sikeres rablást hajtanak végre a spanyol királyi pénzverdében.', 5, 43),
(10, 'Loki', '2021-', '40-50', 6, 'loki.jpg', 'Loki  a Bosszúállók: Végjáték-ban megszökik a Bosszúállók karmai közül, de elkapja az Időváltoztatási Hatóság. Ez küldi őt egy küldetésre, hogy elkapja a különböző antagonistákat, akik megzavarják az idővonalakat.', 1, 6),
(11, 'WandaVision', '2021', '30-37', 6, 'wandavision.jpg', 'Wanda Maximoff és Vízió egy csendes kisvárosban, Westviewben laknak és megpróbálják eltitkolni az erejüket a szomszédok elől. Wanda és Vízió emlékei hiányosak azt se tudják, hogy kerültek a városba. Az idő folyamán rájönnek, hogy semmi sem az aminek látszik.', 1, 9),
(12, 'The Office', '2005-2013', '22', 1, 'theoffice.jpg', 'Egy óriás papírvállalati cég, a Dunder Mifflin Scranton városi kirendeltségén játszódik a történet, ahol bepillantást nyerhetünk az irodai dolgozók szürke mindennapjaiba. Kiderül azonban, hogy ezek a mindennapok nem is annyira szürkék, sőt mi több, az unaloműzés céljából a kollégák állandó megviccelése elég jó móka. Bepillantást nyerhetünk továbbá az emberek magánéletébe is a munka mellett, ami még több izgalmat és komédiát rejteget.', 9, 201),
(13, 'Trónok Harca ', '2011-2019', '50-82', 2, 'tronokharca.jpg', 'A sorozat egy fiktív világ Westeros és Essos nevű kontinensein játszódik, és a történet szerteágazódása miatt rengeteg szereplője van. Három nagy sztoriszál húzódik végig a cselekményen: az első a Hét Királyság feletti uralomért csatázó nemesi házak küzdelmeit mutatja be, a második a trón tengeren túl szervezkedő törvényes örökösét követi nyomon, a harmadik pedig egy ősi, elfeledettnek hitt ellenség közelgő támadását vetíti előre.', 8, 73),
(14, 'Family Guy', '1999-', '20-25', 4, 'familyguy.jpg', 'A sorozat a Griffin család mindennapjai körül zajlik: a családfő Peter és az anya Lois, valamint három gyerekük: Chris, Meg, és Stewie, illetve kutyájuk, az emberi tulajdonságokkal felvértezett Brian életéről szól. A helyszín Rhode Island állam egy kitalált városa, Quahog. A sorozatra jellemző a szürreális, fekete humor, illetve a metafikciós bevágott jelenetek, amelyek nem kapcsolódnak a cselekményhez. Gyakori az amerikai popkultúra és életstílus kifigurázása is.', 19, 369),
(15, 'Hannibal', '2013-2015', '44', 5, 'hannibal.jpg', 'A sorozat Thomas Harris, Vörös Sárkány című regényének előzménye, a karakterek, és bizonyos történések a regényből származnak. A történet főszereplője Dr. Hannibal Lecter pszichiáter és Will Graham, az FBI különleges nyomozója, az ő kapcsolatukra összpontosít a sorozat. A sorozat az előzménye a Vörös Sárkány című regénynek, melyet követ A bárányok hallgatnak, és a Hannibal. A sorozat 3 évadból, és minden évad 13 részből áll.', 3, 39),
(16, 'Black Mirror', '2011-2019', '41-89', 2, 'blackmirror.jpg', 'A sorozat legtöbb része egy olyan jelenben vagy közeljövőben játszódik, ahol az információs technológia valamilyen forradalmi változást eredményezett az emberi életvitelben. E változások azonban a leggyakrabban disztópikus társadalmakat eredményeznek. Néhány rész viszont nélkülözi a sci-fi elemeket és kortárs thrillernek is felfogható. A különböző történetek között olykor direkt utalások és easter egg-ek teremtenek kapcsolatot.', 5, 22),
(17, 'Westworld', '2016-', '57-91', 2, 'westworld.jpg', 'A történet Westworldben, egy fiktív világban játszódik, egy technológiailag fejlett vadnyugati témájú vidámparkban, melyet androidok laknak. A Westworld a szórakoztatás legfelsőbb szintjét kínálja a jól fizető vendégeknek, akik kedvük szerint, következmények nélkül cselekedhetnek a park teljes területén anélkül, hogy a látszatra normális emberi életet élő androidok közbeszólnának.', 3, 28),
(18, 'Gotham', '2016-2020', '45', 2, 'gotham.jpg', 'A show egy Batman-eredettörténetként funkcionál, melynek főszereplője a fiatal James Gordon (Ben McKenzie) aki az első évadban Bruce Wayne (David Mazouz) szüleinek meggyilkolásának ügyében nyomoz új társával, Harvey Bullock-kal (Donal Logue). Közben egy mellékszálban követhetjük végig az ifjú Pingvin (Robin Lord Taylor) felemelkedését a Maffiában. A sorozat továbbá eredettörténetként szolgál olyan negatív szereplők számára is, mint Joker, Méregcsók, Rébusz, Madárijesztő, Hugo Strange és Kétarc.', 5, 100),
(19, 'Modern Család', '2009-2020', '20-22', 1, 'modernfamily.jpg', 'A sorozat a meglehetősen vegyes összetételű Pritchett–Dunphy–Tucker klánt mutatja be. Jay (Ed O\'Neill) frissen újraházasodott, latin felesége, Gloria (Sofia Vergara) és annak kicsit túlságosan is koraérett gyermeke, Manny (Rico Rodriguez) keresi a helyét a meglehetősen népes családban, amit Jay első házasságából született gyermekeinek családja tesz teljessé. Claire (Julie Bowen) és férje, Phil (Ty Burrell), aki saját bevallása szerint \"cool apa\" nevelik 3 gyermeküket: Haley-t a felelőtlen tinédzsert, Alex-et a zseni középső gyermeket és Luke-ot a szórakozott kisfiút. Mitchell (Jesse Tyler Ferguson) pedig az élettársával, Cameronnal (Eric Stonestreet) fogad örökbe egy vietnami kislányt, Lily-t, és tapasztalják meg gyermeknevelés nehézségeit.', 11, 250),
(20, 'Star Wars: A klónok háborúja', '2008-2020', '22', 4, 'starwarsclonewars.jpg', 'Miután a Köztársaság győzelmet aratott Christophsisban, Anakin és új tanítványa, Ahsoka Tano meg kell menteniük Jabba, a hutt elrabolt fiát. Küldetésüket politikai intrikák bonyolítják. Miközben a klónháborúk végigsöpörnek a galaxison, a hős Jedi lovagok a rend fenntartásáért és a béke helyreállításáért küzdenek.', 7, 121),
(21, 'The Walking Dead', '2010-', '41-67', 5, 'thewalkingdead.jpg', 'A The Walking Dead a zombiapokalipszist követő hónapok és évek történetét meséli el. A történet a túlélők egy csoportját követi, akik Rick Grimes, egykori rendőrtiszt vezetésével utaznak, hogy biztonságos otthont keressenek', 11, 161),
(22, 'A Sólyom és a Tél Katonája', '2021', '40-50', 3, 'falconandthewintersoldier.jpg', '\"A Sólyom és a téli katona\" Sam Wilson (Anthony Mackie) küzdelmét követi, hogy átvegye Amerika Kapitány szerepét. Az út során Bucky (Sebastian Stan) is ott van, aki a saját problémáival küzd, amelyeket a Téli Katonaként ismert, agymosott bérgyilkos múltbeli élete okozott neki.', 1, 6),
(23, 'Dokik', '2001-2010', '24', 1, 'dokik.jpg', 'Az Emmy-díjas történet John Dorian medikus gyakran bizarr élményeit mutatja be. \"JD\" úgy érzi, hat évnyi tanulás után mindenre fel van készülve, ami a kórházban érheti. A medikus azonban gyorsan szembesül azzal, hogy rengeteg meglepetés várja új munkahelyén, ahová legjobb barátjával, Turkkel érkezik. A tengerentúlon több, mint 11 millió ember nézte a Dokik történetét a kezdetekkor, a siker pedig azóta is töretlen. Amikor J.D. megérkezik a kórházba, nem is sejti hogy milyen figurákkal lesz körülvéve. Az üldözési mániás karbantartó, a szarkasztikus, és mindenkit leoltó főorvos, a kórházigazgató, aki a megtestesült gonosz, alkotják a cselekmények gerincét, de még sok más idióta figura is feltűnik..', 9, 182),
(24, 'Doktor Murphy', '2017-', '41-44', 2, 'doktormurphy.jpg', 'A sorozat főszereplője Shaun Murphy, egy kezdő és kivételesen tehetséges sebész, aki teljesen felkavarja a kaliforniai San José egyik legrangosabb kórházának az életét. A profik nehezen tudnak mit kezdeni a fiatal sebésszel, aki autizmussal és Savant-szindrómával küzd. A többi emberhez személyesen kapcsolódni képtelen Shaun ugyanakkor rendkívüli megoldásaival folyamatosan megkérdőjelezi kollégái rutinját, és kivételes adottságával nem csak életeket ment meg, hanem kollégái szakmai fejlődésében is felbecsülhetetlen segítségnek bizonyul.', 5, 83),
(25, 'Sherlock', '2010-2017', '90', 2, 'sherlock.jpg', 'Sherlock Holmes, aki önmagát \"tanácsadó nyomozónak\" nevezi, kreálva ezzel egy új kategóriát, a londoni rendőrség munkáját segíti, köztük is különösen Greg Lestrade felügyelőt, s együtt oldanak meg rejtélyes eseteket. Holmes állandó segítőtársa Dr. John Watson, a lakótársa, aki Afganisztánban szolgált katonaorvosként. Bár a sorozat során számtalan rosszfiú és bűnöző felbukkan, Sherlock Holmes harca ősellenségével, Jim Moriartyval egy visszatérő momentum. További visszatérő karakter még a patológus Molly Hooper, Sherlock bátyja, Mycroft, valamint Mrs. Hudson, a Baker Street 221B házinénije.', 4, 13),
(26, 'Bojack Horseman', '2014-2020', '25', 4, 'bojack.jpg', 'A műsor a címadó ló/ember-keverék főszereplőről szól, aki egy öregedő színész. Az epizódok rá koncentrálnak, amint próbál a munkájának élni és a családjára is vigyázni egyben. Ez nem könnyű feladat hősünk számára, aki különféle kalandokba keveredik a részek alatt.', 6, 77),
(27, 'Parkműsor', '2010-2017', '21', 4, 'regularshow.jpg', 'A sorozat két munkásosztálybeli barát, egy Mordecai nevű kék szajkó és egy Rigby nevű mosómedve élete körül forog - mindketten egy helyi park gondozójaként dolgoznak. Általában egy egyszerű problémát próbálnak megoldani, ami szürreális, extrém és gyakran természetfeletti kalandokhoz vezet.', 8, 261),
(28, 'True Detective', '2014-2019', '54-87', 5, 'truedetective.jpg', 'Egy különös dél-kaliforniai gyilkosság, amelyet a kaliforniai autópálya-rendőr, Paul Woodrugh (Taylor Kitsch) fedez fel, összeesküvéshez vezet, amely a maffiózó Frank Semyon (Vince Vaughn), a maffiával kapcsolatban álló Ray Velcoro (Colin Farrell) nyomozó és Ani Bezzerides (Rachel McAdams) Ventura megyei seriff nyomozót is behálózza', 3, 24),
(29, 'Lucifer', '2016-2021', '42-62', 2, 'lucifer.jpg', 'Lucifer Morningstar ténylegesen maga az ördög, a pokol ura, de már öt éve a halandók között, a földön él. A lázadó természetű Lucifer atyja, az őt a mennyből a pokolba száműző Isten akaratával dacolva hagyta el a poklot. A földre magával hozta a pokol egyik démonát és kínzómesterét, az emberi alakjában nő Mazikeent, becenevén Maze-t. Miután Lucifer maga is angyal, érkezésüket követően kérésére Maze levágja az angyalszárnyait. Ironikus módon az „Angyalok városában”, azaz Los Angeles-ben telepszenek le, ahol Lucifer beindítja a jól menő, exkluzív Lux bárt.', 6, 93),
(30, 'Hawkeye', '2021-', '43-51', 6, 'hawkeye.jpg', '2012-ben, a New York-i csata során a fiatal Kate Bishop szemtanúja lesz Clint Barton harcának a Chitauri ellen, és arra törekszik, hogy olyan hős legyen, mint ő, miután a férfi véletlenül megmenti az életét, bár Bishop apja a támadás során meghal. A jelenben Barton a karácsonyi ünnepeket a gyermekeivel tölti New Yorkban.', 1, 6),
(45, 'asd', 'a', 'a', 2, 'letoltes.jpg', 'a', 4, 5),
(46, 'asd', 'a', 'a', 2, 'letoltes.jpg', 'a', 4, 5),
(47, 'ada', '32', '32', 5, 'letoltes.jpg', 'asfafa', 5, 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(14, 'adamfarago', 'adam.farago004@gmail.com', '$2a$08$j2N/2rMBYDeurfIi2KguXeOIAdOqDrzZVQ6RdvLpyrEpVkYm6I0rK', '2022-01-24 10:53:06', '2022-01-24 10:53:06');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('2022-01-24 10:53:06', '2022-01-24 10:53:06', 1, 14),
('2022-01-24 10:53:06', '2022-01-24 10:53:06', 1, 15),
('2022-02-03 12:45:14', '2022-02-03 12:45:14', 1, 16),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3),
('2022-01-24 13:18:02', '0000-00-00 00:00:00', 3, 14);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ajanlas`
--
ALTER TABLE `ajanlas`
  ADD PRIMARY KEY (`ajanlas_id`);

--
-- A tábla indexei `ertekeles`
--
ALTER TABLE `ertekeles`
  ADD PRIMARY KEY (`ertekeles_id`),
  ADD KEY `ertekeles_sorozat_id` (`ertekeles_sorozat_id`);

--
-- A tábla indexei `filmek`
--
ALTER TABLE `filmek`
  ADD PRIMARY KEY (`film_id`),
  ADD KEY `film_mufaj` (`film_mufaj`);

--
-- A tábla indexei `film_ertekeles`
--
ALTER TABLE `film_ertekeles`
  ADD PRIMARY KEY (`film_ertekeles_id`),
  ADD KEY `film_ertekeles_film_id` (`film_ertekeles_film_id`);

--
-- A tábla indexei `film_komment`
--
ALTER TABLE `film_komment`
  ADD PRIMARY KEY (`film_komment_id`),
  ADD KEY `film_komment_film_id` (`film_komment_film_id`);

--
-- A tábla indexei `film_mufajok`
--
ALTER TABLE `film_mufajok`
  ADD PRIMARY KEY (`mufaj_id`);

--
-- A tábla indexei `komment`
--
ALTER TABLE `komment`
  ADD PRIMARY KEY (`komment_id`),
  ADD KEY `komment_sorozat_id` (`komment_sorozat_id`);

--
-- A tábla indexei `mufaj`
--
ALTER TABLE `mufaj`
  ADD PRIMARY KEY (`mufaj_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `sorozat`
--
ALTER TABLE `sorozat`
  ADD PRIMARY KEY (`sorozat_id`),
  ADD KEY `sorozat_mufaj` (`sorozat_mufaj`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ajanlas`
--
ALTER TABLE `ajanlas`
  MODIFY `ajanlas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `ertekeles`
--
ALTER TABLE `ertekeles`
  MODIFY `ertekeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT a táblához `filmek`
--
ALTER TABLE `filmek`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2433;

--
-- AUTO_INCREMENT a táblához `film_ertekeles`
--
ALTER TABLE `film_ertekeles`
  MODIFY `film_ertekeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT a táblához `film_komment`
--
ALTER TABLE `film_komment`
  MODIFY `film_komment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `film_mufajok`
--
ALTER TABLE `film_mufajok`
  MODIFY `mufaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `komment`
--
ALTER TABLE `komment`
  MODIFY `komment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT a táblához `mufaj`
--
ALTER TABLE `mufaj`
  MODIFY `mufaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `sorozat`
--
ALTER TABLE `sorozat`
  MODIFY `sorozat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `ertekeles`
--
ALTER TABLE `ertekeles`
  ADD CONSTRAINT `ertekeles_ibfk_1` FOREIGN KEY (`ertekeles_sorozat_id`) REFERENCES `sorozat` (`sorozat_id`);

--
-- Megkötések a táblához `filmek`
--
ALTER TABLE `filmek`
  ADD CONSTRAINT `filmek_ibfk_1` FOREIGN KEY (`film_mufaj`) REFERENCES `film_mufajok` (`mufaj_id`);

--
-- Megkötések a táblához `film_ertekeles`
--
ALTER TABLE `film_ertekeles`
  ADD CONSTRAINT `film_ertekeles_ibfk_1` FOREIGN KEY (`film_ertekeles_film_id`) REFERENCES `filmek` (`film_id`);

--
-- Megkötések a táblához `film_komment`
--
ALTER TABLE `film_komment`
  ADD CONSTRAINT `film_komment_ibfk_1` FOREIGN KEY (`film_komment_film_id`) REFERENCES `filmek` (`film_id`);

--
-- Megkötések a táblához `komment`
--
ALTER TABLE `komment`
  ADD CONSTRAINT `komment_ibfk_1` FOREIGN KEY (`komment_sorozat_id`) REFERENCES `sorozat` (`sorozat_id`);

--
-- Megkötések a táblához `sorozat`
--
ALTER TABLE `sorozat`
  ADD CONSTRAINT `sorozat_ibfk_1` FOREIGN KEY (`sorozat_mufaj`) REFERENCES `mufaj` (`mufaj_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
