import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'identitas.dart';
 
class ProfileScreen extends StatelessWidget {
  final Identitas identitas;
 
  ProfileScreen({required this.identitas});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(identitas.daftar),
        backgroundColor: const Color.fromARGB(255, 110, 209, 255),
        centerTitle: true,
      ),
      body: Center(
        // Menempatkan konten di tengah layar
        child: SingleChildScrollView(
          // untuk membuat konten dapat di-scroll
          child: Padding(
            padding: EdgeInsets.all(10),
            // child: center
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Bagian Foto Profil dan Nama
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(identitas.foto),
                      radius: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      identitas.nama,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Nama',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  identitas.nama,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Tempat Tanggal Lahir',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  identitas.ttl,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Alamat',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  identitas.alamat,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Nomor Handphone',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Text(
                  identitas.hp,
                  style: TextStyle(fontSize: 15),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Email',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                // Menggunakan InkWell untuk membuat link dapat diklik
                InkWell(
                  onTap: () async {
                    final emailUrl = 'mailto:${identitas.email}';
                    if (await canLaunch(emailUrl)) {
                      await launch(emailUrl);
                    } else {
                      throw 'Tidak dapat membuka email $emailUrl';
                    }
                  },
                  child: Text(
                    identitas.email,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Url Profile Github',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                // Menggunakan InkWell untuk membuat link dapat diklik
                InkWell(
                  onTap: () async {
                    // Menggunakan package url_launcher untuk membuka URL
                    if (await canLaunch(identitas.url)) {
                      await launch(identitas.url);
                    } else {
                      throw 'Tidak dapat membuka URL $identitas.url';
                    }
                  },
                  child: Text(
                    identitas.url,
                    style: TextStyle(fontSize: 15, color: Colors.blue),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Riwayat Pendidikan',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: identitas.pendidikan.map((pendidikan) {
                    return Text(
                      '$pendidikan',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center,
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                Text(
                  'Penghargaan',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: identitas.penghargaan.map((penghargaan) {
                    return Text(
                      '$penghargaan',
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
 