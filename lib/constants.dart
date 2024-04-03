import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'program_study.dart';
import 'identitas.dart';
 
class Constants {
  static List<ProgramStudy> programStudies = [
    ProgramStudy(
      name: 'Teknik Kimia\n',
      description:
          'Prodi Teknik Kimia adalah bidang yang mempelajari proses kimia yang berhubungan dengan transpormasi bahan baku menjadi produk melewati proses-proses kimiawi dan fisik.',
      logo: 'assets/1.png',
      vision:
          '“Menjadi Program Studi yang unggul dalam IPTEK di bidang Teknik Kimia yang berkarakter bela negara.”',
      mission:
          '1. Menyelenggarakan proses pendidikan dan pengajaran yang berkompetensi,  berwawasan technopreneur dan berkarakter bela negara.\n'
          '2. Menyelenggarakan kegiatan penelitian dasar dan terapan, khususnya di bidang pengelolaan sumber daya alam, energi yang berwawasan lingkungan.\n'
          '3. Menyelenggarakan kegiatan pengabdian kepada masyarakat melalui penerapan iptek.\n'
          '4. Menyelenggarakan tata kelola program studi yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran dan.\n'
          '5. Mengembangkan kualitas tenaga pengajar, tenaga kependidikan unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan , dan manajerial.\n'
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana kegiatan proses belajar mengajar ,laboratorium dasar dan, laboratorium profesional.\n'
          '7. Menyelenggarakan kerjasama dengan pemerintah, industri, lembaga pendidikan dan penelitian, termasuk luar negeri.',
      accreditation: 'A',
      headOfProgram: 'Dr. Ir. Sintha Soraya Santi, MT',
      website: 'https://tekkimia.upnjatim.ac.id/',
      achievements: [
        'Fitrah Guna Muhammad (2021) - Juara 2 Lomba Demo Jujitsu Unesa Open 2023',
        'Irham Alva Royyan (2020) - Juara 1 Essay Nasional 2023',
        'Nashrul Amin (2022) - Peraih Medali Emas - Kompetisi Sains Indonesia Merdeka (KOSMIK) 2023',
        'FildzahS fiia Putri (2020) - Ouara II Tari Modern Dance Accent Cover Competition',
        'Dewa Ayu Putri Maheswari (2020) - 3uara Harapan 3 dalam Lomba Orasi Universitas Muhammadiyah Surabaya Championship',
      ],
      lecturers: [
        'Prof. Dr. Ir. Ni Ketut Sari',
        'M.T. Dr. Ir. Srie Muljani',
        'M.T.Ir. Siswanto, M.S.'
      ],
    ),
    ProgramStudy(
      name: 'Teknik Mesin\n',
      description:
          'Teknik Mesin merupakan bidang keilmuan yang mempelajari prinsip dasar fisika untuk analisis, desain, manufaktur, dan memelihara sebuah sistem mekanik. Ilmu ini terdiri dari sejumlah cabang ilmu, yakni mekanika, teknik material, kinematika, termodinamika, dan energi. Secara umum, Teknik Mesin terdiri dari Perancangan Mekanik dan Konstruksi, Proses Manufaktur dan Sistem Produksi, Konversi Energi, dan Metalurgi.',
      logo: 'assets/2.png',
      vision: '“Menjadi Program Studi Teknik Mesin Berkarakter Bela Negara”',
      mission:
          '1. Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara untuk menghasilkan lulusan yang mampu mengaplikasikan keahlian dengan memanfaatkan IPTEK di bidang Teknik Mesin serta menumbuhkan inovasi untuk menunjang proses industrialisasi, teknologi Biomedik, serta siap menghadapi tantangan era revolusi industri 4.0.\n'
          '2. Meningkatkan budaya riset dalam pengembangan IPTEK bidang Teknik Mesin yang berdaya guna untuk kesejahteraan masyarakat.\n'
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal di bidang Teknik Mesin.\n'
          '4. Meningkatkan manajemen program studi dan pengelolaan sarana prasarana terpadu, guna bisa menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintahan dan swasta.',
      accreditation: 'Unggul',
      headOfProgram: 'Dr.T.Ir. Luluk Edahwati, MT.',
      website: 'https://tekmesin.upnjatim.ac.id/',
      achievements: [
        'Nasiruddin Hanif (2022) - Jara 3 Medali Perunggu Cabor Pencak Silat kategori Tunggal Putra PORPROV JATIM VII Tahun 2022',
        'Nasiruddin Hanif (2022) - Juara 2 Kejurda Kota Surabaya Kategori Tnggal Putra Dewasa 2023',
        'Nasiruddin Hanif (2022) - Juara 2 Pencak Silat Pomprov Jatim2 2023',
      ],
      lecturers: [
        'Dr. Wahyu Dwi Lestari, S.Pd.,MT.',
        'Tria Puspa Sari, S.T., M.S.',
        'Wiliandi Saputro, S.T., M.Eng.'
      ],
    ),
    ProgramStudy(
      name: 'Teknik Sipil\n',
      description:
          'Program Studi Teknik Sipil UPN “Veteran” Jawa Timur berdiri tahun 1993 dengan status NEGERI KEDINASAN di bawah pengelolaan Departemen Pertahanan dan Keamanan dengan nama Fakutas Teknik Sipil dan Perencanaan (FTSP). Saat ini jumlah jumlah mahasiswa aktif S1 Teknik Sipil sekitar 560 orang terdiri dari tiga kelas untuk setiap angkatannya.',
      logo: 'assets/3.png',
      vision:
          '"Menjadi program studi yang unggul dalam pengembangan dan penerapan ilmu pengetahuan, teknologi (IPTEK) serta sumber daya manusia guna menumbuhkembangkan potensi daerah yang mampu bersaing dalam pasar bebas dan berkarakter bela negara."',
      mission:
          '1. Menyelenggarakan dan mengembangkan pendidikan di bidang teknik sipil berkarakter bela negara.\n'
          '2. Meningkatkan budaya riset dalam pengembangan bidang ilmu pengetahuan, dan teknologi (IPTEK) yang berdaya guna untuk kesejahteraan masyarakat.\n'
          '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal.\n'
          '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.\n'
          '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial.\n'
          '6. Meningkatkan sistem pengelolaan sarana dan prasarana.\n'
          '7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri.',
      accreditation: 'Baik Sekali',
      headOfProgram: 'Dr. Ir. Hendrata Wibisana, M.T.',
      website: 'https://teksipil.upnjatim.ac.id/',
      achievements: [
        'Alfreno Dwiki Pradana - 23035010033 - Juara 3 Kejuaraan Bola Voli "AIRLANGGA NATIONAL VOLLEYBALL CHAMPIONSHIP 2023"',
        'Izduhar Abdul Hafiz - 22035010135 - Juara 3 Kejuaraan Bola Voli "AIRLANGGA NATIONAL VOLLEYBALL CHAMPIONSHIP 2023"',
        'Alfirdaus Nawawi (2021) - Ouara 3 Civil Tender Competition 2023',
        'Izmanaya Avril Servanty (2021) - Ouara 3 Civil Tender Competition 2023',
        'Athailah Putra Setiawan (2022) - Ouara 3 Tanding Kejuaraan Pencak Silat Bandung Lautan Api International Championship 2023',
      ],
      lecturers: [
        'Dr. Ir. Minarni Nur Trilita, M.T.',
        'Novie Handajani, S.T., M.T.',
        'Iwan Wahjudijanto, S.T., M.T.'
      ],
    ),
    ProgramStudy(
      name: 'Teknik Industri\n',
      description:
          'Program Studi Teknik lndustri (Prodi TI) Fakultas Teknik UPN ”Veteran” Jawa Timur didirikan pada tahun 1990 dengan status Negeri Kedinasan. Pada tahun 1994, dengan adanya keputusan bersama Menhankam dan Mendikbud Nomor: Kep/0307/U/1994, statusnya berubah menjadi Swasta “Disamakan”.',
      logo: 'assets/4.png',
      vision:
          '"Revitalisasi sinergi demi terwujudnya HMTI yang responsif, kolaboratif, dan reliabel agar terbentuknya civitas akademika teknik industri UPNVJT yang berkompeten dan berintegritas dibidang akademik maupun non akademik."',
      mission:
          '1. Menjadikan himpunan mahasiswa teknik industri sebagai wadah pengembangan potensi diri dalam hal akademik dan non akademik melalui program kerja dan agenda.\n'
          '2. Memberikan ruang kritik sebagai sarana penyaluran aspirasi.\n'
          '3. Menguatkan hubungan internal HMTI UPNVJT yang harmoni dengan memberikan pelayanan yang komperehensif.\n'
          '4. Menjalin kerjasama aktif antar elemen eksternal.',
      accreditation: 'B',
      headOfProgram: 'Ir. Rushdiymto, MT.',
      website: 'https://tekindustri.upnjatim.ac.id/',
      achievements: [
        'Muhamad Mukhtarul Haqi (2020) - Juara 2 Kompetisi Esai Nasional 2023',
        'Bagus Wicaksono (2020) - Ouara 1 Pencak Silat Kelas 1 Putra Porprov Jawa Tengah 2023',
        'Tryandika Rizkat Prashodang (2021) - Juara 2 Kompetisi Esai Nasional 2023',
        'Achmad Gufron (2021) - Ouara 3 LKTIN Industrial Engineering Festival 2023',
      ],
      lecturers: [
        'Dr. Ir. Minto Waluyo, MM.',
        'Dr. Dira Ernawati, ST., MT.',
        'Ir. Rr. Rochmoeljati, MMT.'
      ],
    ),
    ProgramStudy(
      name: 'Teknologi Pangan\n',
      description:
          'Program Studi Teknologi Pangan mempunyai beban studi kumulatif sebesar minimal 145 sks dengan lama studi kumulatif standar, 8 sampai 14 semester. Spesifikasi keilmuan yang diberikan meliputi pemahaman hasil pertanian sebagai bahan biologis, pengetahuan tentang jenis-jenis proses utama dalam mengubah   bahan   biologis   menjadi   komoditi, pengetahuan  tentang   alat   dan   mesin   pengolahan, kemampuan   membahas   tentang   permasalahan   aspek-aspek   pengolahan   komoditas,   kemampuan melakukan rekayasa proses untuk produk baru serta cara pengoperasian unit pengolahan sebagai sistem dan optimasi sistem jaminan mutu pangan dan keamanan pangan.',
      logo: 'assets/5.png',
      vision:
          '"Menjadi Program Studi Teknologi Pangan yang berkualitas dibidang ilmu dan teknologi pangan yang berkarakter bela negara pada tahun 2024"',
      mission:
          '1. Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologi berkarakter bela negara.\n'
          '2. Mengembangkan sumber daya manusia yang berkualitas dalam bidang pendidikan, pengajaran, dan penelitian.\n'
          '3. Meningkatkan kualitas dan system pengolahan dan pengadaan sarana dan prasarana laboratorium.\n'
          '4. Menyelenggarakan kegiatan penelitian untuk pengembanganilmu teknologi pangan melalui rekayasa pangan berbahan baku local.\n'
          '5. Menyelenggarakan tata kelola yang baik, sehat, bersih dantransparan dalam rangka mencapai akuntabilitas pengelolaan program studi.\n'
          '6. Menyelenggarakan kerjasama pendidikan, penelitian dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.\n',
      accreditation: 'Unggul',
      headOfProgram: 'Dr. Rosida, S.TP, MP',
      website: 'https://tekpangan.upnjatim.ac.id/',
      achievements: [
        'Regita Widya Pramesti (2021) - Juara 1 Kumite Regional Elite Putri',
        'Regita Widya Pramesti (2021) - Juara 2 Lomba Demo Jujitsu Unesa Open 2023',
        'Alfina Ayu Puspita (2019) - Pendanaan Riset Program Indofood Riset Nugroho Periode 2022 - 2023',
        'Elistiya Nuraini Putri Hendrawan (2021) - Winner Of Miss Hijab Favorit Jawa Timur 2022 dan Top 20 Finalis Miss Hijab Jawa Timur 2022 dalam event Miss Hijab Jawa Timur 2022',
        'Talitha Ayu Daffa Athallah (2021) - Winner Duta Lingkungan Jawa Timur 2022 dalam Pemilihan Duta Lingkungan Jawa Timur 2022',
      ],
      lecturers: [
        'Dr. Dra. Jariyah, MP',
        'Dr. Dedin F. Rosida, S.TP M.Kes',
        'Dr. Ir. Sri Winarti, MP'
      ],
    ),
  ];
 
