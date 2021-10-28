-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2021 at 11:44 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryId` int(12) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDesc` text NOT NULL,
  `categoryCreateDate` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryId`, `categoryName`, `categoryDesc`, `categoryCreateDate`) VALUES
(1, 'Elektronik', 'Barang penunjang kebutuhan sehari-hari dengan sumber daya listrik', '2021-10-21 12:53:02'),
(2, 'Fashion', 'Berbagai pakaian atau busana untuk anak-anak, remaja, dan orang dewasa.', '2021-10-22 12:57:50'),
(3, 'Handphone', 'Perangkat telekomunikasi elektronik untuk melakukan komunikasi dan dengan orang lain dan memiliki berbagai functionalitas lainnya dari berbagai merk produksi gadget.', '2021-10-22 12:57:50'),
(4, 'Kamera', 'Seperangkat peralatan dengan kelengkapannya yang memiliki fungsi mengabadikan suatu objek menjadi gambar yang merupakan hasil dari proyeksi pada sistem lensa.', '2021-10-22 13:02:50'),
(5, 'Komputer & Laptop', 'Perangkat elektronik yang dapat digunakan untuk mengolah data sesuai dengan prosedur yang telah dirumuskan sebelumnya sehingga menghasilkan informasi bermanfaat bagi penggunanya.', '2021-10-22 13:02:50'),
(6, 'Alat Musik', 'Berbagai alat musik dengan jenis yang beraneka ragam dan dari berbagai merk.', '2021-10-22 13:12:46'),
(7, 'Office & Stationery', 'Perlengkapan yang umumnya digunakan selama aktivitas di kantor, perusahaan dan organisasi lainnya.', '2021-10-22 13:12:46'),
(8, 'Olahraga', 'Berbagai barang yang digunakan sebagai penunjang manusia dalam melakukan aktivitas olaraga.', '2021-10-22 13:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `orderId` int(21) NOT NULL DEFAULT 0,
  `message` text NOT NULL,
  `time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactId`, `userId`, `email`, `phone`, `orderId`, `message`, `time`) VALUES
(1, 3, 'yoga@gmail.com', 6546846512, 1, 'Barang tidak sesuai dengan yang tertampil di website', '2021-10-27 16:13:37'),
(2, 5, 'cahyo@gmail.com', 4888454112, 1, 'Pengiriman barang lama', '2021-10-27 16:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `contactreply`
--

CREATE TABLE `contactreply` (
  `Id` int(21) NOT NULL,
  `contactId` int(21) NOT NULL,
  `userId` int(23) NOT NULL,
  `message` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactreply`
--

INSERT INTO `contactreply` (`Id`, `contactId`, `userId`, `message`, `dateTime`) VALUES
(1, 1, 3, 'Maaf, kedepannya kami akan memberikan pelayanan terbaik', '2021-10-27 16:16:38'),
(2, 2, 5, 'maaf atas keterlambatan dikarenakan cuaca buruk', '2021-10-27 16:20:54');

-- --------------------------------------------------------

--
-- Table structure for table `deliverydetails`
--

