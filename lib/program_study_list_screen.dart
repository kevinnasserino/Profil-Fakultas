import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'program_study_details_screen.dart';
import 'profile_screen.dart';
import 'program_study.dart';
import 'identitas.dart';
import 'constants.dart';
 
class ProgramStudyListScreen extends StatelessWidget {
  final List<ProgramStudy> programStudies = Constants.programStudies;
  final List<Identitas> identity = Constants.identity;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'assets/6.png', // Ganti dengan path gambar yang sesuai
                height: 45, // Sesuaikan tinggi gambar dengan teks
                width: 45, // Sesuaikan lebar gambar dengan teks
              ),
            ),
            Text(
              'Fakultas Teknik',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 110, 209, 255),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(children: [
              Image.asset(
                'assets/teknik.jpg',
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'Dalam perjalanannya sesuai dengan aturan dari Kementerian Pendidikan Kebudayaan Riset dan Teknologi yang sebelumnya bernama Kemenristekdikti tentang Penegerian UPN “Veteran” Jawa Timur berdasarkan Peraturan Presiden Republik Indonesia Nomor 122 Tahun 2014,  tanggal 6 Oktober 2014, Pada tahun Akademik 2016/2017 FTI dan FTSP bergabung menjadi Fakultas Teknik, dengan bertambahnya Prodi Teknik Mesin, Magister Ilmu Lingkungan dan Fisika. Sampai dengan tahun 2023 Fakultas Teknik terdiri dari 6 Program Studi, diantaranya yaitu : ',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: programStudies.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                programStudies[index].logo,
                                width: 200,
                                height: 100,
                              ),
                              SizedBox(width: 40),
                              Text(
                                programStudies[index].name,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProgramStudyDetailsScreen(
                            programStudy: programStudies[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(width: 40),
            Text(
              '\n\nDAFTAR PROFIL PELAKSANA PROJECT',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: identity.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 8, 8, 8)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                identity[index].foto,
                                width: 200,
                                height: 100,
                              ),
                              SizedBox(width: 40),
                              Text(
                                identity[index].daftar,
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfileScreen(
                            identitas: identity[index],
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}