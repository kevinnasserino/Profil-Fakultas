import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'program_study.dart';
 
class ProgramStudyDetailsScreen extends StatelessWidget {
  final ProgramStudy programStudy;
 
  ProgramStudyDetailsScreen({required this.programStudy});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(programStudy.name),
        backgroundColor: const Color.fromARGB(255, 110, 209, 255),
        centerTitle: true,
      ),
      body: Center(
        // Menempatkan konten di tengah layar
        child: SingleChildScrollView(
          // Menggunakan SingleChildScrollView untuk membuat konten dapat di-scroll
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  programStudy.logo,
                  width: 400,
                  height: 200,
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      programStudy.name,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Profile',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  programStudy.description,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Visi',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  programStudy.vision,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Misi',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  programStudy.mission,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Akreditasi : ${programStudy.accreditation}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Ketua Program Studi : ${programStudy.headOfProgram}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Laman Website Resmi :',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                // Menggunakan InkWell untuk membuat link dapat diklik
                InkWell(
                  onTap: () async {
                    // Menggunakan package url_launcher untuk membuka URL
                    if (await canLaunch(programStudy.website)) {
                      await launch(programStudy.website);
                    } else {
                      throw 'Tidak dapat membuka URL $programStudy.website';
                    }
                  },
                  child: Text(
                    programStudy.website,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Lecturers',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: programStudy.lecturers.map((lecturer) {
                    return Text(
                      '- $lecturer',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  'Prestasi Mahasiswa',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: programStudy.achievements.map((achievement) {
                    return Text(
                      '- $achievement',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 