CREATE TABLE `deliverydetails` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `deliveryByName` varchar(35) NOT NULL,
  `deliveryByPhone` bigint(15) NOT NULL,
  `deliveryTime` int(200) NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `itemId` int(12) NOT NULL,
  `itemName` varchar(255) NOT NULL,
  `itemPrice` int(12) NOT NULL,
  `itemDesc` text NOT NULL,
  `itemCategoryId` int(12) NOT NULL,
  `itemDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`itemId`, `itemName`, `itemPrice`, `itemDesc`, `itemCategoryId`, `itemDate`) VALUES
(1, 'SMART TV COOCAA 50 INCH', 4499000, 'TV Merk Coocaa dengan Size 50 inch (diagonal). Model 50S3N dengan Resolusi 4K Ultra HD (2160p / 3840x2160)\r\n', 1, '2021-10-22 13:42:09'),
(2, 'New Xiaomi Mi TV 4 32inch Android LED Smart TV 32\"', 2200000, 'TV dengan Spesifikasi Dimensi P 72cm x L18cm x T 43cm, Resolusi 1366 x 768, Sudut penglihatan 178 derajat, Refresh Rate 60Hz, Speaker: Audio power 2 × 10W, Socket Beberapa port, dan USB 2.0 × 3.', 1, '2021-10-22 13:42:09'),
(3, 'LG UHD SMART TV 4K 50UP8000', 7000000, 'TV dengan type 2021, IPS Panel 4K, Magic Motion Remote, UHD Real 4K, AI Smart (The New Smart Evolved by AI), FILMAKER MODE, dan 4K Resolution (A New Standard for High Definition).', 1, '2021-10-22 13:48:16'),
(4, 'AC POLYTRON 1PK PAC-09VG', 3500000, 'Pendingin ruangan dengan Warna Putih, Daya Listrik 880 Watt, Dimensi sebesar 78 x 21 x 27 cm, Berat 8 Kg, Garansi indoor 2thn Outdoor 5 tahun, dan BTU/h 9000 BTU/h.', 1, '2021-10-22 13:48:16'),
(5, 'Kulkas POLYTRON New Belleza', 4500000, 'Produk kulkas 2 pintu dengan penyimpanan yang besar memiliki kapasitas 300 liter Dengan 2 pintu yang dilengkapi dengan eksterior pintu tempered glass yang kuat dibalut warna hitam yang elegan memberikan keindahan pada ruangan Anda.', 1, '2021-10-22 13:52:11'),
(6, 'Kulkas 2 Pintu Sharp SJ-246GC SD', 3150000, 'New Borderless Tempered Glass, Design pintu kaca tempered tanpa border, kuat dan anti karat dengan tambahan ornamen matrix yang memberikan keindahan desain minimalis modern yang sesuai dengan interior rumah Anda.', 1, '2021-10-22 13:52:11'),
(7, 'GALVEE Smart Led Strip Extension RGB 2M', 85000, 'Smart LED yang Support Platform IOS & Android OS, Apps Galvee, Connectivity Wifi IEEE 802.11 b/ g/ n 2.4 GHz, Length 2 Meter, Extendable Yes, Input Voltage 12V DC, Input Current <= 1A/meter dan Standby Power <= 1 Watt.', 1, '2021-10-22 13:59:33'),
(8, 'YONG MA YMC-801/SMC-8017', 560000, 'YONG MA SMC8017 - Magic Com 2 Liter Digital Eco Ceramic memiliki fungsi Resume dan Slow Cooker sebagai teknologi Pioneer dari Yongma dan benar-benar hanya ada di Yongma SMC8017 dan fungsi Nasi Goreng seperti pada produk sebelumnya.', 1, '2021-10-22 13:59:33'),
(9, 'Kaos Lengan Panjang Cowok Pria Dewasa', 50000, 'Kaos pria lengan panjang dengan bahan babyterry, adem dan nyaman dipakai dengan model yang cocok dipakai sehari-hari.', 2, '2021-10-22 14:04:44'),
(10, 'BAJU ATASAN KEMEJA WANITA LENGAN PANJANG', 30000, 'Pakaian wanita dengan Bahan Catton Rayon, Ukuran All size fit to L, Lingkar dada 96 cm, Panjang Baju 55 cm, dan Variasi list sablon.\r\n', 2, '2021-10-22 14:04:44'),
(11, 'Kaos Polos Baju Pria Kaos Pria Premium', 20000, 'Kaos polos dengan Model O neck short sleeve, Pola Reguler Fit, Gender Unisex, Handfeel Supersoft, dan Size S - XL.\r\n', 2, '2021-10-22 14:12:17'),
(12, 'Baju Gamis Wanita Polos Busui Katun Supernova 9965', 70000, 'Baju gamis dengan Bahan Katun Supernova, Kancing Depan (Busui Friendly), sedia Size L - ld 102 cm, Size XL - ld 106 cm, dan Pb 135cm.', 2, '2021-10-22 14:12:17'),
(13, 'Celana Unisex Erigo Chino Pants', 125000, 'Chino Pants Erigo saat ini merupakan salah satu lini pakaian terbaik dan berkualitas tinggi di antara Local Brand Indonesia. Chino Pants are undoubtedly an essential style! Selain serba guna karena modis, celana ini juga merupakan must-have item bagi para pria. Erigo Chino Pants di design dengan warna indah dengan kain pilihan yang membuatmu nyaman sepanjang hari. Memiliki live-button, resleting, belt loop, dan 4 saku simpel pada bagian pinggul.', 2, '2021-10-22 14:19:54'),
(14, 'Rok Plisket - Rok Wanita Bahan Premium', 48000, 'Rok wanita dengan bahan HYGET SUPER PREMIUM, bahan lentur dan tidak terawang, pinggang full karet depan belakang.', 2, '2021-10-22 14:19:54'),
(15, 'Cammomile 2102005 LG909', 990000, 'Celana panjang bahan polos wanita All size dengan Lingkar Pinggang 64Cm / Lingkar Pinggang Maximal 84Cm dan Lingkar Pinggul 100Cm / Lingkar Paha 54Cm.', 2, '2021-10-22 14:36:32'),
(16, 'Kemeja Pria Lengan Pendek Kerah Bowling', 75000, 'Kemeja Pria BASIC BOWLING SHIRT dengan Bahan Katun, Cutting Slim Fit, Tersedia size M,L,XL, dan Size Chart (PxL).', 2, '2021-10-22 14:36:32'),
(17, 'Xiaomi Redmi Note 10s 6/64 GB', 2600000, 'Handphone dengan SIM Dual SIM (Nano-SIM, dual stand-by), DISPLAY Type AMOLED, 450 nits (typ), 1100 nits (peak), Size 6.43 inches, 99.8 cm2 (~83.5% screen-to-body ratio), PLATFORM OS Android 11, MIUI 12.5\r\nChipset Mediatek Helio G95 (12 nm), CPU Octa-core (2x2.05 GHz Cortex-A76 & 6x2.0 GHz Cortex-A55).', 3, '2021-10-22 14:45:36'),
(18, 'Xiaomi Poco X3 Pro 8/256 GB', 4000000, 'Handphone dengan SIM Hybrid Dual SIM (Nano-SIM, dual stand-by), DISPLAY Type IPS LCD, 120Hz, HDR10, 450 nits (typ), Size 6.67 inches, PLATFORM OS Android 11, MIUI 12 for POCO, Chipset Qualcomm Snapdragon 860 (7 nm), CPU Octa-core (1x2.96 GHz Kryo 485 Gold & 3x2.42 GHz Kryo 485 Gold & 4x1.78 GHz Kryo 485 Silver), dan GPU Adreno 640.', 3, '2021-10-22 14:45:36'),
(19, 'Oppo F5 4/32 GB', 997000, 'Handphone dengan SIM Dual SIM (Nano-SIM, dual stand-by), DISPLAY Type LTPS IPS LCD capacitive touchscreen, 16M colors, Size 6.0 inches, 92.9 cm2 (~78.1% screen-to-body ratio), Resolution 1080 x 2160 pixels, 18:9 ratio (~402 ppi density), Protection Corning Gorilla Glass 5, PLATFORM OS Android 7.1.1 (Nougat); ColorOS 3.2.', 3, '2021-10-22 14:52:14'),
(20, 'HUAWEI MATEPAD 11 6/128 RAM 6GB', 6180000, 'Tablet dengan Prosesor Qualcomm Snapdragon 865 Octa-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585), GPU Adreno 650, RAM 6 GB, ROM 128 GB, Ukuran Layar 10.95 inch, Tipe Layar IPS LCD, 120Hz, Resolusi Layar 2560 x 1600 pixels, 16:10 ratio (~275 ppi density), Kamera Belakang 13 MP, f/1.8, PDAF, dan Kamera Depan 8 MP, f/2.0.', 3, '2021-10-22 14:52:14'),
(21, '(IBOX) iPad Pro M1 2021 11” 128GB', 11750000, 'Tablet dengan Memori 128 GB - 256 GB - 512 GB - 1 TB - 2 TB, Warna Space Grey & Silver, dan Connection : Wifi Only & Wifi + Cellular 5G.\r\n', 3, '2021-10-22 14:57:56'),
(22, 'SAMSUNG GALAXY TAB S6 LITE 4/128', 6000000, 'Tablet dengan SIM Nano-SIM, Stylus support, Size 10.4 inches, 307.9 cm2 (~81.6% screen-to-body ratio), Chipset Exynos 9611 (10nm), CPU Octa-core (4x2.3, GHz Cortex-A73 & 4x1.7 GHz Cortex-A53), GPU Mali-G72 MP3, dan Internal 128GB 4GB RAM.', 3, '2021-10-22 14:57:56'),
(23, 'Samsung Galaxy A52 8/256', 5600000, 'Handphone dengan spesifikasi Layar 6.5\"\" FHD+ sA Infinity O 90Hz + On-sceen FP, Processor Snapdragon 720G, Octa Core, Kamera Belakang 64MP+12MP+5MP+5MP, Kamera Depan 32MP, RAM 8GB, ROM 256GB, IP67 for water and dust resistance, dan Battery 4500mAh serta Dual SIM Hybrid.', 3, '2021-10-22 15:24:45'),
(24, 'Infinix Note 10 4/64GB ', 1900000, 'Handphone dengan spesifikasi SIM menggunakan Dual SIM (Nano-SIM, dual stand-by), DISPLAY Type IPS LCD\r\nSize 6.95 inches, 114.7 cm2 (~84.2% screen-to-body ratio), Resolution 1080 x 2460 pixels (~387 ppi density), PLATFORM OS Android 11, XOS 7.6, Chipset MediaTek Helio G85 (12nm), dan CPU Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55).', 3, '2021-10-22 15:24:45'),
(25, 'CANON EOS 750D', 6100000, 'Kamera dengan 24.2MP APS-C CMOS Sensor, DIGIC 6 Image Processor, 3.0\" 1.04M-dot Vari-Angle Touchscreen,Full HD 1080p Video Recording,19-Point All Cross-Type AF System,5 fps Shooting & Extended ISO to 25600', 4, '2021-10-24 12:33:48'),
(26, 'Nikon D3500', 7270000, 'Kamera dengan 24.2MP DX-Format CMOS Sensor, EXPEED 4 Image Processor, Full HD 1080p Video Recording 60 fps, 3.0\" LCD Monitor, Multi-CAM 1000 11-Point AF System, Built-in Flash, Built-in Bluetooth, dan Include AF-P DX 18-55mm f/3.5-5.6G VR Lens', 4, '2021-10-25 15:04:13'),
(27, 'Olympus OM-D E-M10 Mark IV', 13499000, 'Kamera dengan 24.2MP APS-C CMOS with Primary Color Filter Sensor, 4K Video Recording at 30p, 3.5\" TFT color LCD monitor, Memory Card SD/SDHC/SDXC, Built-in WiFi, HDMI, USB Type C, dan 3.5mm 3-Pole Mini Jack Microphone', 4, '2021-10-25 15:04:13'),
(28, 'FUJIFILM X-S10', 17000000, 'Kamera dengan 26.1 Megapixels, APS-C X-Trans BSI CMOS 4 Sensor, X-Processor 4 Image Processor, DCI/UHD 4K at 30 fps, Full HD at 240 fps, 5-Axis In-Body Image Stabilization, 425-Point Hybrid AF System, 2.36m-Dot 0.62x OLED EVF, 3.0\" 1.04m-Dot Vari-Angle Touchscreen, ISO 160-12800 up to 8 fps Shooting, Bluetooth and Wi-Fi Connectivity', 4, '2021-10-25 15:04:13'),
(29, 'Nikon Z5', 28899000, '24.93MP Full-Frame CMOS Sensor, Resolution : 6016 x 4016, Image File Format : JPEG | Raw, Movie : 4K, UHD 3840 x 2160 @ 23.976p/25p/29.97p, 3.2\" Tilting Touchscreen LCD, SD/SDHC/SDXC (UHS-II) Card Slot', 4, '2021-10-25 15:04:14'),
(30, 'CANON EOS 90D DSLR', 31080000, 'Kamera dengan 32.5MP APS-C CMOS Sensor, DIGIC 8 Image Processor, 4K Video, 3.0 Inch 1.04 m-Dot Vari-Angle TFT Color Liquid-Crystal Touch Screen LCD Monitor, SD/SDHC/SDXC/UHS-I/ UHS-II Card Slot, 45-Point All-Cross Type AF System, Dual Pixel CMOS AF and Movie Servo AF, Bluetooth Low Energy Technology, Wi-Fi', 4, '2021-10-25 15:04:14'),
(31, 'PANASONIC Lumix TZ95', 7499000, '20.3 Megapixel, Sensor : 1/2.3\" MOS, Resolution : 3840 x 2160, Lens : Leica DC Vario-Elmar, Optical Zoom : 30x, Digital Zoom : 4x, 3.0\" LCD Rear Touch Screen Tilt (1040000 pixels), Connectivity : HDMI D/Micro-USB/USB 2.0, WiFi', 4, '2021-10-25 15:04:14'),
(32, 'SONY ZV-1 Digital Camera', 9999000, '1.0-type (13.2mm x 8.8mm) Exmor RS CMOS sensor, 20.1 Megapixels, BIONZ XTM image processing engine, 4K movie recording, Digital Zoom 11x, Iso Sensitivity Auto (ISO100-12800), 270 deg Vari-angle LCD screen, Shutter Speed Auto (4\"-1/2000), Selt time 10 second, Interface NFC/Bluetooth/Wi-fi, Wind Screen', 4, '2021-10-25 15:04:14'),
(33, 'MSI Notebook GF65 10SDR', 23758680, 'Laptop dengan Processor: Intel Core i7-10750H, RAM: 8GB DDR4SSD: 512GB, VGA: NVIDIA GeForce GTX 1660 Ti 6GB, Ukuran Layar: 15.6 Inch FHD 144Hz, Konektivitas: Wifi + Bluetooth, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:23:05'),
(34, 'Dell Notebook Latitude 3410', 11999900, 'Laptop dengan Processor: Intel Core i5-10210U, RAM: 4GB DDR4, SSD: 512GB, VGA: Intel UHD, Ukuran Layar: 15.6 Inch FHD 144Hz, Konektivitas: Wifi + Bluetooth, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(35, 'ASUS Laptop BR1100FKA-BP0410T', 6094000, 'Laptop dengan Processor: Intel Celeron N4500, RAM: 4GB, eMMC: 128GB, VGA: Integrated, Konektivitas: Bluetooth + Wifi, Ukuran Layar: 11.6 inch HD touch, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(36, 'ASUS E410MA-BV457VIPS White', 6897000, 'Laptop dengan Processor: Intel Celeron N4020, RAM: 4GB, eMMC: 128GB, VGA: Integrated, Konektivitas: Bluetooth + Wifi5, Ukuran Layar: 14 inch HD, Keyboard: Backlit, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(37, 'LENOVO Legion Y530-15ICH', 14499000, 'Laptop dengan Processor: Intel Core i5-8300H, RAM: 8GB DDR4, HDD: 1TB, 16GB Optane, VGA: NVIDIA GeForce GTX 1050 Ti 4GB, Konektivitas: Wifi + Bluetooth, Ukuran Layar: 15.6 Inch, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(38, 'HP 240 G8 Notebook', 7755000, 'Laptop dengan Processor: Intel Core i3-1005G1, RAM: 4GB DDR4, SSD: 256GB, VGA: Intel UHD, Ukuran Layar: 14 inch FHD, Konektivitas: Wifi + Bluetooth, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(39, 'Frontech SB13-NP4I5', 18000000, 'Laptop dengan Screen : 13.3inch IPS HD Screen, 1920 * 1080, Processor : Intel Core i5 i5-10210U, GPU : Intel UHD Graphics, Memory : 8 GB DDR4 Memory, Storage : 512 GB M.2 SSD, Ethernet : WiFi 802.11ac, Bluetooth : 5.0, Sistem Operasi: Windows 10 Home', 5, '2021-10-25 15:44:09'),
(40, 'RELION Notebook TX387', 6199000, 'Laptop dengan Processor: Intel Core i3-6006U, RAM: 4GB, HDD: 500GB, VGA: Integrated, Konektivitas: Bluetooth + Wifi5, Ukuran Layar: 15.6 inch HD, Sistem Operasi: Windows 10 Pro', 5, '2021-10-25 15:44:09'),
(41, 'PEARL Boom Box Cajon PCJ633BB - Red Sparkle', 3890000, 'Cajon dengan material fiberglass beserta fitur fixed snare system dan bass port untuk frekuensi subsonic.', 6, '2021-10-26 04:09:30'),
(42, 'YAMAHA Drum Elektrik DTX 542', 12420000, 'Drum Kit yang terdiri dari Drum and Percussion 691, Melodies 128, Snare, Tom, Floor Tom, Bass Drum, Hi-Hat, Crash Cymbal, Ride Cymbal, Rack', 6, '2021-10-26 04:27:15'),
(43, 'CAVALIERS BIOLA SYN 200B 1/2', 1800000, 'Biola yang dibuat dari material Top Quality Chinese Spruce, Back Maple, Ebony Parts', 6, '2021-10-26 04:27:16'),
(44, 'PEARL Primero Brass Timbale PTB-313I', 1053000, 'Timbal dengan Material: Brass, Head Material: Synthetic, Size: 3.5\" x 13\", Flat Timbale w/I.S.S., Unit Utama', 6, '2021-10-26 04:27:16'),
(45, 'KORG Piano Digital LP380 - White', 15750000, 'Piano digital yang terdiri dari 88 keys, Real Weighted Hammer Action 3, 120-note Polyphony, MIDI', 6, '2021-10-26 04:27:16'),
(46, 'CORT Gitar Akustik AC-100-OP - Open Pore', 1690000, 'Gitar akustik yang memiliki beberapa fitur seperti 6 Nylon String, Classic Body Shape, Spruce Top with, Mahogany Back & Sides Body, Mahogany Neck, Rosewood Fingerboard, 19 Fret', 6, '2021-10-26 04:27:16'),
(47, 'YAMAHA Keyboard P-45', 6600000, 'Keyboard yang memiliki beberapa fitur seperti 88 Key, Piano-style, Graded Hammer Standard, 64 Maximum Polyphony, MIDI, USB', 6, '2021-10-26 04:27:16'),
(48, 'KENKO STAPLER HD-10', 10000, 'Stapler HD 10 kenko merupakan stapler berukuran kecil yang bisa diisi dengan isi staples no: 10', 7, '2021-10-26 04:27:16'),
(49, 'KANGAROO Stapler Aris-35', 27500, 'KANGAROO Stapler Aris-35 merupakan stapler berukuran kecil berwarna random yang bisa diisi dengan isi staples no: 3', 7, '2021-10-26 04:27:16'),
(50, 'Penggaris Plastik / Penggaris Bening Butterfly 30cm', 7500, 'Penggaris Plastik dengan Panjang : 30cm', 7, '2021-10-26 04:27:16'),
(51, 'Penggaris besi Joyko 15cm', 34800, 'Penggaris Besi dengan Panjang : 15cm', 7, '2021-10-26 04:27:16'),
(52, 'Toyu Pen Monkey', 34800, 'Pulpen yang berisi Warna Tinta : Hitam dan Terbuat dari bahan Plastik', 7, '2021-10-26 04:27:16'),
(53, 'Toyu Pen Bear', 34800, 'Pulpen yang berisi Warna Tinta : Hitam dan Terbuat dari bahan Plastik', 7, '2021-10-26 04:27:16'),
(54, 'Minolta Laimey Barbell', 3397900, 'Laimey barbell for strength', 8, '2021-10-26 04:27:16'),
(55, 'TargetFit Vinyl Barbell 2 lbs', 56100, 'Dumbbell / Barbell Tahan lama dan dilapisi vinyl yang Ideal untuk aerobik/ Pelatihan langkah atau berjalan', 8, '2021-10-26 04:27:16'),
(56, 'ADIDAS 4mm Yoga Mat', 682000, 'Permukaan bertekstur untuk penyelarasan pose superior, Matras Yoga non-slip dengan permukaan bertekstur untuk penyelarasan pose yang superior, Bantalan lembut dan nyaman, ideal untuk latihan Yoga biasa, Dimensi: 173 x 61 x 0,4 cm', 8, '2021-10-26 04:27:16'),
(57, 'NIKE Fundamental Yoga Mat 3mm N.YE.02.647.OS - Vivid Pink', 615000, 'Matras yoga, Busa 3mm untuk bantalan lembut, Bahan 95\\% stirena-butadiena-stirena, 5\\% poliester, Hand Wash, Tidak mengandung PVC atau lateks', 8, '2021-10-26 04:27:16'),
(58, 'Java Seven Sepatu Sport Pria AYI 109', 228900, 'Sepatu Sport Pria, Material: Syntetic, Nyaman digunakan, Jangan dicuci dengan menggunakan detergent, Sepatu Sport Pria AYI 109', 8, '2021-10-26 04:27:16'),
(59, 'CHEETAH Reflex Sport Safety Shoes 8080', 880000, 'Safety shoes, Fitur: Alucap, energy gel, ortholite insoles, solegard, duoflex sole, ESD (Electrostatic Discharge) footwear, Best use: Oil', 8, '2021-10-26 04:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `orderitems`
--

CREATE TABLE `orderitems` (
  `id` int(21) NOT NULL,
  `orderId` int(21) NOT NULL,
  `itemId` int(21) NOT NULL,
  `itemQuantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderitems`
--

INSERT INTO `orderitems` (`id`, `orderId`, `itemId`, `itemQuantity`) VALUES
(1, 1, 5, 1),
(2, 2, 42, 1),
(3, 2, 47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(21) NOT NULL,
  `userId` int(21) NOT NULL,
  `address` int(255) NOT NULL,
  `zipCode` int(21) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `amount` int(200) NOT NULL,
  `payment` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=COD, 1=Online',
  `orderStatus` enum('0','1','2','3','4','5','6') NOT NULL DEFAULT '0' COMMENT '0=Order Placed, 1=Order Confirmed, 2=Preparing your Order, 3=Your order is on the way, 4=Order Delivered, 5=Order Denied, 6=Order Cancelled.',
  `orderDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `userId`, `address`, `zipCode`, `phone`, `amount`, `payment`, `orderStatus`, `orderDate`) VALUES