  static List<Identitas> identity = [
    Identitas(
      daftar: 'Profil Pelaksana 1',
      nama: 'Kevin Joy Nasserino\n',
      foto: 'assets/kevin.png',
      ttl: 'Merauke, 17 Juni 2004',
      alamat: 'Jalan Jemur Andayani No 1',
      hp: '081356272256',
      email: '22082010073@student.upnjatim.ac.id',
      url: 'https://github.com/kevinnasserino',
      pendidikan: [
        '1. SMAN 5 Jayapura',
      ],
      penghargaan: [
        '1. Juara 3 Olimpiade Komputer Matematika dan Statistika Tingkat Porvinsi (SMA)\n'
            '2. Juara 1 LCC 4 Pilar Tingkat Provinsi (SMA)',
      ],
    ),
    Identitas(
      daftar: 'Profil Pelaksana 2',
      nama: 'Anggi Trisna Sari\n',
      foto: 'assets/anggi.png',
      ttl: 'Surabaya, 12 Mei 2004',
      alamat: 'Jalan Plemahan XI Nomor 16',
      hp: '085739234449',
      email: '22082010078@student.upnjatim.ac.id',
      url: 'https://github.com/anggits12',
      pendidikan: [
        '1. SDN Kedungdoro V Surabaya\n'
            '2. SMPN 5 Surabaya\n'
            '3. SMAN 2 Surabaya',
      ],
      penghargaan: [
        '1. Juara 1 Dance Competition pada be the first Champion\n'
            '2. Peserta Semifinalis pada X-Project UI/Ux Competition',
      ],
    ),
  ];
}
  