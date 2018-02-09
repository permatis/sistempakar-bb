/*
Navicat MySQL Data Transfer

Source Server         : defri
Source Server Version : 50612
Source Host           : localhost:3306
Source Database       : pakarhp

Target Server Type    : MYSQL
Target Server Version : 50612
File Encoding         : 65001

Date: 2014-02-03 14:45:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('7333de22c722f0905803faa8b6194347', '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/33.0.1750.5 Safari/537.36', '1391412813', '');

-- ----------------------------
-- Table structure for db_hardware
-- ----------------------------
DROP TABLE IF EXISTS `db_hardware`;
CREATE TABLE `db_hardware` (
  `id_masalah` int(11) NOT NULL AUTO_INCREMENT,
  `kd_tipe` varchar(5) NOT NULL,
  `kd_masalah` varchar(5) NOT NULL,
  `masalah` text NOT NULL,
  `solusi` text NOT NULL,
  PRIMARY KEY (`id_masalah`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_hardware
-- ----------------------------
INSERT INTO `db_hardware` VALUES ('1', 'K01', 'B01', 'Stuck on Booting Screen dari Built-in Media Storage dengan muncul pesan error pada layar seperti  “Built-in media storage not accessible due to detected errors. Would you like to repair ?”', '<li>Masukkan ketiga file tersebut dalam 1 folder.</li><li>Jalankan Step1- NUKE_My_Phone.bat.</li><li>Setelah menjalankan Step1, tunggu sampai blackberry Anda Led Blinking kedap-kedip baru dilanjutkan ke Step2.</li><li>Jalankan Step2-Wipe_My_Phone.bat.</li><li>Loader OS / Upgrade OS BlackBerry seperti biasa. Usahakan di install os yg versi paling rendah dulu (os 7.0) dan jangan install aplikasi pihak ketiga alias yg bukan bawaan osnya sndri. Aplikasi bawaan standar seperti BBM, Facebook, Twitter dll.</li><li>Dari cara tersebut, kami menyadari Step1 dan Step2 diatas tujuannya adalah memformat Built-in Media Storage dan OS sehingga Built-in Media Storage berjalan normal kembali dan BlackBerry bisa melewati Stuck di Booting Screen.</li>');
INSERT INTO `db_hardware` VALUES ('2', 'K01', 'B02', 'Pada layar muncul pesan tulisan “Could star the camera close other apllication and try opening the camera again”.', '<li>Memprogram ulang ponsel Blackberry.</li><li>Dengan cara Mengganti Modul camera.</li>');
INSERT INTO `db_hardware` VALUES ('3', 'K01', 'B03', 'Menghapus PIN pada Blackberry Bold', '<li>Dengan cara mendisable atau unlink PIN, yakni dapat menghubungi operator  minta untuk me-remove / menghapus atau unregister PIN kamu dari BIS Account punya kamu.</li>');
INSERT INTO `db_hardware` VALUES ('4', 'K01', 'B04', 'Pada Layar LCD  muncul warna hitam bercorak', '<li>Dengan cara Layar LCD harus diganti.</li>');
INSERT INTO `db_hardware` VALUES ('5', 'K01', 'B05', 'Keypad rusak atau tidak berfungsi', '<li>Dengan cara mengganti flex keypad yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('6', 'K01', 'B06', 'Trackball bermasalah; Ini bisa berarti, trackball tidak mau bergerak . Biasanya ini terjadi karena roller atau pin-pin kecil yang ada pada sekeliling trackball kotor atau berdebu.', '<li>Cukup hanya dengan membersihkan roller tersebut,dengan menggunakan jari anda.Namun ingat anda harus sangat berhati-hati ketika membuka trackball, karena piranti ini sangat rentan.</li>');
INSERT INTO `db_hardware` VALUES ('7', 'K01', 'B07', 'Layar berdebu; Ini masalah klasik,karena sebuah peralatan eletronik yang selalu di bawa-bawa tentu sangat muda terkena debu atau kotoran', '<li>Cara membersihkan Smartphone kesayangan anda cukup mudah, karena setiap unit BlackBerry biasa nya di pasang sekrup yang bisa di buka dengan obeng berukuran T5 dan T6. Perlu untuk di ingat, anda tidak boleh memaksakan sekrup karena akan bisa mengakibatkan patah. Untuk membersihkan nya, jangan menggunakan tisu. Tapi gunakan kain halus seperti yang biasa di pakai untuk membersihkan kaca mata.</li>');
INSERT INTO `db_hardware` VALUES ('8', 'K01', 'B08', 'Port USB longgar; Hal ini biasa terjadi jika kita sering mencabut kabel USB yang terhubung dengan BlackBerry dengan cara menggoyangkan kabel tersebut.', '<li>Cara yang paling aman adalah jangan mencopot kabel USB dengan menggerakan ke kanan-kiri.Port USb tidak akan bisa di perbaiki jika sudah rusak.Satu-satu nya cara adalah mengganti dengan suku cadang yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('9', 'K01', 'B09', 'Elemen bagian samping tidak bekerja; Hal ini biasa terjadi setelah anda mengganti Bezel (tulang samping pada BlackBerry). Jika anda perhatikan Bezel ini bukan hanya sekedar hiasan. Tapi,merupakan tempat meletakan elemen. Seperti tombol suara,USB port,Jack Headphone, dan lain-lain. Mungkin saja Bezel baru tersebut tidak terpasang dengan benar, sehingga fitur tidak berjalan dengan baik.', '<li>Cara teraman adalah dengan mengganti kembali dengan Bezel yang original. Namun,jika anda terlanjur suka dengan Bezel yang baru. Saya sarankan untuk mengecek dan membetulkan letak Bezel tersebut.</li>');
INSERT INTO `db_hardware` VALUES ('10', 'K02', 'T01', 'Handphone Blackberry  Mati total tidak dapat menyala', '<li>Dengan penggantian ic power yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('11', 'K02', 'T02', 'Tidak bisa memperbarui BlackBerry Device Software melalui jaringan nirkabel.', '<li>Pastikan ponsel BlackBerry Anda terhubung ke jaringan nirkabel.</li><li>Pastikan ponsel Anda mempunyai cukup ruang penyimpanan aplikasi untuk memperbarui BlackBerry Device Software.</li><li>Pastikan Anda tidak sedang jelajah di luar area jangkauan nirkabel penyedia layanan nirkabel Anda. Tergantung pada penyedia layanan nirkabel, Anda mngkin tidak bisa memperbarui BlackBerry Device Software Anda saat jelajah. Untuk informasi lainnya, hubungi penyedia layanan nirkabel Anda.</li><li>Cobalah memperbarui BlackBerry Device Software melalui jaringan nirkabel nanti. Tergantung pada penyedia layanan nirkabel, Anda mungkin tidak bisa memperbarui BlackBerry Device Software pada waktu-waktu tertentu, bila lalu lintas jaringan sedang padat.</li>');
INSERT INTO `db_hardware` VALUES ('12', 'K02', 'T03', 'Layar blackberry torch 9860 A.K.A Monza terbalik \"upside down\"', '<li>Downgrade ke OS 7.0m</li><li>Masuk ke escreen, lihat di pengaturan LCD (di set ke auto detect) -» advanced user only.</li><li>Setelah di instal nanti disitu ada beberapa tampilan:</li><li>info</li><li>factory reset</li><li>nuke</li><li>wipe-v3</li><li>9850</li><li>9860</li><li>Setelah terbuka dan ada halaman ini, silahkan di klik factory reset saja. cmiiw.</li>');
INSERT INTO `db_hardware` VALUES ('13', 'K02', 'T04', 'Saat dinyalakan layar blank hitam dan lampu indikator kedip 1 kali atau berkali – kali, lampu keypad tetap menyala.', '<li>Hal ini terjadi apabila adanya kerusakan pada flexible slide, cara memperbaikinya dengan cara mengganti flexible slide dengan yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('14', 'K02', 'T05', 'Layar berdebu; Ini masalah klasik,karena sebuah peralatan eletronik yang selalu di bawa-bawa tentu sangat muda terkena debu atau kotoran', '<li>Cara membersihkan Smartphone kesayangan anda cukup mudah, karena setiap unit BlackBerry biasa nya di pasang sekrup yang bisa di buka dengan obeng berukuran T5 dan T6. Perlu untuk di ingat, anda tidak boleh memaksakan sekrup karena akan bisa mengakibatkan patah. Untuk membersihkan nya, jangan menggunakan tisu. Tapi gunakan kain halus seperti yang biasa di pakai untuk membersihkan kaca mata.</li>');
INSERT INTO `db_hardware` VALUES ('15', 'K02', 'T06', 'Port USB longgar; Hal ini biasa terjadi jika kita sering mencabut kabel USB yang terhubung dengan BlackBerry dengan cara menggoyangkan kabel tersebut.', '<li>Cara yang paling aman adalah jangan mencopot kabel USB dengan menggerakan ke kanan-kiri.Port USb tidak akan bisa di perbaiki jika sudah rusak.Satu-satu nya cara adalah mengganti dengan suku cadang yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('16', 'K02', 'T07', 'Elemen bagian samping tidak bekerja; Hal ini biasa terjadi setelah anda mengganti Bezel (tulang samping pada BlackBerry). Jika anda perhatikan Bezel ini bukan hanya sekedar hiasan. Tapi,merupakan tempat meletakan elemen. Seperti tombol suara,USB port,Jack Headphone, dan lain-lain. Mungkin saja Bezel baru tersebut tidak terpasang dengan benar, sehingga fitur tidak berjalan dengan baik.', '<li>Cara teraman adalah dengan mengganti kembali dengan Bezel yang original. Namun,jika anda terlanjur suka dengan Bezel yang baru. Saya sarankan untuk mengecek dan membetulkan letak Bezel tersebut.</li>');
INSERT INTO `db_hardware` VALUES ('17', 'K03', 'S01', 'Blackberry muncul pesan eror “uncaught exception”', '<li>Lakukan reboot Blackberry dengan cara lepas baterai.</li><li>Dengan cara uninstall apllikasi yang terakhir di install.</li><li>Coba dengan cara menekan tombol Alt + L + G + L + G,</li><li>Setelah tampil event log</li><li>Klik tulisan uncaught exception</li><li>Maka apllikasi yang eror akan terlampir</li><li>Uninstall atau remove saja apllikasi tersebut</li>');
INSERT INTO `db_hardware` VALUES ('18', 'K03', 'S02', 'Layar LCD Blackberry Strom sering Error.', '<li>hard restar</li><li>coba anda klakukan hard reset dulu dengan cara cabut batrai kemudian pasang kembali(jangan lupa matikan blackberry anda dulu untuk menghindari JVM ERROR).</li><li>Reinstal OS</li><li>Jika dengan hard restar masih belum berhasil kemungkinan ada masalah pada system oprasinya coba lakukan instal ulang os blackberry anda jangan lupa wipe dulu wipe >> cheklist semua lalu instal ulang os.</li><li>Service LCD</li><li>Jika  maslah masih timbul dan tidak ada perubahan pada layar sentuh blackberry strom anda kemungkinan layar BB nya (hardware) yang bermasalah.</li><li>Ganti LCD</li>	<li>Jika semua trik di atas sudah anda lakukan tetapi masih belum ada perubahan maka jalan satu satunya adalah dengan mengganti Lcd blackberry strom anda dengan yang baru,harga lcd blackberry strom adalah 200 ribu untuk fleksibel yang kuning(harga tergantung wilayah).</li>');
INSERT INTO `db_hardware` VALUES ('19', 'K03', 'S03', 'LCD terlihat normal, namun ketika dipencet LCD-nya, tidak ada respon sama sekali.', '<li>Digitizer yang terdapat di belakang LCD mengalami kerusakan dan harus diganti.</li>');
INSERT INTO `db_hardware` VALUES ('20', 'K03', 'S04', 'Layar LCD sudah tidak ada respon ketika disentuh.', '<li>Dengan cara mengganti Layar LCD nya.</li>');
INSERT INTO `db_hardware` VALUES ('21', 'K03', 'S05', 'Layar berdebu; Ini masalah klasik, karena sebuah peralatan eletronik yang selalu di bawa-bawa tentu sangat muda terkena debu atau kotoran', '<li>Cara membersihkan Smartphone kesayangan anda cukup mudah, karena setiap unit BlackBerry biasa nya di pasang sekrup yang bisa di buka dengan obeng berukuran T5 dan T6. Perlu untuk di ingat, anda tidak boleh memaksakan sekrup karena akan bisa mengakibatkan patah. Untuk membersihkan nya, jangan menggunakan tisu. Tapi gunakan kain halus seperti yang biasa di pakai untuk membersihkan kaca mata.</li>');
INSERT INTO `db_hardware` VALUES ('22', 'K03', 'S06', 'Port USB longgar; Hal ini biasa terjadi jika kita sering mencabut kabel USB yang terhubung dengan BlackBerry dengan cara menggoyangkan kabel tersebut.', '<li>Cara yang paling aman adalah jangan mencopot kabel USB dengan menggerakan ke kanan-kiri.Port USb tidak akan bisa di perbaiki jika sudah rusak.Satu-satu nya cara adalah mengganti dengan suku cadang yang baru.</li>');
INSERT INTO `db_hardware` VALUES ('23', 'K03', 'S07', 'Touch screen Storm tak responsif; Terkadang touchscreen dengan teknologi SurePress ini tidak merespon ke inginan anda dengan benar. Ketika di tekan, layar lebar milik Storm ini biasa nya terasa empuk. Namun ada beberapa kasus layar Storm hanya merespon bagian-bagian tertentu saja.', '<li>Anda perlu tahu bahwa pada BlackBerry Storm, terdapat empat sekrup kecil yang di tanamkan di tiap ujung layar. Empat sekrup inilah yang mengontrol tingkat ke empukan dan responbilitas terhadap tekanan pada layar.Anda sebenar nya bisa melakukan sendiri pengaturan terhadap sekrup-sekrup ini. Namun di butuhkan tingkat ketelitian yang tinggi karena anda akan berurusan dengan item-item yang kecil dan sangat rentan.</li>');
INSERT INTO `db_hardware` VALUES ('24', 'K03', 'S08', 'Elemen bagian samping tidak bekerja; Hal ini biasa terjadi setelah anda mengganti Bezel (tulang samping pada BlackBerry). Jika anda perhatikan Bezel ini bukan hanya sekedar hiasan. Tapi,merupakan tempat meletakan elemen. Seperti tombol suara,USB port,Jack Headphone, dan lain-lain. Mungkin saja Bezel baru tersebut tidak terpasang dengan benar, sehingga fitur tidak berjalan dengan baik.', '<li>Cara teraman adalah dengan mengganti kembali dengan Bezel yang original. Namun,jika anda terlanjur suka dengan Bezel yang baru. Saya sarankan untuk mengecek dan membetulkan letak Bezel tersebut.</li>');
INSERT INTO `db_hardware` VALUES ('25', 'K04', 'C01', 'Tidak dapat mengirim atau menerima pesan.', '<li>Pastikan perangkat BlackBerry Anda terhubung ke jaringan nirkabel. JikaAnda tidak berada dalam area jangkauan nirkabel, perangkat Anda akan mengirim pesan saat kembali ke area jangkauan nirkabel.</li><li>Jika Anda telah membuat alamat email atau menambahkan alamat email yang ada ke perangkat Anda menggunakan layar setelan email dalam panduan setelan, pastikan Anda telah menerima pesan aktivasi pada perangkat dari BlackBerry Internet Service. Jika Anda belum menerima pesan aktivasi (pesan mungkin butuh beberapa saat hingga tiba), dalam panduan setelan, buka layar setelan email untuk mengirim buku layanan ke perangkat Anda.</li><li>Jika Anda belum menerima pesan pendaftaran dari jaringan nirkabel, daftarkan perangkat Anda. Pada layar Asal, klik ikon Options (Opsi).</li><li>Klik Advanced Options (Opsi Lanjutan)</li><li>Klik Host Routing Table (Tabel Rute Host)</li><li>Tekan Tombol</li><li>Klik Register Now (Daftarkan Sekarang)</li><li>Jika Anda telah berpindah perangkat, pastikan Anda telah memindah layanan');
INSERT INTO `db_hardware` VALUES ('26', 'K04', 'C02', 'Tidak dapat membuat atau menerima panggilan.', 'dan menerima panggilan telah disetel sebagai nomor telepon aktif Anda.</li><li>Lihat settingan dalam apllikasi tersebut, setelah disetting lakukan send service book, setelah itu hard reset Blackberry (lepas baterai).</li><li>Bila software Blackberrynya tidak stabil, masalah ini bisa diselesaikan dengan Upgrade ke software yang lebih baru. Atau Cek baterai mungkin baterai sudah minta ganti.</li>');
INSERT INTO `db_hardware` VALUES ('27', 'K04', 'C03', 'Tidak keluar notifikasi FB di Blackberry curve 8320.', '<li>Lihat settingan dalam apllikasi tersebut, setelah disetting lakukan send service book, setelah itu hard reset Blackberry (lepas baterai).</li>');
INSERT INTO `db_hardware` VALUES ('28', 'K04', 'C04', 'Blackberry sering hang terus mati-mati sendiri.', '<li>Bila software Blackberrynya tidak stabil, masalah ini bisa diselesaikan dengan Upgrade ke software yang lebih baru. Atau Cek baterai mungkin baterai sudah minta ganti.</li>');
INSERT INTO `db_hardware` VALUES ('29', 'K04', 'C05', 'Tidak dapat melakukan atau menerima panggilan atau mengirim dan menerima pesan', '<li>Pastikan perangkat BlackBerry Anda terhubung ke jaringan nirkabel. Jika indikator MATI muncul di bagian atas layar Asal, klik ikon Atur Koneksi.</li><li>Pilih kotak cek di sebelah Jaringan Seluler.</li><li>Indikator jaringan nirkabel akan muncul. Jika Anda tidak berada dalam area jangkauan nirkabel, indikator X akan muncul sebagai gantinya. Jika Anda tidak dapat melakukan atau menerima panggilan, coba lakukan tindakan-tindakan berikut :</li><li>Pastikan paket layanan nirkabel menyertakan layanan telepon dan suara.</li><li>Jika Anda telah bepergian ke negara lain dan Anda belum mengubah opsi pemanggilan cerdas, panggil nomor telepon lengkap, termasuk kode negara dan kode area, untuk kontak Anda.</li><li>Jika Anda telah menambahkan akun email ke perangkat Anda dengan menggunakan panduan setelan, pastikan Anda telah menerima pesan aktivasi. Jika Anda belum menerima pesan aktivasi, pada layar Asal atau dalam sebuah folder, klik Setelan</li><li>Buka aplikasi setelan email. Tekan tombol.</li><li>Klik Buku Layanan</li>	<li>Klik Kirim Buku Layanan</li><li>Jika Anda belum menerima pesan registrasi dari jaringan nirkabel, pada layar Asal atau pada sebuah folder, klik ikon Options icon. Klik Opsi Lanjutan . Klik Tabel Rute Host . Tekan tombol . Klik Daftarkan Sekarang.</li><li>Jika Anda berpindah perangkat, pastikan Anda telah berpindah perangkat secara otomatis atau secara manual agar pesan-pesan Anda dikirimkan ke perangkat Anda yang baru.</li><li>Jika item menu untuk mengirim pesan tidak muncul, pastikan Anda telah menambahkan alamat email, atau PIN untuk kontak Anda.</li><li>Kirim ulang pesan tersebut . Buka sebuah pesan . Tekan tombol . Klik Kirim Ulang.</li><li>Jika Anda menggunakan filter pesan email, pastikan opsinya telah disetel dengan benar.</li>');
INSERT INTO `db_hardware` VALUES ('30', 'K04', 'C06', 'Blackberry muncul pesan eror “uncaught exception”', '<li>Lakukan reboot Blackberry dengan cara lepas baterai.</li><li>Dengan cara uninstall apllikasi yang terakhir di install.</li><li>Coba dengan cara menekan tombol Alt + L + G + L + G,</li><li>Setelah tampil event log</li><li>Klik tulisan uncaught exception</li><li>Maka apllikasi yang eror akan terlampir</li><li>Uninstall atau remove saja apllikasi tersebut</li>');
INSERT INTO `db_hardware` VALUES ('31', 'K04', 'C07', 'Trackball bermasalah; Ini bisa berarti, trackball tidak mau bergerak . Biasanya ini terjadi karena roller atau pin-pin kecil yang ada pada sekeliling trackball kotor atau berdebu.', '<li>Cukup hanya dengan membersihkan roller tersebut,dengan menggunakan jari anda.Namun ingat anda harus sangat berhati-hati ketika membuka trackball, karena piranti ini sangat rentan.</li>');
INSERT INTO `db_hardware` VALUES ('32', 'K04', 'C08', 'Layar berdebu; Ini masalah klasik,karena sebuah peralatan eletronik yang selalu di bawa-bawa tentu sangat muda terkena debu atau kotoran', '<li>Cara membersihkan Smartphone kesayangan anda cukup mudah, karena setiap unit BlackBerry biasa nya di pasang sekrup yang bisa di buka dengan obeng berukuran T5 dan T6. Perlu untuk di ingat, anda tidak boleh memaksakan sekrup karena akan bisa mengakibatkan patah. Untuk membersihkan nya, jangan menggunakan tisu. Tapi gunakan kain halus seperti yang biasa di pakai untuk membersihkan kaca mata.</li>');
INSERT INTO `db_hardware` VALUES ('33', 'K04', 'C09', 'Port USB longgar; Hal ini biasa terjadi jika kita sering mencabut kabel USB yang terhubung dengan BlackBerry dengan cara menggoyangkan kabel tersebut.', '<li>Cara yang paling aman adalah jangan mencopot kabel USB dengan menggerakan ke kanan-kiri.Port USb tidak akan bisa di perbaiki jika sudah rusak.Satu-satu nya cara adalah mengganti dengan suku cadang yang baru.</il>');
INSERT INTO `db_hardware` VALUES ('34', 'K04', 'C10', 'Elemen bagian samping tidak bekerja; Hal ini biasa terjadi setelah anda mengganti Bezel (tulang samping pada BlackBerry). Jika anda perhatikan Bezel ini bukan hanya sekedar hiasan. Tapi,merupakan tempat meletakan elemen. Seperti tombol suara,USB port,Jack Headphone, dan lain-lain. Mungkin saja Bezel baru tersebut tidak terpasang dengan benar, sehingga fitur tidak berjalan dengan baik.', '<li>Cara teraman adalah dengan mengganti kembali dengan Bezel yang original. Namun,jika anda terlanjur suka dengan Bezel yang baru. Saya sarankan untuk mengecek dan membetulkan letak Bezel tersebut.</li>');

-- ----------------------------
-- Table structure for db_pengguna
-- ----------------------------
DROP TABLE IF EXISTS `db_pengguna`;
CREATE TABLE `db_pengguna` (
  `id_nama` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `tanggal` datetime NOT NULL,
  `strata` enum('1','2') NOT NULL DEFAULT '2',
  PRIMARY KEY (`id_nama`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_pengguna
-- ----------------------------
INSERT INTO `db_pengguna` VALUES ('1', 'rochmad', 'rochmad@tege.com', '13c8ab2da4d7e9259836ebc4b125797fe12c8ac0aa9ab5f81836abc81d5bd6170b74ba82034139ca5991810bdfdc2bb376877a3c36c2abdefb32c46e8c56ba85', '2014-01-25 22:33:49', '1');
INSERT INTO `db_pengguna` VALUES ('2', 'defri', 'defri@tege.com', '031bf0e4cd8e8d65a2a2cda89b6d52683fe314982338ca4b4c0b3ea0f3d1cd5a8b17755bf3071d98117d26a4f0f8b284044b80f0c457ed23e40584c74b03543f', '2014-01-29 16:07:41', '2');
INSERT INTO `db_pengguna` VALUES ('8', 'egasaputro', 'ega@tege.com', 'a43ea0faa75cf04e989db36fb6956cc6001f7941e9173ce9040b91a0170ee60d4dfb6c7913c13b42f096852b1bb58b60dc41b38bda40e6015170114cd40473be', '2014-01-31 10:53:06', '2');

-- ----------------------------
-- Table structure for db_software
-- ----------------------------
DROP TABLE IF EXISTS `db_software`;
CREATE TABLE `db_software` (
  `id_masalah` int(11) NOT NULL AUTO_INCREMENT,
  `kd_tipe` varchar(5) NOT NULL,
  `kd_masalah` varchar(5) NOT NULL,
  `masalah` text NOT NULL,
  `solusi` text,
  PRIMARY KEY (`id_masalah`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_software
-- ----------------------------
INSERT INTO `db_software` VALUES ('1', 'K01', 'B01', 'Email sudah di hapus tetapi masih ada; Ada beberapa penyebab masalah ini. Bisa karena tidak sinkron atau data base error.										\r\n', '<li>Salah satu cara mengatasi masalah ini adalah setelah menghapus email dari outlook inbox, hapus secara permanen dengan menekan tombol SHIFT dan DELETE secara bersamaan. Bisa juga dengan cara manual, yaitu menghapus item folder.</li>');
INSERT INTO `db_software` VALUES ('2', 'K01', 'B02', 'Email tidak masuk; Terkadang email tidak masuk ke dalam kotak inbox. Ini di sebabkan memory BlackBerry anda sudah penuh. Sehingga, email-email baru tidak bisa masuk.', '<li>Untuk mengatasi nya kita bisa melakukan pendaftaran ulang. Cara nya,masuk ke Menu utama pilih Advance Option, lalu arah kan ke Host Rotating Table pilih Menu, Register Now dan terakhir Registration Message Sent.</li>');
INSERT INTO `db_software` VALUES ('3', 'K01', 'B03', 'Tidak bisa mengirim email; Hal ini dapat terjadi karena ada nya masalah pada servis jaringan GPRS.', '<li>Pertama, anda bisa melakukan soft reset yaitu dengan menekan tombol ALT+CAP+DELETE secara bersamaan. Kedua, melakukan hard reset dengan menekan tombol reset yang terletak di belakang BlackBerry. Cek lambang antena di BlackBerry anda. Setelah melakukan ke reset ini seharus nya lambang antena telah menunjukan sinyal GPRS. Cobalah untuk mengirimkan email ke diri sendiri dulu.</li>');
INSERT INTO `db_software` VALUES ('4', 'K01', 'B04', 'Mati ketika akan menjawab panggilan masuk.', '<li>Cara paling ampuh untuk mengatasi masalah ini adalah mencabut batere dari BlackBerry anda. Biasakan untuk mencabut batere minimal satu minggu sekali. Biarkan kira-kira lima sampai sepuluh menit lalu masukan kembali. Hal ini dilakukan untuk me refresh memory BlackBerry.</li>');
INSERT INTO `db_software` VALUES ('5', 'K01', 'B05', 'Layar sering ngeblank.', '<li>Coba lakukan soft reset dan cabut memory card jika ada. Kalau hal ini tidak berhasil coba melakukan Upgrade atau Downgrade operasi sistem BlackBerry anda.</li>');
INSERT INTO `db_software` VALUES ('6', 'K02', 'T01', 'Email sudah di hapus tetapi masih ada; Ada beberapa penyebab masalah ini. Bisa karena tidak sinkron atau data base error.', '<li>Salah satu cara mengatasi masalah ini adalah setelah menghapus email dari outlook inbox, hapus secara permanen dengan menekan tombol SHIFT dan DELETE secara bersamaan. Bisa juga dengan cara manual, yaitu menghapus item folder.</li>');
INSERT INTO `db_software` VALUES ('7', 'K02', 'T02', 'Email tidak masuk; Terkadang email tidak masuk ke dalam kotak inbox. Ini di sebabkan memory BlackBerry anda sudah penuh. Sehingga, email-email baru tidak bisa masuk.', '<li>Untuk mengatasi nya kita bisa melakukan pendaftaran ulang. Cara nya,masuk ke Menu utama pilih Advance Option, lalu arah kan ke Host Rotating Table pilih Menu, Register Now dan terakhir Registration Message Sent.</li>');
INSERT INTO `db_software` VALUES ('8', 'K02', 'T03', 'Tidak bisa mengirim email; Hal ini dapat terjadi karena ada nya masalah pada servis jaringan GPRS.', '<li>Pertama, anda bisa melakukan soft reset yaitu dengan menekan tombol ALT+CAP+DELETE secara bersamaan. Kedua, melakukan hard reset dengan menekan tombol reset yang terletak di belakang BlackBerry. Cek lambang antena di BlackBerry anda. Setelah melakukan ke reset ini seharus nya lambang antena telah menunjukan sinyal GPRS. Cobalah untuk mengirimkan email ke diri sendiri dulu.</li>');
INSERT INTO `db_software` VALUES ('9', 'K02', 'T04', 'Mati ketika akan menjawab panggilan masuk.', '<li>Cara paling ampuh untuk mengatasi masalah ini adalah mencabut batere dari BlackBerry anda. Biasakan untuk mencabut batere minimal satu minggu sekali. Biarkan kira-kira lima sampai sepuluh menit lalu masukan kembali. Hal ini dilakukan untuk me refresh memory BlackBerry.</li>');
INSERT INTO `db_software` VALUES ('10', 'K02', 'T05', 'Layar sering ngeblank.', '<li>Coba lakukan soft reset dan cabut memory card jika ada. Kalau hal ini tidak berhasil coba melakukan Upgrade atau Downgrade operasi sistem BlackBerry anda.</li>');
INSERT INTO `db_software` VALUES ('11', 'K03', 'S01', 'Email sudah di hapus tetapi masih ada; Ada beberapa penyebab masalah ini. Bisa karena tidak sinkron atau data base error.', '<li>Salah satu cara mengatasi masalah ini adalah setelah menghapus email dari outlook inbox, hapus secara permanen dengan menekan tombol SHIFT dan DELETE secara bersamaan. Bisa juga dengan cara manual, yaitu menghapus item folder.</li>');
INSERT INTO `db_software` VALUES ('12', 'K03', 'S02', 'Email tidak masuk; Terkadang email tidak masuk ke dalam kotak inbox. Ini di sebabkan memory BlackBerry anda sudah penuh. Sehingga, email-email baru tidak bisa masuk.', '<li>Untuk mengatasi nya kita bisa melakukan pendaftaran ulang. Cara nya,masuk ke Menu utama pilih Advance Option, lalu arah kan ke Host Rotating Table pilih Menu, Register Now dan terakhir Registration Message Sent.</li>');
INSERT INTO `db_software` VALUES ('13', 'K03', 'S03', 'Tidak bisa mengirim email; Hal ini dapat terjadi karena ada nya masalah pada servis jaringan GPRS.', '<li>Pertama, anda bisa melakukan soft reset yaitu dengan menekan tombol ALT+CAP+DELETE secara bersamaan. Kedua, melakukan hard reset dengan menekan tombol reset yang terletak di belakang BlackBerry. Cek lambang antena di BlackBerry anda. Setelah melakukan ke reset ini seharus nya lambang antena telah menunjukan sinyal GPRS. Cobalah untuk mengirimkan email ke diri sendiri dulu.</li>');
INSERT INTO `db_software` VALUES ('14', 'K03', 'S04', 'Mati ketika akan menjawab panggilan masuk.', '<li>Cara paling ampuh untuk mengatasi masalah ini adalah mencabut batere dari BlackBerry anda. Biasakan untuk mencabut batere minimal satu minggu sekali. Biarkan kira-kira lima sampai sepuluh menit lalu masukan kembali. Hal ini dilakukan untuk me refresh memory BlackBerry.</li>');
INSERT INTO `db_software` VALUES ('15', 'K03', 'S05', 'Layar sering ngeblank.', '<li>Coba lakukan soft reset dan cabut memory card jika ada. Kalau hal ini tidak berhasil coba melakukan Upgrade atau Downgrade operasi sistem BlackBerry anda.</li>');
INSERT INTO `db_software` VALUES ('16', 'K04', 'C01', 'Email sudah di hapus tetapi masih ada; Ada beberapa penyebab masalah ini. Bisa karena tidak sinkron atau data base error.', '<li>Salah satu cara mengatasi masalah ini adalah setelah menghapus email dari outlook inbox, hapus secara permanen dengan menekan tombol SHIFT dan DELETE secara bersamaan. Bisa juga dengan cara manual, yaitu menghapus item folder.</li>');
INSERT INTO `db_software` VALUES ('17', 'K04', 'C02', 'Email tidak masuk; Terkadang email tidak masuk ke dalam kotak inbox. Ini di sebabkan memory BlackBerry anda sudah penuh. Sehingga, email - email baru tidak bisa masuk.', '<li>Untuk mengatasi nya kita bisa melakukan pendaftaran ulang. Cara nya,masuk ke Menu utama pilih Advance Option, lalu arah kan ke Host Rotating Table pilih Menu, Register Now dan terakhir Registration Message Sent.</li>');
INSERT INTO `db_software` VALUES ('18', 'K04', 'C03', 'Tidak bisa mengirim email; Hal ini dapat terjadi karena ada nya masalah pada servis jaringan GPRS.', '<li>Pertama, anda bisa melakukan soft reset yaitu dengan menekan tombol ALT+CAP+DELETE secara bersamaan. Kedua, melakukan hard reset dengan menekan tombol reset yang terletak di belakang BlackBerry. Cek lambang antena di BlackBerry anda. Setelah melakukan ke reset ini seharus nya lambang antena telah menunjukan sinyal GPRS. Cobalah untuk mengirimkan email ke diri sendiri dulu.</li>');
INSERT INTO `db_software` VALUES ('19', 'K04', 'C04', 'Mati ketika akan menjawab panggilan masuk.', '<li>Cara paling ampuh untuk mengatasi masalah ini adalah mencabut batere dari BlackBerry anda. Biasakan untuk mencabut batere minimal satu minggu sekali. Biarkan kira-kira lima sampai sepuluh menit lalu masukan kembali. Hal ini dilakukan untuk me refresh memory BlackBerry.</li>');
INSERT INTO `db_software` VALUES ('20', 'K04', 'C05', 'Layar sering ngeblank.', '<li>Coba lakukan soft reset dan cabut memory card jika ada. Kalau hal ini tidak berhasil coba melakukan Upgrade atau Downgrade operasi sistem BlackBerry anda.</li>');

-- ----------------------------
-- Table structure for db_tipe
-- ----------------------------
DROP TABLE IF EXISTS `db_tipe`;
CREATE TABLE `db_tipe` (
  `id_tipe` int(11) NOT NULL AUTO_INCREMENT,
  `kd_tipe` varchar(5) NOT NULL,
  `nama_tipe` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tipe`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of db_tipe
-- ----------------------------
INSERT INTO `db_tipe` VALUES ('1', 'K01', 'Bold');
INSERT INTO `db_tipe` VALUES ('2', 'K02 ', 'Torch');
INSERT INTO `db_tipe` VALUES ('3', 'K03', 'Storm');
INSERT INTO `db_tipe` VALUES ('4', 'K04', 'Curve');
