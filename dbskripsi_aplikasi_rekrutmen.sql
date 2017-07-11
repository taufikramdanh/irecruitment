-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2017 at 10:58 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbskripsi_aplikasi_rekrutmen`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `psikotest` varchar(255) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `nama`, `deskripsi`, `psikotest`, `status`) VALUES
(1, 'Mechanical Engineering', 'Mechanical Engineering', '', 'Aktif'),
(2, 'Networking', 'Networking', '', 'Aktif'),
(3, 'Online Marketing', 'Online Marketing Jobs', '', 'Aktif'),
(4, 'Animation', 'Animation Jobs', '', 'Aktif'),
(5, 'Design Engineer', 'Design Engineer Jobs', '', 'Aktif'),
(6, 'Analytics', 'Analytics Jobs', '', 'Aktif'),
(7, 'UI/UX', 'UI/UX Jobs', '', 'Aktif'),
(8, 'Marketing', 'Marketing Jobs', '', 'Aktif'),
(9, 'Banking', 'Banking Jobs', '', 'Aktif'),
(10, 'MBA', 'MBA Jobs', '', 'Aktif'),
(11, 'Teaching', 'Teaching Jobs', '', 'Aktif'),
(12, 'Accounting', 'Accounting Jobs', '', 'Aktif'),
(13, 'Retail', 'Retail Jobs', '', 'Aktif'),
(14, 'Merchandiser', 'Merchandiser Jobs', '', 'Aktif'),
(15, 'Architecture', 'Architecture Jobs', '', 'Aktif'),
(16, 'Banking Insurance', 'Banking Insurance Jobs', '', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `file_lamaran`
--

CREATE TABLE `file_lamaran` (
  `id` int(25) NOT NULL,
  `file_lamaran` varchar(250) NOT NULL,
  `id_people` int(25) NOT NULL,
  `tanggal_upload` datetime NOT NULL,
  `status_lamaran` varchar(25) NOT NULL,
  `tanggal_verifikasi` datetime NOT NULL,
  `keterangan` text NOT NULL,
  `verifikasi_id` int(11) NOT NULL,
  `lowongan_id` int(11) NOT NULL,
  `psikotest` varchar(255) NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file_lamaran`
--