(1, 3, 0, 124454, 5465151548, 4500000, '0', '0', '2021-10-27 15:56:59'),
(2, 5, 0, 111111, 4541548878, 19020000, '0', '0', '2021-10-27 16:19:44');

-- --------------------------------------------------------

--
-- Table structure for table `sitedetail`
--

CREATE TABLE `sitedetail` (
  `tempId` int(11) NOT NULL,
  `sistemName` varchar(21) NOT NULL,
  `email` varchar(35) NOT NULL,
  `contact1` bigint(13) NOT NULL,
  `contact2` bigint(13) DEFAULT NULL,
  `address` text NOT NULL,
  `dateTime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sitedetail`
--

INSERT INTO `sitedetail` (`tempId`, `sistemName`, `email`, `contact1`, `contact2`, `address`, `dateTime`) VALUES
(1, 'Tumbas E-Comm', 'ecommerce@gmail.co.id', 87839286726, 274516321, 'Jl. Kebayoran Lama No. 172, Jakarta Selatan Indonesia', '2021-10-21 12:47:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(21) NOT NULL,
  `username` varchar(21) NOT NULL,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `phone` bigint(13) NOT NULL,
  `userType` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=user, 1=admin',
  `password` varchar(255) NOT NULL,
  `joinDate` datetime NOT NULL DEFAULT current_timestamp(),
  `confirmhash` varchar(32) DEFAULT NULL,
  `confirm` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstName`, `lastName`, `email`, `phone`, `userType`, `password`, `joinDate`, `confirmhash`, `confirm`) VALUES
(1, 'admin', 'admin', 'admin', 'admin@gmail.com', 27456321, '1', '$2y$10$AAfxRFOYbl7FdN17rN3fgeiPu/xQrx6MnvRGzqjVHlGqHAM4d9T1i', '2021-10-21 12:58:19', NULL, 1),
(2, 'terangUye', 'stefanus', 'terang', 'terang@yahoo.com', 8783215468, '0', '$2y$10$e4AGMQQJVraTNI5/dc6JNeVKO6WyyK4fpUvsGgeXNOBIPA3csmmVm', '2021-10-23 12:35:05', NULL, 1),
(3, 'yoga', 'yoga', 'pratama', 'yoga@gmail.com', 6546846512, '0', '$2y$10$7SqZ5AYh2pLAAtsSN6B23.8hlr4pzaugMzqlF/bGzpOwp.OfuGoW6', '2021-10-27 15:53:53', NULL, 0),
(5, 'cahyo', 'cahyo', 'prasetyo', 'cahyo@gmail.com', 4888454112, '0', '$2y$10$9iCqg/QNMHoRyn3t1F9fEOmtomkRKKsJWz7qpbyGfaheSZD5GxD3a', '2021-10-27 16:18:09', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `viewcart`
--

CREATE TABLE `viewcart` (
  `cartItemId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL,
  `itemQuantity` int(100) NOT NULL,
  `userId` int(11) NOT NULL,
  `addedDate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryId`);
ALTER TABLE `categories` ADD FULLTEXT KEY `categoryName` (`categoryName`,`categoryDesc`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactId`);

--
-- Indexes for table `contactreply`
--
ALTER TABLE `contactreply`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`itemId`);
ALTER TABLE `item` ADD FULLTEXT KEY `itemName` (`itemName`,`itemDesc`);

--
-- Indexes for table `orderitems`
--
ALTER TABLE `orderitems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `sitedetail`
--
ALTER TABLE `sitedetail`
  ADD PRIMARY KEY (`tempId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`) USING BTREE;

--
-- Indexes for table `viewcart`
--
ALTER TABLE `viewcart`
  ADD PRIMARY KEY (`cartItemId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contactreply`
--
ALTER TABLE `contactreply`
  MODIFY `Id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deliverydetails`
--
ALTER TABLE `deliverydetails`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `itemId` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `orderitems`
--
ALTER TABLE `orderitems`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitedetail`
--
ALTER TABLE `sitedetail`
  MODIFY `tempId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(21) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `viewcart`
--
ALTER TABLE `viewcart`
  MODIFY `cartItemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
