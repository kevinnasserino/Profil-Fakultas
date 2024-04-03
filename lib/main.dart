import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'program_study_list_screen.dart';
import 'program_study.dart';
import 'identitas.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProgramStudyListScreen(),
    );
  }
}