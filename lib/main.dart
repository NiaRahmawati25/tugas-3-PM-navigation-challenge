import 'package:flutter/material.dart';
import 'package:praktikum_minggu3/screens/course_detail_screen.dart';
import 'package:praktikum_minggu3/screens/course_list_screen.dart';
import 'package:praktikum_minggu3/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context)=> HomeScreen(),
        CourseListScreen.id: (context)=> CourseListScreen(),
        CourseDetailScreen.id:(context) => CourseDetailScreen(),
      },
      // Jika sudah menggunakan name route maka property home tidak dibutuhkan
      // home: HomeScreen(),
    );
  }
}