INSERT INTO `file_lamaran` (`id`, `file_lamaran`, `id_people`, `tanggal_upload`, `status_lamaran`, `tanggal_verifikasi`, `keterangan`, `verifikasi_id`, `lowongan_id`, `psikotest`, `test_id`) VALUES
(28, 'Lamaran2832.pdf', 32, '2017-03-20 00:00:00', 'Diverifikasi', '2017-03-20 10:17:09', '', 1, 10, '', 1),
(29, '', 30, '2017-03-20 00:00:00', 'Diterima', '2017-03-20 10:23:42', 'Oke', 1, 10, '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama`, `deskripsi`, `status`) VALUES
(1, 'Kepala Bagian', 'Kepala Bagian', 'Aktif'),
(2, 'Koordinator', 'Koordinator Proyek', 'Aktif'),
(3, 'Staff ', 'Staff Khusus Bidang', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `id` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `province_id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`id`, `province_id`, `name`) VALUES
('1101', '11', 'KABUPATEN SIMEULUE'),
('1102', '11', 'KABUPATEN ACEH SINGKIL'),
('1103', '11', 'KABUPATEN ACEH SELATAN'),
('1104', '11', 'KABUPATEN ACEH TENGGARA'),
('1105', '11', 'KABUPATEN ACEH TIMUR'),
('1106', '11', 'KABUPATEN ACEH TENGAH'),
('1107', '11', 'KABUPATEN ACEH BARAT'),
('1108', '11', 'KABUPATEN ACEH BESAR'),
('1109', '11', 'KABUPATEN PIDIE'),
('1110', '11', 'KABUPATEN BIREUEN'),
('1111', '11', 'KABUPATEN ACEH UTARA'),
('1112', '11', 'KABUPATEN ACEH BARAT DAYA'),
('1113', '11', 'KABUPATEN GAYO LUES'),
('1114', '11', 'KABUPATEN ACEH TAMIANG'),
('1115', '11', 'KABUPATEN NAGAN RAYA'),
('1116', '11', 'KABUPATEN ACEH JAYA'),
('1117', '11', 'KABUPATEN BENER MERIAH'),
('1118', '11', 'KABUPATEN PIDIE JAYA'),
('1171', '11', 'KOTA BANDA ACEH'),
('1172', '11', 'KOTA SABANG'),
('1173', '11', 'KOTA LANGSA'),
('1174', '11', 'KOTA LHOKSEUMAWE'),
('1175', '11', 'KOTA SUBULUSSALAM'),
('1201', '12', 'KABUPATEN NIAS'),
('1202', '12', 'KABUPATEN MANDAILING NATAL'),
('1203', '12', 'KABUPATEN TAPANULI SELATAN'),
('1204', '12', 'KABUPATEN TAPANULI TENGAH'),
('1205', '12', 'KABUPATEN TAPANULI UTARA'),
('1206', '12', 'KABUPATEN TOBA SAMOSIR'),
('1207', '12', 'KABUPATEN LABUHAN BATU'),
('1208', '12', 'KABUPATEN ASAHAN'),
('1209', '12', 'KABUPATEN SIMALUNGUN'),
('1210', '12', 'KABUPATEN DAIRI'),
('1211', '12', 'KABUPATEN KARO'),
('1212', '12', 'KABUPATEN DELI SERDANG'),
('1213', '12', 'KABUPATEN LANGKAT'),
('1214', '12', 'KABUPATEN NIAS SELATAN'),
('1215', '12', 'KABUPATEN HUMBANG HASUNDUTAN'),
('1216', '12', 'KABUPATEN PAKPAK BHARAT'),
('1217', '12', 'KABUPATEN SAMOSIR'),
('1218', '12', 'KABUPATEN SERDANG BEDAGAI'),
('1219', '12', 'KABUPATEN BATU BARA'),
('1220', '12', 'KABUPATEN PADANG LAWAS UTARA'),
('1221', '12', 'KABUPATEN PADANG LAWAS'),
('1222', '12', 'KABUPATEN LABUHAN BATU SELATAN'),
('1223', '12', 'KABUPATEN LABUHAN BATU UTARA'),
('1224', '12', 'KABUPATEN NIAS UTARA'),
('1225', '12', 'KABUPATEN NIAS BARAT'),
('1271', '12', 'KOTA SIBOLGA'),
('1272', '12', 'KOTA TANJUNG BALAI'),
('1273', '12', 'KOTA PEMATANG SIANTAR'),
('1274', '12', 'KOTA TEBING TINGGI'),
('1275', '12', 'KOTA MEDAN'),
('1276', '12', 'KOTA BINJAI'),
('1277', '12', 'KOTA PADANGSIDIMPUAN'),
('1278', '12', 'KOTA GUNUNGSITOLI'),
('1301', '13', 'KABUPATEN KEPULAUAN MENTAWAI'),
('1302', '13', 'KABUPATEN PESISIR SELATAN'),
('1303', '13', 'KABUPATEN SOLOK'),
('1304', '13', 'KABUPATEN SIJUNJUNG'),
('1305', '13', 'KABUPATEN TANAH DATAR'),
('1306', '13', 'KABUPATEN PADANG PARIAMAN'),
('1307', '13', 'KABUPATEN AGAM'),
('1308', '13', 'KABUPATEN LIMA PULUH KOTA'),
('1309', '13', 'KABUPATEN PASAMAN'),
('1310', '13', 'KABUPATEN SOLOK SELATAN'),
('1311', '13', 'KABUPATEN DHARMASRAYA'),
('1312', '13', 'KABUPATEN PASAMAN BARAT'),
('1371', '13', 'KOTA PADANG'),
('1372', '13', 'KOTA SOLOK'),
('1373', '13', 'KOTA SAWAH LUNTO'),
('1374', '13', 'KOTA PADANG PANJANG'),
('1375', '13', 'KOTA BUKITTINGGI'),
('1376', '13', 'KOTA PAYAKUMBUH'),
('1377', '13', 'KOTA PARIAMAN'),
('1401', '14', 'KABUPATEN KUANTAN SINGINGI'),
('1402', '14', 'KABUPATEN INDRAGIRI HULU'),
('1403', '14', 'KABUPATEN INDRAGIRI HILIR'),
('1404', '14', 'KABUPATEN PELALAWAN'),
('1405', '14', 'KABUPATEN S I A K'),
('1406', '14', 'KABUPATEN KAMPAR'),
('1407', '14', 'KABUPATEN ROKAN HULU'),
('1408', '14', 'KABUPATEN BENGKALIS'),
('1409', '14', 'KABUPATEN ROKAN HILIR'),
('1410', '14', 'KABUPATEN KEPULAUAN MERANTI'),
('1471', '14', 'KOTA PEKANBARU'),
('1473', '14', 'KOTA D U M A I'),
('1501', '15', 'KABUPATEN KERINCI'),
('1502', '15', 'KABUPATEN MERANGIN'),
('1503', '15', 'KABUPATEN SAROLANGUN'),
('1504', '15', 'KABUPATEN BATANG HARI'),
('1505', '15', 'KABUPATEN MUARO JAMBI'),
('1506', '15', 'KABUPATEN TANJUNG JABUNG TIMUR'),
('1507', '15', 'KABUPATEN TANJUNG JABUNG BARAT'),
('1508', '15', 'KABUPATEN TEBO'),
('1509', '15', 'KABUPATEN BUNGO'),
('1571', '15', 'KOTA JAMBI'),
('1572', '15', 'KOTA SUNGAI PENUH'),
('1601', '16', 'KABUPATEN OGAN KOMERING ULU'),
('1602', '16', 'KABUPATEN OGAN KOMERING ILIR'),
('1603', '16', 'KABUPATEN MUARA ENIM'),
('1604', '16', 'KABUPATEN LAHAT'),
('1605', '16', 'KABUPATEN MUSI RAWAS'),
('1606', '16', 'KABUPATEN MUSI BANYUASIN'),
('1607', '16', 'KABUPATEN BANYU ASIN'),
('1608', '16', 'KABUPATEN OGAN KOMERING ULU SELATAN'),
('1609', '16', 'KABUPATEN OGAN KOMERING ULU TIMUR'),
('1610', '16', 'KABUPATEN OGAN ILIR'),
('1611', '16', 'KABUPATEN EMPAT LAWANG'),
('1612', '16', 'KABUPATEN PENUKAL ABAB LEMATANG ILIR'),
('1613', '16', 'KABUPATEN MUSI RAWAS UTARA'),
('1671', '16', 'KOTA PALEMBANG'),
('1672', '16', 'KOTA PRABUMULIH'),
('1673', '16', 'KOTA PAGAR ALAM'),
('1674', '16', 'KOTA LUBUKLINGGAU'),
('1701', '17', 'KABUPATEN BENGKULU SELATAN'),
('1702', '17', 'KABUPATEN REJANG LEBONG'),
('1703', '17', 'KABUPATEN BENGKULU UTARA'),
('1704', '17', 'KABUPATEN KAUR'),
('1705', '17', 'KABUPATEN SELUMA'),
('1706', '17', 'KABUPATEN MUKOMUKO'),
('1707', '17', 'KABUPATEN LEBONG'),
('1708', '17', 'KABUPATEN KEPAHIANG'),
('1709', '17', 'KABUPATEN BENGKULU TENGAH'),
('1771', '17', 'KOTA BENGKULU'),
('1801', '18', 'KABUPATEN LAMPUNG BARAT'),
('1802', '18', 'KABUPATEN TANGGAMUS'),
('1803', '18', 'KABUPATEN LAMPUNG SELATAN'),
('1804', '18', 'KABUPATEN LAMPUNG TIMUR'),
('1805', '18', 'KABUPATEN LAMPUNG TENGAH'),
('1806', '18', 'KABUPATEN LAMPUNG UTARA'),
('1807', '18', 'KABUPATEN WAY KANAN'),
('1808', '18', 'KABUPATEN TULANGBAWANG'),
('1809', '18', 'KABUPATEN PESAWARAN'),
('1810', '18', 'KABUPATEN PRINGSEWU'),
('1811', '18', 'KABUPATEN MESUJI'),
('1812', '18', 'KABUPATEN TULANG BAWANG BARAT'),
('1813', '18', 'KABUPATEN PESISIR BARAT'),
('1871', '18', 'KOTA BANDAR LAMPUNG'),
('1872', '18', 'KOTA METRO'),
('1901', '19', 'KABUPATEN BANGKA'),
('1902', '19', 'KABUPATEN BELITUNG'),
('1903', '19', 'KABUPATEN BANGKA BARAT'),
('1904', '19', 'KABUPATEN BANGKA TENGAH'),
('1905', '19', 'KABUPATEN BANGKA SELATAN'),
('1906', '19', 'KABUPATEN BELITUNG TIMUR'),
('1971', '19', 'KOTA PANGKAL PINANG'),
('2101', '21', 'KABUPATEN KARIMUN'),
('2102', '21', 'KABUPATEN BINTAN'),
('2103', '21', 'KABUPATEN NATUNA'),
('2104', '21', 'KABUPATEN LINGGA'),
('2105', '21', 'KABUPATEN KEPULAUAN ANAMBAS'),
('2171', '21', 'KOTA B A T A M'),
('2172', '21', 'KOTA TANJUNG PINANG'),
('3101', '31', 'KABUPATEN KEPULAUAN SERIBU'),
('3171', '31', 'KOTA JAKARTA SELATAN'),
('3172', '31', 'KOTA JAKARTA TIMUR'),
('3173', '31', 'KOTA JAKARTA PUSAT'),
('3174', '31', 'KOTA JAKARTA BARAT'),
('3175', '31', 'KOTA JAKARTA UTARA'),
('3201', '32', 'KABUPATEN BOGOR'),
('3202', '32', 'KABUPATEN SUKABUMI'),
('3203', '32', 'KABUPATEN CIANJUR'),
('3204', '32', 'KABUPATEN BANDUNG'),
('3205', '32', 'KABUPATEN GARUT'),
('3206', '32', 'KABUPATEN TASIKMALAYA'),
('3207', '32', 'KABUPATEN CIAMIS'),
('3208', '32', 'KABUPATEN KUNINGAN'),
('3209', '32', 'KABUPATEN CIREBON'),
('3210', '32', 'KABUPATEN MAJALENGKA'),
('3211', '32', 'KABUPATEN SUMEDANG'),
('3212', '32', 'KABUPATEN INDRAMAYU'),
('3213', '32', 'KABUPATEN SUBANG'),
('3214', '32', 'KABUPATEN PURWAKARTA'),
('3215', '32', 'KABUPATEN KARAWANG'),
('3216', '32', 'KABUPATEN BEKASI'),
('3217', '32', 'KABUPATEN BANDUNG BARAT'),
('3218', '32', 'KABUPATEN PANGANDARAN'),
('3271', '32', 'KOTA BOGOR'),
('3272', '32', 'KOTA SUKABUMI'),
('3273', '32', 'KOTA BANDUNG'),
('3274', '32', 'KOTA CIREBON'),
('3275', '32', 'KOTA BEKASI'),
('3276', '32', 'KOTA DEPOK'),
('3277', '32', 'KOTA CIMAHI'),
('3278', '32', 'KOTA TASIKMALAYA'),
('3279', '32', 'KOTA BANJAR'),
('3301', '33', 'KABUPATEN CILACAP'),
('3302', '33', 'KABUPATEN BANYUMAS'),
('3303', '33', 'KABUPATEN PURBALINGGA'),
('3304', '33', 'KABUPATEN BANJARNEGARA'),
('3305', '33', 'KABUPATEN KEBUMEN'),
('3306', '33', 'KABUPATEN PURWOREJO'),
('3307', '33', 'KABUPATEN WONOSOBO'),
('3308', '33', 'KABUPATEN MAGELANG'),
('3309', '33', 'KABUPATEN BOYOLALI'),
('3310', '33', 'KABUPATEN KLATEN'),
('3311', '33', 'KABUPATEN SUKOHARJO'),
('3312', '33', 'KABUPATEN WONOGIRI'),
('3313', '33', 'KABUPATEN KARANGANYAR'),
('3314', '33', 'KABUPATEN SRAGEN'),
('3315', '33', 'KABUPATEN GROBOGAN'),
('3316', '33', 'KABUPATEN BLORA'),
('3317', '33', 'KABUPATEN REMBANG'),
('3318', '33', 'KABUPATEN PATI'),
('3319', '33', 'KABUPATEN KUDUS'),
('3320', '33', 'KABUPATEN JEPARA'),
('3321', '33', 'KABUPATEN DEMAK'),
('3322', '33', 'KABUPATEN SEMARANG'),
('3323', '33', 'KABUPATEN TEMANGGUNG'),
('3324', '33', 'KABUPATEN KENDAL'),
('3325', '33', 'KABUPATEN BATANG'),
('3326', '33', 'KABUPATEN PEKALONGAN'),
('3327', '33', 'KABUPATEN PEMALANG'),
('3328', '33', 'KABUPATEN TEGAL'),
('3329', '33', 'KABUPATEN BREBES'),
('3371', '33', 'KOTA MAGELANG'),
('3372', '33', 'KOTA SURAKARTA'),
('3373', '33', 'KOTA SALATIGA'),
('3374', '33', 'KOTA SEMARANG'),
('3375', '33', 'KOTA PEKALONGAN'),
('3376', '33', 'KOTA TEGAL'),
('3401', '34', 'KABUPATEN KULON PROGO'),
('3402', '34', 'KABUPATEN BANTUL'),
('3403', '34', 'KABUPATEN GUNUNG KIDUL'),
('3404', '34', 'KABUPATEN SLEMAN'),
('3471', '34', 'KOTA YOGYAKARTA'),
('3501', '35', 'KABUPATEN PACITAN'),
('3502', '35', 'KABUPATEN PONOROGO'),
('3503', '35', 'KABUPATEN TRENGGALEK'),
('3504', '35', 'KABUPATEN TULUNGAGUNG'),
('3505', '35', 'KABUPATEN BLITAR'),
('3506', '35', 'KABUPATEN KEDIRI'),
('3507', '35', 'KABUPATEN MALANG'),
('3508', '35', 'KABUPATEN LUMAJANG'),
('3509', '35', 'KABUPATEN JEMBER'),
('3510', '35', 'KABUPATEN BANYUWANGI'),
('3511', '35', 'KABUPATEN BONDOWOSO'),
('3512', '35', 'KABUPATEN SITUBONDO'),
('3513', '35', 'KABUPATEN PROBOLINGGO'),
('3514', '35', 'KABUPATEN PASURUAN'),
('3515', '35', 'KABUPATEN SIDOARJO'),
('3516', '35', 'KABUPATEN MOJOKERTO'),
('3517', '35', 'KABUPATEN JOMBANG'),
('3518', '35', 'KABUPATEN NGANJUK'),
('3519', '35', 'KABUPATEN MADIUN'),
('3520', '35', 'KABUPATEN MAGETAN'),
('3521', '35', 'KABUPATEN NGAWI'),
('3522', '35', 'KABUPATEN BOJONEGORO'),
('3523', '35', 'KABUPATEN TUBAN'),
('3524', '35', 'KABUPATEN LAMONGAN'),
('3525', '35', 'KABUPATEN GRESIK'),
('3526', '35', 'KABUPATEN BANGKALAN'),
('3527', '35', 'KABUPATEN SAMPANG'),
('3528', '35', 'KABUPATEN PAMEKASAN'),
('3529', '35', 'KABUPATEN SUMENEP'),
('3571', '35', 'KOTA KEDIRI'),
('3572', '35', 'KOTA BLITAR'),
('3573', '35', 'KOTA MALANG'),
('3574', '35', 'KOTA PROBOLINGGO'),
('3575', '35', 'KOTA PASURUAN'),
('3576', '35', 'KOTA MOJOKERTO'),
('3577', '35', 'KOTA MADIUN'),
('3578', '35', 'KOTA SURABAYA'),
('3579', '35', 'KOTA BATU'),
('3601', '36', 'KABUPATEN PANDEGLANG'),
('3602', '36', 'KABUPATEN LEBAK'),
('3603', '36', 'KABUPATEN TANGERANG'),
('3604', '36', 'KABUPATEN SERANG'),
('3671', '36', 'KOTA TANGERANG'),
('3672', '36', 'KOTA CILEGON'),
('3673', '36', 'KOTA SERANG'),
('3674', '36', 'KOTA TANGERANG SELATAN'),
('5101', '51', 'KABUPATEN JEMBRANA'),
('5102', '51', 'KABUPATEN TABANAN'),
('5103', '51', 'KABUPATEN BADUNG'),
('5104', '51', 'KABUPATEN GIANYAR'),
('5105', '51', 'KABUPATEN KLUNGKUNG'),
('5106', '51', 'KABUPATEN BANGLI'),
('5107', '51', 'KABUPATEN KARANG ASEM'),
('5108', '51', 'KABUPATEN BULELENG'),
('5171', '51', 'KOTA DENPASAR'),
('5201', '52', 'KABUPATEN LOMBOK BARAT'),
('5202', '52', 'KABUPATEN LOMBOK TENGAH'),
('5203', '52', 'KABUPATEN LOMBOK TIMUR'),
('5204', '52', 'KABUPATEN SUMBAWA'),
('5205', '52', 'KABUPATEN DOMPU'),
('5206', '52', 'KABUPATEN BIMA'),
('5207', '52', 'KABUPATEN SUMBAWA BARAT'),
('5208', '52', 'KABUPATEN LOMBOK UTARA'),
('5271', '52', 'KOTA MATARAM'),
('5272', '52', 'KOTA BIMA'),
('5301', '53', 'KABUPATEN SUMBA BARAT'),
('5302', '53', 'KABUPATEN SUMBA TIMUR'),
('5303', '53', 'KABUPATEN KUPANG'),
('5304', '53', 'KABUPATEN TIMOR TENGAH SELATAN'),
('5305', '53', 'KABUPATEN TIMOR TENGAH UTARA'),
('5306', '53', 'KABUPATEN BELU'),
('5307', '53', 'KABUPATEN ALOR'),
('5308', '53', 'KABUPATEN LEMBATA'),
('5309', '53', 'KABUPATEN FLORES TIMUR'),
('5310', '53', 'KABUPATEN SIKKA'),
('5311', '53', 'KABUPATEN ENDE'),
('5312', '53', 'KABUPATEN NGADA'),
('5313', '53', 'KABUPATEN MANGGARAI'),
('5314', '53', 'KABUPATEN ROTE NDAO'),
('5315', '53', 'KABUPATEN MANGGARAI BARAT'),
('5316', '53', 'KABUPATEN SUMBA TENGAH'),
('5317', '53', 'KABUPATEN SUMBA BARAT DAYA'),
('5318', '53', 'KABUPATEN NAGEKEO'),
('5319', '53', 'KABUPATEN MANGGARAI TIMUR'),
('5320', '53', 'KABUPATEN SABU RAIJUA'),
('5321', '53', 'KABUPATEN MALAKA'),
('5371', '53', 'KOTA KUPANG'),
('6101', '61', 'KABUPATEN SAMBAS'),
('6102', '61', 'KABUPATEN BENGKAYANG'),
('6103', '61', 'KABUPATEN LANDAK'),
('6104', '61', 'KABUPATEN MEMPAWAH'),
('6105', '61', 'KABUPATEN SANGGAU'),
('6106', '61', 'KABUPATEN KETAPANG'),
('6107', '61', 'KABUPATEN SINTANG'),
('6108', '61', 'KABUPATEN KAPUAS HULU'),
('6109', '61', 'KABUPATEN SEKADAU'),
('6110', '61', 'KABUPATEN MELAWI'),
('6111', '61', 'KABUPATEN KAYONG UTARA'),
('6112', '61', 'KABUPATEN KUBU RAYA'),
('6171', '61', 'KOTA PONTIANAK'),
('6172', '61', 'KOTA SINGKAWANG'),
('6201', '62', 'KABUPATEN KOTAWARINGIN BARAT'),
('6202', '62', 'KABUPATEN KOTAWARINGIN TIMUR'),
('6203', '62', 'KABUPATEN KAPUAS'),
('6204', '62', 'KABUPATEN BARITO SELATAN'),
('6205', '62', 'KABUPATEN BARITO UTARA'),
('6206', '62', 'KABUPATEN SUKAMARA'),
('6207', '62', 'KABUPATEN LAMANDAU'),
('6208', '62', 'KABUPATEN SERUYAN'),
('6209', '62', 'KABUPATEN KATINGAN'),
('6210', '62', 'KABUPATEN PULANG PISAU'),
('6211', '62', 'KABUPATEN GUNUNG MAS'),
('6212', '62', 'KABUPATEN BARITO TIMUR'),
('6213', '62', 'KABUPATEN MURUNG RAYA'),
('6271', '62', 'KOTA PALANGKA RAYA'),
('6301', '63', 'KABUPATEN TANAH LAUT'),
('6302', '63', 'KABUPATEN KOTA BARU'),
('6303', '63', 'KABUPATEN BANJAR'),
('6304', '63', 'KABUPATEN BARITO KUALA'),
('6305', '63', 'KABUPATEN TAPIN'),
('6306', '63', 'KABUPATEN HULU SUNGAI SELATAN'),
('6307', '63', 'KABUPATEN HULU SUNGAI TENGAH'),
('6308', '63', 'KABUPATEN HULU SUNGAI UTARA'),
('6309', '63', 'KABUPATEN TABALONG'),
('6310', '63', 'KABUPATEN TANAH BUMBU'),
('6311', '63', 'KABUPATEN BALANGAN'),
('6371', '63', 'KOTA BANJARMASIN'),
('6372', '63', 'KOTA BANJAR BARU'),
('6401', '64', 'KABUPATEN PASER'),
('6402', '64', 'KABUPATEN KUTAI BARAT'),
('6403', '64', 'KABUPATEN KUTAI KARTANEGARA'),
('6404', '64', 'KABUPATEN KUTAI TIMUR'),
('6405', '64', 'KABUPATEN BERAU'),
('6409', '64', 'KABUPATEN PENAJAM PASER UTARA'),
('6411', '64', 'KABUPATEN MAHAKAM HULU'),
('6471', '64', 'KOTA BALIKPAPAN'),
('6472', '64', 'KOTA SAMARINDA'),
('6474', '64', 'KOTA BONTANG'),
('6501', '65', 'KABUPATEN MALINAU'),
('6502', '65', 'KABUPATEN BULUNGAN'),
('6503', '65', 'KABUPATEN TANA TIDUNG'),
('6504', '65', 'KABUPATEN NUNUKAN'),
('6571', '65', 'KOTA TARAKAN'),
('7101', '71', 'KABUPATEN BOLAANG MONGONDOW'),
('7102', '71', 'KABUPATEN MINAHASA'),
('7103', '71', 'KABUPATEN KEPULAUAN SANGIHE'),
('7104', '71', 'KABUPATEN KEPULAUAN TALAUD'),
('7105', '71', 'KABUPATEN MINAHASA SELATAN'),
('7106', '71', 'KABUPATEN MINAHASA UTARA'),
('7107', '71', 'KABUPATEN BOLAANG MONGONDOW UTARA'),
('7108', '71', 'KABUPATEN SIAU TAGULANDANG BIARO'),
('7109', '71', 'KABUPATEN MINAHASA TENGGARA'),
('7110', '71', 'KABUPATEN BOLAANG MONGONDOW SELATAN'),
('7111', '71', 'KABUPATEN BOLAANG MONGONDOW TIMUR'),
('7171', '71', 'KOTA MANADO'),
('7172', '71', 'KOTA BITUNG'),
('7173', '71', 'KOTA TOMOHON'),
('7174', '71', 'KOTA KOTAMOBAGU'),
('7201', '72', 'KABUPATEN BANGGAI KEPULAUAN'),
('7202', '72', 'KABUPATEN BANGGAI'),
('7203', '72', 'KABUPATEN MOROWALI'),
('7204', '72', 'KABUPATEN POSO'),
('7205', '72', 'KABUPATEN DONGGALA'),
('7206', '72', 'KABUPATEN TOLI-TOLI'),
('7207', '72', 'KABUPATEN BUOL'),
('7208', '72', 'KABUPATEN PARIGI MOUTONG'),
('7209', '72', 'KABUPATEN TOJO UNA-UNA'),
('7210', '72', 'KABUPATEN SIGI'),
('7211', '72', 'KABUPATEN BANGGAI LAUT'),
('7212', '72', 'KABUPATEN MOROWALI UTARA'),
('7271', '72', 'KOTA PALU'),
('7301', '73', 'KABUPATEN KEPULAUAN SELAYAR'),
('7302', '73', 'KABUPATEN BULUKUMBA'),
('7303', '73', 'KABUPATEN BANTAENG'),
('7304', '73', 'KABUPATEN JENEPONTO'),
('7305', '73', 'KABUPATEN TAKALAR'),
('7306', '73', 'KABUPATEN GOWA'),
('7307', '73', 'KABUPATEN SINJAI'),
('7308', '73', 'KABUPATEN MAROS'),
('7309', '73', 'KABUPATEN PANGKAJENE DAN KEPULAUAN'),
('7310', '73', 'KABUPATEN BARRU'),
('7311', '73', 'KABUPATEN BONE'),
('7312', '73', 'KABUPATEN SOPPENG'),
('7313', '73', 'KABUPATEN WAJO'),
('7314', '73', 'KABUPATEN SIDENRENG RAPPANG'),
('7315', '73', 'KABUPATEN PINRANG'),
('7316', '73', 'KABUPATEN ENREKANG'),
('7317', '73', 'KABUPATEN LUWU'),
('7318', '73', 'KABUPATEN TANA TORAJA'),
('7322', '73', 'KABUPATEN LUWU UTARA'),
('7325', '73', 'KABUPATEN LUWU TIMUR'),
('7326', '73', 'KABUPATEN TORAJA UTARA'),
('7371', '73', 'KOTA MAKASSAR'),
('7372', '73', 'KOTA PAREPARE'),
('7373', '73', 'KOTA PALOPO'),
('7401', '74', 'KABUPATEN BUTON'),
('7402', '74', 'KABUPATEN MUNA'),
('7403', '74', 'KABUPATEN KONAWE'),
('7404', '74', 'KABUPATEN KOLAKA'),
('7405', '74', 'KABUPATEN KONAWE SELATAN'),
('7406', '74', 'KABUPATEN BOMBANA'),
('7407', '74', 'KABUPATEN WAKATOBI'),
('7408', '74', 'KABUPATEN KOLAKA UTARA'),
('7409', '74', 'KABUPATEN BUTON UTARA'),
('7410', '74', 'KABUPATEN KONAWE UTARA'),
('7411', '74', 'KABUPATEN KOLAKA TIMUR'),
('7412', '74', 'KABUPATEN KONAWE KEPULAUAN'),
('7413', '74', 'KABUPATEN MUNA BARAT'),
('7414', '74', 'KABUPATEN BUTON TENGAH'),
('7415', '74', 'KABUPATEN BUTON SELATAN'),
('7471', '74', 'KOTA KENDARI'),
('7472', '74', 'KOTA BAUBAU'),
('7501', '75', 'KABUPATEN BOALEMO'),
('7502', '75', 'KABUPATEN GORONTALO'),
('7503', '75', 'KABUPATEN POHUWATO'),
('7504', '75', 'KABUPATEN BONE BOLANGO'),
('7505', '75', 'KABUPATEN GORONTALO UTARA'),
('7571', '75', 'KOTA GORONTALO'),
('7601', '76', 'KABUPATEN MAJENE'),
('7602', '76', 'KABUPATEN POLEWALI MANDAR'),
('7603', '76', 'KABUPATEN MAMASA'),
('7604', '76', 'KABUPATEN MAMUJU'),
('7605', '76', 'KABUPATEN MAMUJU UTARA'),
('7606', '76', 'KABUPATEN MAMUJU TENGAH'),
('8101', '81', 'KABUPATEN MALUKU TENGGARA BARAT'),
('8102', '81', 'KABUPATEN MALUKU TENGGARA'),
('8103', '81', 'KABUPATEN MALUKU TENGAH'),
('8104', '81', 'KABUPATEN BURU'),
('8105', '81', 'KABUPATEN KEPULAUAN ARU'),
('8106', '81', 'KABUPATEN SERAM BAGIAN BARAT'),
('8107', '81', 'KABUPATEN SERAM BAGIAN TIMUR'),
('8108', '81', 'KABUPATEN MALUKU BARAT DAYA'),
('8109', '81', 'KABUPATEN BURU SELATAN'),
('8171', '81', 'KOTA AMBON'),
('8172', '81', 'KOTA TUAL'),
('8201', '82', 'KABUPATEN HALMAHERA BARAT'),
('8202', '82', 'KABUPATEN HALMAHERA TENGAH'),
('8203', '82', 'KABUPATEN KEPULAUAN SULA'),
('8204', '82', 'KABUPATEN HALMAHERA SELATAN'),
('8205', '82', 'KABUPATEN HALMAHERA UTARA'),
('8206', '82', 'KABUPATEN HALMAHERA TIMUR'),
('8207', '82', 'KABUPATEN PULAU MOROTAI'),
('8208', '82', 'KABUPATEN PULAU TALIABU'),
('8271', '82', 'KOTA TERNATE'),
('8272', '82', 'KOTA TIDORE KEPULAUAN'),
('9101', '91', 'KABUPATEN FAKFAK'),
('9102', '91', 'KABUPATEN KAIMANA'),
('9103', '91', 'KABUPATEN TELUK WONDAMA'),
('9104', '91', 'KABUPATEN TELUK BINTUNI'),
('9105', '91', 'KABUPATEN MANOKWARI'),
('9106', '91', 'KABUPATEN SORONG SELATAN'),
('9107', '91', 'KABUPATEN SORONG'),
('9108', '91', 'KABUPATEN RAJA AMPAT'),
('9109', '91', 'KABUPATEN TAMBRAUW'),
('9110', '91', 'KABUPATEN MAYBRAT'),
('9111', '91', 'KABUPATEN MANOKWARI SELATAN'),
('9112', '91', 'KABUPATEN PEGUNUNGAN ARFAK'),
('9171', '91', 'KOTA SORONG'),
('9401', '94', 'KABUPATEN MERAUKE'),
('9402', '94', 'KABUPATEN JAYAWIJAYA'),
('9403', '94', 'KABUPATEN JAYAPURA'),
('9404', '94', 'KABUPATEN NABIRE'),
('9408', '94', 'KABUPATEN KEPULAUAN YAPEN'),
('9409', '94', 'KABUPATEN BIAK NUMFOR'),
('9410', '94', 'KABUPATEN PANIAI'),
('9411', '94', 'KABUPATEN PUNCAK JAYA'),
('9412', '94', 'KABUPATEN MIMIKA'),
('9413', '94', 'KABUPATEN BOVEN DIGOEL'),
('9414', '94', 'KABUPATEN MAPPI'),
('9415', '94', 'KABUPATEN ASMAT'),
('9416', '94', 'KABUPATEN YAHUKIMO'),
('9417', '94', 'KABUPATEN PEGUNUNGAN BINTANG'),
('9418', '94', 'KABUPATEN TOLIKARA'),
('9419', '94', 'KABUPATEN SARMI'),
('9420', '94', 'KABUPATEN KEEROM'),
('9426', '94', 'KABUPATEN WAROPEN'),
('9427', '94', 'KABUPATEN SUPIORI'),
('9428', '94', 'KABUPATEN MAMBERAMO RAYA'),
('9429', '94', 'KABUPATEN NDUGA'),
('9430', '94', 'KABUPATEN LANNY JAYA'),
('9431', '94', 'KABUPATEN MAMBERAMO TENGAH'),
('9432', '94', 'KABUPATEN YALIMO'),
('9433', '94', 'KABUPATEN PUNCAK'),
('9434', '94', 'KABUPATEN DOGIYAI'),
('9435', '94', 'KABUPATEN INTAN JAYA'),
('9436', '94', 'KABUPATEN DEIYAI'),
('9471', '94', 'KOTA JAYAPURA');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `level_ID` int(10) NOT NULL,
  `level` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`level_ID`, `level`) VALUES
(1, 'Administrator'),
(2, 'Pelamar'),
(3, 'Atasan');

-- --------------------------------------------------------

--
-- Table structure for table `lowongan`
--

CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `bagian` int(11) NOT NULL,
  `jabatan` int(11) NOT NULL,
  `tipe` int(11) NOT NULL,
  `deskripsi_pekerjaan` text NOT NULL,
  `deskripsi_kebutuhan` text NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `tanggal_kebutuhan` date NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `jeniskelamin` varchar(2) NOT NULL,
  `umur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lowongan`
--

INSERT INTO `lowongan` (`id_lowongan`, `tanggal`, `bagian`, `jabatan`, `tipe`, `deskripsi_pekerjaan`, `deskripsi_kebutuhan`, `jumlah_orang`, `tanggal_kebutuhan`, `lokasi`, `status`, `jeniskelamin`, `umur`) VALUES
(1, '2017-03-17', 1, 3, 1, 'Membuat dan merekan administrasi', 'SMK/ D3/ S1', 6, '2017-04-13', 'Soreang, Bandung, West Java, Indonesia', 1, 'L', 35),
(2, '2017-03-17', 3, 2, 1, 'Membuat Desain Brosur dan Pamplet', 'Menguasasi CorelDraw, Photoshop, Adobe Illustrator.', 7, '2017-05-28', 'Banjaran, Bandung, West Java, Indonesia', 1, 'P', 25),
(3, '2017-03-17', 1, 1, 1, 'Menguasai Softskill dan Konseptual.', 'Magister Administrasi', 10, '2017-05-10', 'Majalaya, Bandung, West Java, Indonesia', 1, 'L', 35),
(4, '2017-03-17', 3, 1, 1, 'Membuat Desain Animasi 3D', 'S2 Desain Komunikasi Visual', 5, '2017-05-14', 'Jakarta, Special Capital Region of Jakarta, Indonesia', 1, 'P', 25),
(5, '2017-03-17', 1, 2, 1, 'Membuat Desain Brosur dan Pamplet', 'Menguasai CSS, HTML, PHOTOSHOP, CORELDRAW', 5, '2017-03-13', 'Bandung', 1, 'L', 20),
(6, '2017-03-17', 3, 1, 1, 'Merancang Desain', 'Menguasai CSS, HTML, PHOTOSHOP, CORELDRAW', 8, '2017-05-30', 'Soreang, Bandung, West Java, Indonesia', 1, 'P', 25),
(8, '2017-03-13', 3, 1, 1, 'Merancang Desain 2', 'Menguasai CSS, HTML, PHOTOSHOP, CORELDRAW', 5, '2017-04-30', 'Soreang, Bandung, West Java, Indonesia', 1, 'L', 25),
(9, '2017-03-13', 2, 2, 1, 'Membuat Desain Animasi 3D', 'Menguasai CSS, HTML, PHOTOSHOP, CORELDRAW', 4, '2017-03-31', 'Bandung, Bandung City, West Java, Indonesia', 1, 'P', 30),
(10, '2017-03-13', 1, 1, 1, 'Membuat Desain Animasi 3D', 'Menguasasi CorelDraw, Photoshop, Adobe Illustrator.', 2, '2017-03-31', 'Jakarta, Indonesia', 1, 'L', 35);

-- --------------------------------------------------------

--
-- Table structure for table `pelamar`
--

CREATE TABLE `pelamar` (
  `id_people` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(2) NOT NULL,
  `golongan_darah` varchar(2) NOT NULL,
  `kewarganegaraan` varchar(3) NOT NULL,
  `id_user` int(10) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `provinsi_id` int(11) NOT NULL,
  `hp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar`
--

INSERT INTO `pelamar` (`id_people`, `nama`, `tempat_lahir`, `tanggal_lahir`, `agama`, `jenis_kelamin`, `golongan_darah`, `kewarganegaraan`, `id_user`, `kota_id`, `provinsi_id`, `hp`) VALUES
(1037231, 'Syifa Andani', 'Bandung', '1998-06-10', 'Islam', 'L', 'A', 'WNI', 33, 3204, 32, '08724955'),
(1194397, 'Mugi Rachmat', 'Bandung', '1996-01-30', 'Islam', 'L', 'O', 'WNI', 30, 2101, 21, ''),
(1196411, 'Andika Pratyam', 'Jakatya', '1991-03-07', 'Islam', 'L', 'A', 'WNI', 31, 2101, 21, ''),
(1459259, 'Andi', 'Bandung', '1970-01-01', 'Islam', 'L', 'B', 'WNI', 34, 6411, 64, '08785959595'),
(1527100, 'Renika Auliya', 'Tuban', '1989-03-08', 'Islam', 'L', 'A', 'WNI', 32, 3523, 35, '087854848448');

-- --------------------------------------------------------

--
-- Table structure for table `pelamar_pekerjaan`
--

CREATE TABLE `pelamar_pekerjaan` (
  `id_pekerjaan` int(11) NOT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `tahun` varchar(5) DEFAULT NULL,
  `gaji` float DEFAULT NULL,
  `bagian` varchar(50) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar_pekerjaan`
--

INSERT INTO `pelamar_pekerjaan` (`id_pekerjaan`, `instansi`, `tahun`, `gaji`, `bagian`, `people_id`, `user_id`) VALUES
(5, 'ITB', '2015', 3.75, 'TI', 1194397, 30),
(6, 'ITS', '2016', 3.45, 'TI', 1527100, 32);

-- --------------------------------------------------------

--
-- Table structure for table `pelamar_pendidikan`
--

CREATE TABLE `pelamar_pendidikan` (
  `id_pendidikan` int(11) NOT NULL,
  `instansi` varchar(100) DEFAULT NULL,
  `tahun_lulus` varchar(5) DEFAULT NULL,
  `nilai` float DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `people_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelamar_pendidikan`
--

INSERT INTO `pelamar_pendidikan` (`id_pendidikan`, `instansi`, `tahun_lulus`, `nilai`, `jurusan`, `people_id`, `user_id`) VALUES
(5, 'ITB', '2015', 3.75, 'TI', 1194397, 30),
(6, 'ITS', '2016', 3.45, 'TI', 1527100, 32);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `id` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`id`, `name`) VALUES
('11', 'ACEH'),
('12', 'SUMATERA UTARA'),
('13', 'SUMATERA BARAT'),
('14', 'RIAU'),
('15', 'JAMBI'),
('16', 'SUMATERA SELATAN'),
('17', 'BENGKULU'),
('18', 'LAMPUNG'),
('19', 'KEPULAUAN BANGKA BELITUNG'),
('21', 'KEPULAUAN RIAU'),
('31', 'DKI JAKARTA'),
('32', 'JAWA BARAT'),
('33', 'JAWA TENGAH'),
('34', 'DI YOGYAKARTA'),
('35', 'JAWA TIMUR'),
('36', 'BANTEN'),
('51', 'BALI'),
('52', 'NUSA TENGGARA BARAT'),
('53', 'NUSA TENGGARA TIMUR'),
('61', 'KALIMANTAN BARAT'),
('62', 'KALIMANTAN TENGAH'),
('63', 'KALIMANTAN SELATAN'),
('64', 'KALIMANTAN TIMUR'),
('65', 'KALIMANTAN UTARA'),
('71', 'SULAWESI UTARA'),
('72', 'SULAWESI TENGAH'),
('73', 'SULAWESI SELATAN'),
('74', 'SULAWESI TENGGARA'),
('75', 'GORONTALO'),
('76', 'SULAWESI BARAT'),
('81', 'MALUKU'),
('82', 'MALUKU UTARA'),
('91', 'PAPUA BARAT'),
('94', 'PAPUA');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id_test` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `lamaran_id` int(11) NOT NULL,
  `lowongan_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status1` varchar(50) NOT NULL,
  `berita_acara1` text NOT NULL,
  `status2` varchar(50) NOT NULL,
  `berita_acara2` text NOT NULL,
  `status3` varchar(50) NOT NULL,
  `berita_acara3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id_test`, `tanggal`, `lamaran_id`, `lowongan_id`, `user_id`, `status1`, `berita_acara1`, `status2`, `berita_acara2`, `status3`, `berita_acara3`) VALUES
(5, '2017-03-20', 25, 1, 32, 'Lulus', 'Lulus', '', '', '', ''),
(6, '2017-03-20', 29, 10, 30, 'Lulus', 'Sip', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `date_create` date NOT NULL,
  `level_ID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `email`, `date_create`, `level_ID`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', '2016-05-10', 1),
(2, 'pimpinan', '21232f297a57a5a743894a0e4a801fc3', 'pimpinan@pimpinan.com', '2016-05-10', 3),
(30, 'mugi', '21232f297a57a5a743894a0e4a801fc3', 'infomugi@gmail.com', '2017-03-13', 2),
(31, 'andika', '7e51eea5fa101ed4dade9ad3a7a072bb', 'andika@gmial.com', '2017-03-20', 2),
(32, 'renika', '21232f297a57a5a743894a0e4a801fc3', 'renika@gmail.com', '2017-03-20', 2),
(33, 'syifa', '21232f297a57a5a743894a0e4a801fc3', 'syifa@gmial.com', '2017-06-12', 2),
(34, 'akira', '21232f297a57a5a743894a0e4a801fc3', 'akira@gmail.com', '2017-07-11', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`);

--
-- Indexes for table `file_lamaran`
--
ALTER TABLE `file_lamaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_people` (`id_people`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `regencies_province_id_index` (`province_id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`level_ID`);

--
-- Indexes for table `lowongan`
--
ALTER TABLE `lowongan`
  ADD PRIMARY KEY (`id_lowongan`);

--
-- Indexes for table `pelamar`
--
ALTER TABLE `pelamar`
  ADD PRIMARY KEY (`id_people`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `pelamar_pekerjaan`
--
ALTER TABLE `pelamar_pekerjaan`
  ADD PRIMARY KEY (`id_pekerjaan`);

--
-- Indexes for table `pelamar_pendidikan`
--
ALTER TABLE `pelamar_pendidikan`
  ADD PRIMARY KEY (`id_pendidikan`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id_test`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_level` (`level_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `file_lamaran`
--
ALTER TABLE `file_lamaran`
  MODIFY `id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `level_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `lowongan`
--
ALTER TABLE `lowongan`
  MODIFY `id_lowongan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pelamar_pekerjaan`
--
ALTER TABLE `pelamar_pekerjaan`
  MODIFY `id_pekerjaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pelamar_pendidikan`
--
ALTER TABLE `pelamar_pendidikan`
  MODIFY `id_pendidikan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id_test` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kota`
--
ALTER TABLE `kota`
  ADD CONSTRAINT `regencies_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `provinsi` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
