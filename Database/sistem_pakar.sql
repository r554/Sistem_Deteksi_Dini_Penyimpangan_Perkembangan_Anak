-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2022 at 04:44 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(30) NOT NULL,
  `alamat_admin` varchar(200) NOT NULL,
  `no_admin` varchar(25) NOT NULL,
  `email_admin` varchar(25) NOT NULL,
  `foto_admin` varchar(200) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama_admin`, `alamat_admin`, `no_admin`, `email_admin`, `foto_admin`, `username`, `password`) VALUES
(1, 'Indah ', 'Jember', '085816352664', 'indahqurrothul@gmail.com', 'item-210829-a8b66ec75a.png', 'indah', 'f3385c508ce54d577fd205a1b2ecdfb7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_detail_konsultasi`
--

CREATE TABLE `tbl_data_detail_konsultasi` (
  `id_detail_konsultasi` varchar(8) NOT NULL,
  `id_konsultasi` varchar(7) NOT NULL,
  `id_kueisoner` varchar(5) NOT NULL,
  `id_pengetahuan` varchar(4) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL,
  `jawaban_iya` varchar(2) NOT NULL,
  `jawaban_tidak` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_konsultasi`
--

CREATE TABLE `tbl_data_konsultasi` (
  `id_konsultasi` int(11) NOT NULL,
  `id_user` varchar(7) NOT NULL,
  `id_kuesioner` varchar(5) NOT NULL,
  `id_stimulasi` varchar(7) NOT NULL,
  `Nilai_CFpakar` varchar(10) NOT NULL,
  `Nilai_CFuser` varchar(10) DEFAULT NULL,
  `hasil_perhitungan` varchar(7) NOT NULL,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_kuesioner`
--

CREATE TABLE `tbl_data_kuesioner` (
  `id_kuesioner` varchar(5) NOT NULL,
  `id_usia` varchar(4) NOT NULL,
  `id_pengetahuan` varchar(4) NOT NULL,
  `pertanyaan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_kuesioner`
--

INSERT INTO `tbl_data_kuesioner` (`id_kuesioner`, `id_usia`, `id_pengetahuan`, `pertanyaan`) VALUES
('QU001', 'RU01', 'CP01', 'Pada waktu bayi terlentang, apakah masing-masing lengan dan tungkai bergerak dengan mudah? Jawaban TIDAK bila salah satu atau kedua tungkai atau lengan bayi bergerak tak terarah/tak terkendali\n'),
('QU002', 'RU01', 'CP04', 'Pada waktu bayi terlentang apakah ia melihat dan menatap wajah anda?'),
('QU003', 'RU01', 'CP03', 'Apakah bayi dapat mengeluarkan suara-suara lain (ngoceh) selain menangis?'),
('QU004', 'RU01', 'CP04', 'Pada waktu anda mengajak bayi berbicara dan tersenyum, apakah ia tersenyum kembali kepada anda'),
('QU005', 'RU01', 'CP03', 'Apakah bayi suka tertawa keras walau tidak digelitik atau diraba-raba?'),
('QU006', 'RU01', 'CP02', 'Ambil wool merah, letakkan di atas wajah di depan mata, gerakkan wool dari samping kiri ke kanan kepala. Apakah ia dapat  mengikuti  gerakan anda dengan menggerakkan kepalanya dari kanan/kiri ke tenga'),
('QU007', 'RU01', 'CP02', 'Ambil wool merah, letakkan di atas wajah di depan mata, gerakkan wool dari samping kiri ke kanan kepala. Apakah ia dapat mengikuti gerakan anda dengan menggerakkan kepalanya dari satu sisi hampir samp'),
('QU008', 'RU01', 'CP01', 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya?'),
('QU009', 'RU01', 'CP01', 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya sehingga membentuk sudut 45˚?'),
('QU010', 'RU01', 'CP01', 'Pada waktu bayi telungkup di alas yang datar, apakah ia dapat mengangkat kepalanya dengan tegak?'),
('QU011', 'RU02', 'CP02', 'Ambil wool merah, letakkan di atas wajah di depan mata, gerakkan wool dari samping kiri ke kanan kepala. Apakah ia dapat mengikuti gerakan anda dengan menggerakkan kepala sepenuhnya dari satu ke sisi '),
('QU012', 'RU02', 'CP01', 'Pada posisi bayi terlentang, pegang kedua tangannya lalu tarik perlahan-lahan ke posisi duduk. Dapatkah bayi mempertahankan lehernya secara kaku? Jawab TIDAK bila kepala bayi jatuh kembali.'),
('QU013', 'RU02', 'CP01', 'Ketika bayi telungkup di alas datar, apakah ia dapat mengangkat dada dengan kedua lengannya sebagai penyangga ?'),
('QU014', 'RU02', 'CP01', 'Dapatkah    bayi    mempertahankan    posisi    kepala  dalam keadaan  tegak  dan  stabil?  Jawab  TIDAK  bila  kepala   bayi cenderung jatuh ke kanan/kiri atau ke dadanya.'),
('QU015', 'RU02', 'CP02', 'Sentuhkan pensil di punggung tangan atau ujung jari bayi (jangan meletakkan di atas telapak tangan bayi). Apakah bayi dapat menggenggam pensil itu selama beberapa detik?'),
('QU016', 'RU02', 'CP02', 'Dapatkah bayi mengarahkan matanya pada benda kecil sebesar kacang, kismis atau uang logam? Jawab TIDAK jika ia tidak dapat mengarahkan matanya.'),
('QU017', 'RU02', 'CP02', 'Dapatkah bayi meraih mainan yang diletakkan agak jauh namun masih berada dalam jangkauan tangannya?'),
('QU018', 'RU02', 'CP03', 'Pernahkah bayi mengeluarkan suara gembira bernada tinggi atau memekik tetapi bukan menangis?'),
('QU019', 'RU02', 'CP01', 'Pernahkah bayi berbalik paling sedikit dua kali, dari terlentang ke telungkup atau sebaliknya?'),
('QU020', 'RU02', 'CP04', 'Pernahkah anda melihat bayi tersenyum ketika melihat mainan yang lucu, gambar atau binatang peliharaan pada saat ia bermain sendiri?'),
('QU021', 'RU03', 'CP01', 'Pada posisi bayi telentang, pegang kedua tangannya lalu tarik perlahan-lahan ke posisi duduk.    Dapatkah    bayi  mempertahankan lehernya secara kaku seperti gambar  di sebelah kiri ?	Jawab TIDAK bil'),
('QU022', 'RU03', 'CP02', 'Tarik perhatian bayi dengan memperlihatkan wool merah, kemudian jatuh kan ke lantai. Apakah bayi mencoba mencarinya? Misalnya mencari di bawah meja atau di belakang kursi?'),
('QU023', 'RU03', 'CP01', 'Taruh 2 kubus di atas meja, buat agar bayi dapat memungut masing-masing kubus  dengan  masing-masing  tangan  dan  memegang  satu  kubus   pada masing-masing tangannya\r\n'),
('QU024', 'RU03', 'CP01', 'Taruh kismis di atas meja. Dapatkah bayi memungut dengan tangannya benda-benda kecil seperti kismis, kacang-kacangan, potongan biskuit, dengan gerakan miring atau menggerapai?'),
('QU025', 'RU03', 'CP04', 'Letakkan suatu mainan yang dinginkannya di luar jangkauan bayi, apakah ia mencoba mendapatkannya dengan mengulurkan lengan atau badannya?'),
('QU026', 'RU03', 'CP02', 'Apakah pernah melihat bayi memindahkan mainan atau kue kering dari satu tangan ke tangan yang lain? Benda-benda panjang seperti sendok atau kerincingan bertangkai tidak ikut dinilai.'),
('QU027', 'RU03', 'CP04', 'Apakah bayi dapat makan kue kering sendiri?'),
('QU028', 'RU03', 'CP03', 'Pada waktu bayi bermain sendiri dan ibu diam-diam datang berdiri di belakangnya, apakah ia menengok ke belakang seperti mendengar kedatangan anda? Suara keras tidak ikut dihitung. Jawab YA hanya jika '),
('QU029', 'RU03', 'CP01', 'Jika anda mengangkat bayi melalui ketiaknya ke posisi berdiri, dapatkah ia menyangga sebagian berat badan dengan kedua kakinya? Jawab YA bila ia mencoba berdiri dan sebagian berat badan tertumpu pada '),
('QU030', 'RU03', 'CP01', 'Tanpa disangga oleh bantal, kursi atau dinding, dapatkah bayi duduk sendiri selama 60 detik?'),
('QU031', 'RU04', 'CP02', 'Letakkan pensil di telapak tangan bayi. Coba ambil pensil tersebut dengan perlahan-lahan. Sulitkah anda mendapatkan pensil itu kembali?'),
('QU032', 'RU04', 'CP02', 'Taruh kismis di atas meja. Dapatkah bayi memungut dengan tangannya benda-benda kecil seperti kismis, kacang-kacangan, potongan biskuit, dengan gerakan miring atau menggerapai  ?'),
('QU033', 'RU04', 'CP02', 'Tanpa bantuan,apakah anak dapat mempertemukan dua kubus kecil yang ia pegang?'),
('QU034', 'RU04', 'CP03', 'Sebut 2-3 kata yang dapat ditiru oleh anak (tidak perlu kata-kata yang lengkap). Apakah ia mencoba meniru menyebutkan kata-kata tadi ?'),
('QU035', 'RU04', 'CP04', 'Jika anda bersembunyi di belakang sesuatu/di pojok, kemudian muncul dan menghilang secara berulang-ulang di hadapan anak, apakah ia mencari anda atau mengharapkan anda muncul kembali?'),
('QU036', 'RU04', 'CP01', 'Apakah anak dapat mengangkat badannya ke posisi berdiri tanpa bantuan anda?'),
('QU037', 'RU04', 'CP04', 'Apakah anak dapat membedakan anda dengan orang yang belum ia kenal? Ia akan menunjukkan sikap malu-malu atau ragu-ragu pada saat permulaan bertemu dengan orang yang belum dikenalnya.'),
('QU038', 'RU04', 'CP01', 'Apakah anak dapat duduk sendiri tanpa bantuan?'),
('QU039', 'RU04', 'CP03', 'Apakah anak dapat mengatakan 2 suku kata yang sama, misalnya: “ma-ma”, “da-da” atau “pa-pa”. Jawab YA bila ia  mengeluarkan salah satu suara tadi'),
('QU040', 'RU04', 'CP01', 'Apakah anak dapat berdiri selama 30 detik atau lebih dengan berpegangan pada kursi/meja?'),
('QU041', 'RU05', 'CP02', 'Beri 2 kubus, tanpa bantuan, apakah anak dapat mempertemukan dua kubus kecil yang ia pegang?'),
('QU042', 'RU05', 'CP02', 'Apakah anak anak dapat mengambil benda kecil seperti kacang, kismis, atau potongan biskuit dengan menggunakan ibu jari dan jari telunjuk?'),
('QU043', 'RU05', 'CP01', 'Apakah anak dapat jalan sendiri atau jalan dengan berpegangan?'),
('QU044', 'RU05', 'CP04', 'Tanpa bantuan, apakah anak dapat bertepuk tangan atau melambai- lambai?'),
('QU045', 'RU05', 'CP03', 'Jawab TIDAK bila ia membutuh kan bantuan Apakah anak dapat mengatakan \"papa\" ketika ia memanggil/melihat ayahnya, atau mengatakan \"mama\" jika memanggil/melihat ibunya?'),
('QU046', 'RU05', 'CP04', 'Jawab YA bila anak mengatakan salah satu diantaranya Apakah anak dapat menunjukkan apa yang diinginkannya tanpa menangis atau merengek? Jawab YA bila ia menunjuk, menarik atau mengeluarkan suara yang '),
('QU047', 'RU05', 'CP01', 'Apakah anak dapat berdiri sendiri tanpa berpegangan selama kira-kira 5 detik?'),
('QU048', 'RU05', 'CP01', 'Apakah anak dapat berdiri sendiri tanpa berpegangan selama 30 detik atau lebih?'),
('QU049', 'RU05', 'CP01', 'Taruh kubus di lantai, tanpa berpegangan atau menyentuh lantai, apakah anak dapat membungkuk untuk memungut kubus di lantai dan kemudian berdiri kembali?'),
('QU050', 'RU05', 'CP01', 'Apakah anak dapat berjalan di sepanjang ruangan tanpa jatuh atau terhuyung-huyung?'),
('QU051', 'RU06', 'CP02', 'Letakkan kismis diatas meja dekat anak, apakah anak dapat mengambil dengan ibu jari dan telunjuk?'),
('QU052', 'RU06', 'CP02', 'Gelindingkan bola tenis ke arah anak, apakah dapat mengelindingkan /melempar bola kembali kepada anak?'),
('QU053', 'RU06', 'CP04', 'Apakah anak dapat bertepuk tangan atau melambaikan tangan tanpa bantuan?'),
('QU054', 'RU06', 'CP03', 'Apakah anak dapat mengatakan “papa” ketika melihat atau memanggil ayahnya atau mengatakan “mama” ketika melihat atau memanggil ibunya?'),
('QU055', 'RU06', 'CP04', 'Apakah anak dapat menunjukkan apa yang diingikan tanpa menangis atau merengek?'),
('QU056', 'RU06', 'CP04', 'Apakah anak dapat minum dari cangkir/gelas sendiri tanpa tumpah?'),
('QU057', 'RU06', 'CP01', 'Apakah anak dapat berdiri kira-kira 5 detik tanpa pegangan?'),
('QU058', 'RU06', 'CP01', 'Apakah anak dapat berdiri kira kira lebih dari 30 detik tanpa pegangan?'),
('QU059', 'RU06', 'CP01', 'Letakkan kubus di lantai, minta anak memungut, apakah anak dapat memungut dan berdiri kembali tanpa berpegangan?'),
('QU060', 'RU06', 'CP01', 'Minta anak berjalan sepanjang ruangan, dapatkan ia berjalan tanpa terhunyung/jatuh?'),
('QU061', 'RU07', 'CP02', 'Letakkan kismis diatas meja dekat anak, apakah anak dapat mengambil dengan ibu jari dan telunjuk?'),
('QU062', 'RU07', 'CP02', 'Gelindingkan bola tenis ke arah anak, apakah dapat mengelindingkan/melempar bola kembali kepada anak?'),
('QU063', 'RU07', 'CP02', 'Beri kubus didepannya. Minta anak meletakkan 1 kubus diatas kubus lainnya (1 tingkat saja)'),
('QU064', 'RU07', 'CP04', 'Apakah anak dapat menunjukkan apa yang diinginkan tanpa menangis atau merengek?'),
('QU065', 'RU07', 'CP04', 'Apakah anak dapat minum dari cangkir/gelas sendiri tanpa tumpah?'),
('QU066', 'RU07', 'CP04', 'Apakah anak suka meniru bila ibu sedang melakukan pekerjaan rumah tangga (menyapu, mencuci, dll)'),
('QU067', 'RU07', 'CP03', 'Apakah anak dapat mengucapkan minimal 3 kata yang mempunyai arti (selain kata mama dan papa)?'),
('QU068', 'RU07', 'CP01', 'Apakah anak pernah berjalan mundur minimal 5 langkah?'),
('QU069', 'RU07', 'CP01', 'Coba berdirikan anak, Letakkan kubus di lantai, minta anak memungut, apakah anak dapat memungut dan berdiri kembali tanpa berpegangan?'),
('QU070', 'RU07', 'CP01', 'Minta anak berjalan sepanjang ruangan, dapatkan ia berjalan tanpa terhunyung/jatuh?'),
('QU071', 'RU08', 'CP02', 'Apakah anak dapat meletakkan satu kubus di atas kubus yang lain tanpa menjatuhkan kubus itu?'),
('QU072', 'RU08', 'CP03', 'Tanpa bimbingan, petunjuk, atau bantuan anda, dapatkah anak menunjuk dengan benar paling sedikit satu bagian badannya (rambut, mata, hidung, mulut, atau bagian badan yang lain)?'),
('QU073', 'RU08', 'CP04', 'Apakah anak suka meniru bila ibu sedang melakukan pekerjaan rumah tangga (menyapu, mencuci, dll)?'),
('QU074', 'RU08', 'CP03', 'Apakah anak dapat mengucapkan paling sedikit 3 kata yang mempunyai arti selain \"papa\" dan \"mama\"?'),
('QU075', 'RU08', 'CP01', 'Apakah anak berjalan mundur 5 langkah atau lebih tanpa kehilangan keseimbangan? (Anda mungkin dapat melihatnya ketika anak menarik mainannya)'),
('QU076', 'RU08', 'CP02', 'Dapatkah anak melepas pakaiannya seperti : Baju, Rok, atau celananya ?'),
('QU077', 'RU08', 'CP01', 'Dapatkah anak berjalan naik tangga sendiri? Jawab YA jika ia naik tangga dengan posisi tegak atau berpegangan pada dinding atau pegangan tangga. Jawab TIDAK jika ia naik tangga dengan merangkak atau a'),
('QU078', 'RU08', 'CP04', 'Dapatkah anak makan nasi sendiri tanpa banyak tumpah?'),
('QU079', 'RU08', 'CP03', 'Dapatkah anak  membantu memungt mainannya sendiri atau membantu mengangkat piring jika diminta?'),
('QU080', 'RU08', 'CP01', 'Letakkan bola tenis di depan kakinya. Apakah dia dapat menendangnya, tanpa berpegangan pada apapun?');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_pengetahuan`
--

CREATE TABLE `tbl_data_pengetahuan` (
  `id_pengetahuan` varchar(4) NOT NULL,
  `aspek_perkembangan` varchar(50) NOT NULL,
  `MB` varchar(15) NOT NULL,
  `MD` varchar(15) NOT NULL,
  `CFpakar` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_pengetahuan`
--

INSERT INTO `tbl_data_pengetahuan` (`id_pengetahuan`, `aspek_perkembangan`, `MB`, `MD`, `CFpakar`) VALUES
('CP01', 'Gerak Kasar', '0,7', '0,5', '0.2'),
('CP02', 'Gerak Halus', '0,7', '0,5', '0.2'),
('CP03', 'Bicara dan Bahasa', '0,8', '0,6', '0.2'),
('CP04', 'Sosialisasi dan Kemandirian', '0,6', '0,4', '0.2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_stimulasi`
--

CREATE TABLE `tbl_data_stimulasi` (
  `id_stimulasi` varchar(7) NOT NULL,
  `id_usia` varchar(4) NOT NULL,
  `id_pengetahuan` varchar(4) NOT NULL,
  `stimulasi` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_stimulasi`
--

INSERT INTO `tbl_data_stimulasi` (`id_stimulasi`, `id_usia`, `id_pengetahuan`, `stimulasi`) VALUES
('STM0001', 'RU01', 'CP01', 'Mengangkat Kepala 45°, letakkan bayi pada posisi telungkup. Gerakkan mainan atau buat suara-suara gembira didepan bayi sehingga ia akan belajar mengangkat kepalanya. Secara berangsur-angsur bayi akan menggunakan kedua lengannya untuk mengangkat kepala dan dadanya. Menahan kepala tetap tegak, gendong bayi dalam posisi tegak agar ia dapat belajar menahan kepalanya tetap tegak.   '),
('STM0002', 'RU01', 'CP02', 'Melihat, meraih dan menendang mainan gantung, gantungkan mainan/benda pada tali diatas bayi dengan jarak 30 cmatau sekitar 2 jengkal tangan orang dewasa, bayi akan tertarik dan melihat sehingga menggerakkan tangan dan kakinya sebagai reaksi, pastikan benda tersebut tidak bisa dimasukkan ke mulut bayi dan tidak akan terlepas dari ikatan'),
('STM0003', 'RU01', 'CP03', 'Mengajak bayi tersenyum, berbicara dan mengenali berbagai suara seperti suara orang, binatang, radio dan segalanya, tirukan ocehan bayi sesering mungkin agar terjadi komunikasi dan interaksi.'),
('STM0004', 'RU01', 'CP04', 'Peluk dan belai bayi sesering mungkin, ketika menidurkan bayi bersenandunglah dengan nada lembut dan penuh kasih sayang, meniru ocehan dan mimik wajah bayi, menenangkan bayi dengan mengayunkan bayi sambil bernyanyi, ajak bayi mengamati benda-benda dan keadaan sekitar.'),
('STM0005', 'RU02', 'CP01', 'Angkat badan bayi melalui bawah ketiaknya ke posisi berdiri. Perlahan-lahan turunkan badan bayi hingga kedua kaki menyentuh meja, tempat tidur atau pangkuan anda. Coba agar bayi mau mengayunkan badannya dengan gerakan naik turun serta menyangga sebagian berat badannya dengan kedua kaki bayi.'),
('STM0006', 'RU02', 'CP02', 'Letakkan sebuah mainan kecil yang berbunyi atau berwarna cerah di tangan bayi. Setelah bayi menggenggam mainan tersebut, tarik pelan-pelan untuk melatih bayi memegang benda dengan kuat.'),
('STM0007', 'RU02', 'CP03', 'Ketika berbicara dengan bayi, ulangi beberapa kata berkali-kali dan usahakan agar bayi menirukannya. Yang paling mudah ditirukan oleh bayi adalah kata yang menggunakan huruf vocal dan gerakan bibir. Contohnya: papa, mama, baba. '),
('STM0008', 'RU02', 'CP04', 'Bermain \"Cilluk-ba\" , Tutup wajah sampai tertutup semua bagian wajah anda dan buka secara tiba-tiba untuk dilihat bayi. Cara lain adalah mengintip bayi dari balik pintu atau tempat tidumya.'),
('STM0009', 'RU03', 'CP01', 'Ketika bayi telah mampu berdiri, letakkan mainan yang disukainya didepan bayi dan jangan terlalu jauh. Buat agar bayi mau berjalan berpegangan pada ranjangnya atau perabot rumah tangga untuk mencapai mainan tersebut. Letakkan sebuah mainan di luar jangkauan bayi, usahakan agar ia mau merangkak kearah mainan dengan menggunakan kedua tangan dan lututnya.'),
('STM0010', 'RU03', 'CP02', 'Sediakan krayon/pensil berwarna dan kertas bekas di atas meja. Dudukkan bayi dipangkuan anda, bantu bayi agar ia dapat memegang krayon/pensil dan ajarkan bagaimana mencoret-coret kertas. Buat mainan dari karton bekas/kotak/gelas plastik tertutup yang mengapung di air. Biarkan bayi main dengan mainan tersebut ketika mandi. Jangan biarkan bayi sendirian ketika mandi/main di air.'),
('STM0011', 'RU03', 'CP03', 'Pilih gambar-gambar menarik yang berwarna warni (misal : gambar binatang, kendaraan, meja, gelas dan sebagainya) dari buku/majalah bergambar yang sudah tidak terpakai. Sebut nama gambar yang anda tunjukkan kepada bayi. Lakukan stimulasi ini setiap hari dalam beberapa menit saja. Sebutkan dengan cara yang benar sesuai ejaan dan tidak cadel.'),
('STM0012', 'RU03', 'CP04', 'Ajak bayi bermain dengan orang lain. Ketika ayah pergi lambaikan tangan ke bayi sambil berkata “da...daag”. bantu bayi dengan gerakan membalas melambaikan tangannya. Setelah ia mengerti permainan tersebut, coba agar bayi mau menggerakkan tangannya sendiri ketika mengucapkan kata-kata seperti diatas.'),
('STM0013', 'RU04', 'CP01', 'Stimulasi yang perlu dilakukan:  Merangkak, Berdiri, Berjalan sambil berpegangan, Berjalan dengan bantuan'),
('STM0014', 'RU04', 'CP02', 'Ajari bayi menyusun beberapa balok/kotak besar. Balok/kotak dapat dibuat dari karton atau potongan-potongan kayu bekas. Benda lain yang bisa dipakai adalah beberapa kaleng kecil (kosong) atau mainan.'),
('STM0015', 'RU04', 'CP03', 'Setiap hari bicara kepada bayi. Sebutkan kata-kata yang telah diketahui artinya, seperti: minum susu, mandi, tidur, kue, makan, kucing dll. Buat agar bayi mau menirukan kata-kata tersebut. Bila bayi mau mengatakan, puji ia, kemudian sebutkan kata itu lagi dan buat agar ia mau mengulanginya.'),
('STM0016', 'RU04', 'CP04', 'Ajari bayi untuk mengambil sendiri mainan yang letaknya agak jauh dengan cara meraih, menarik ataupun mendorong badannya supaya dekat dengan mainan tersebut. Letakkan mainan yang bertali agak jauh, ajari bayi cara menarik tali untuk mendapatkan mainan tersebut. Simpan mainan bertali tersebut jika anda tidak dapat mengawasi bayi.'),
('STM0017', 'RU05', 'CP01', 'Bila anak sudah bisa merangkak naik dan melangkah turun tangga, ajari anak cara jalan naik tangga sambll berpegang an pada dinding atau pegangan tangga. Tetap bersama anak ketlka ia melakukan hal ini untuk pertama kalinya.'),
('STM0018', 'RU05', 'CP02', 'Ajari anak cara memasukkan benda¬ benda ke dalam wadah seperti kotak, pot bunga, botol dan lain-lain. Tunjukkan bagaimana mengeluarkannya dari wadah. Ajak anak bermain memasukkan dan mengeluarkan benda-benda tersebut.'),
('STM0019', 'RU05', 'CP03', 'Buat suara dari kaleng kue, kerincingan atau kayu pegangan sapu. ajak anak membuat suara dari barang yang dipilihnya misal memukul-mukul sendok ke kaleng, menggoyang-goyang kerincingan atau memukul-mukul potongan kayu, untuk menciptakan \"musik\".'),
('STM0020', 'RU05', 'CP04', 'Tunjukkan kepada anak cara melepas pakaiannya. Mula-mula bantu anak dengan cara membukakan kancing bajunya, melepas sepatunya, atau menarik kaus/blus meliwati kepala anak.'),
('STM0021', 'RU06', 'CP01', 'Menangkap dan melempar bola. Tunjukkan kepada anak cara melempar sebuah bola besar, kemudian cara menangkap bola tersebut. Bila anak bisa melempar bola ukuran besar, ajari anak melempar bola yang ukurannya lebih kecil.'),
('STM0022', 'RU06', 'CP02', 'Sediakan mangkuk atau kotak plastik dari berbagai ukuran. Tunjukkan kepada anak cara meletakkan mangkuk yang ukurannya lebih kecil ke mangkuk lebih besar. Buat agar anak mau melakukannya sendiri. Pilih benda-benda yang tidak pecah.'),
('STM0023', 'RU06', 'CP03', 'Simulasi yang perlu dilakukan:  Berbicara, menjawab pertanyaan, Menunjuk dan menyebutkan gambar-gambar.'),
('STM0024', 'RU06', 'CP04', 'Sering bawa anak ke tempat-tempat umum seperti: kebun binatang, pusat perbelanjaan, terminal bis, museum, stasiun kereta api, lapangan terbang, taman, tempat bermain dan sebagainya. Bicarakan mengenai benda-benda yang anda lihat.'),
('STM0025', 'RU07', 'CP01', 'Ajari anak cara berdiri dengan satu kaki secara bergantian. la mungkin perlu berpegangan kepada anda atau kursi ketika ia melakukan untuk pertama kalinya. Usahakan agar anak menjadi terbiasa dan dapat berdiri dengan seimbang dalam waktu yang lebih lama setiap kali ia mengulangi permainan ini.'),
('STM0026', 'RU07', 'CP02', 'Stimulasi yang perlu dilakukan :  Dorong agar anak mau main balok¬ balok, memasukkan benda yang satu ke dalam benda lainnya, Menggambar dengan crayon, spidol, pensil berwarna, Menggambar pakai tangan.'),
('STM0027', 'RU07', 'CP03', 'Biarkan anak melihat acara anak-anak di televisi.Dampingi anak dan bicarakan apa yang dilihatnya. Pilih acara yang bermutu dan sesuai dengan perkembangan anak dan batasi agar anak melihat televisi tidak lebih dari 1 jam sehari.'),
('STM0028', 'RU07', 'CP04', 'Usahakan agar anak bermain dengan teman sebaya misalnya bermain petak umpet. Dengan bermain seperti ini, anak akan belajar bagaimana mengikuti aturan permainan den giliran bermain dengan teman-temannya.'),
('STM0029', 'RU08', 'CP01', 'Mendorong mainan dengan kaki. Biarkan anak mencoba mainan yang perlu didorong dengan kakinya agar mainan itu dapat bergerak maju. GER'),
('STM0030', 'RU08', 'CP02', 'Bermain puzzle. Beri anak permainan puzzle sederhana, yang hanya terdiri dari 2-3 potong saja. Puzzle semacam itu dapat dibeli atau dibuat sendiri dari sepotong karton yang diberi gambar, kemudian dipotong-potong menjadi 2 atau 3 bagian.'),
('STM0031', 'RU08', 'CP03', 'Mengerjakan perintah sederhana mulai memberi perintah kepada anak.\"Tolong bawakan kaus kaki merah\",ATAU \"Letakkan cangkirmu di meja\". Tunjukkan kepada anak cara mengerjakan perintah tadi,gunakan kata¬ kata yang sederhana.'),
('STM0032', 'RU08', 'CP04', 'Biarkan anak memakai pakaiannya sendiri sejauh yang dapat dilakukannya. Setelah belajar lebih banyak mengenal hal ini, berangsur-angsur ia akan mau melakukan sendiri tanpa dibantu.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_user`
--

CREATE TABLE `tbl_data_user` (
  `id_user` varchar(7) NOT NULL,
  `nama_bayi` varchar(50) NOT NULL,
  `tanggal_lahir` varchar(30) NOT NULL,
  `id_usia` varchar(4) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `no_telp` varchar(30) NOT NULL,
  `alamat` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data_usia`
--

CREATE TABLE `tbl_data_usia` (
  `id_usia` varchar(4) NOT NULL,
  `usia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_data_usia`
--

INSERT INTO `tbl_data_usia` (`id_usia`, `usia`) VALUES
('RU01', '0 - 3'),
('RU02', '4 - 6'),
('RU03', '7 - 9'),
('RU04', '10 - 12'),
('RU05', '13 - 15'),
('RU06', '16 - 18'),
('RU07', '19 - 21'),
('RU08', '22 - 24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_data_detail_konsultasi`
--
ALTER TABLE `tbl_data_detail_konsultasi`
  ADD PRIMARY KEY (`id_detail_konsultasi`),
  ADD KEY `id_konsultasi` (`id_konsultasi`),
  ADD KEY `id_kueisoner` (`id_kueisoner`),
  ADD KEY `id_pengetahuan` (`id_pengetahuan`);

--
-- Indexes for table `tbl_data_konsultasi`
--
ALTER TABLE `tbl_data_konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_stimulasi` (`id_stimulasi`);

--
-- Indexes for table `tbl_data_kuesioner`
--
ALTER TABLE `tbl_data_kuesioner`
  ADD PRIMARY KEY (`id_kuesioner`),
  ADD KEY `id_usia` (`id_usia`);

--
-- Indexes for table `tbl_data_pengetahuan`
--
ALTER TABLE `tbl_data_pengetahuan`
  ADD PRIMARY KEY (`id_pengetahuan`);

--
-- Indexes for table `tbl_data_stimulasi`
--
ALTER TABLE `tbl_data_stimulasi`
  ADD PRIMARY KEY (`id_stimulasi`),
  ADD KEY `id_usia` (`id_usia`),
  ADD KEY `id_pengetahuan` (`id_pengetahuan`);

--
-- Indexes for table `tbl_data_user`
--
ALTER TABLE `tbl_data_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_usia` (`id_usia`);

--
-- Indexes for table `tbl_data_usia`
--
ALTER TABLE `tbl_data_usia`
  ADD PRIMARY KEY (`id_usia`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_data_konsultasi`
--
ALTER TABLE `tbl_data_konsultasi`
  MODIFY `id_konsultasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=381;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
