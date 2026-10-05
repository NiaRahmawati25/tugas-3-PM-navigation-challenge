import 'package:flutter/material.dart';
import 'package:praktikum_minggu3/screens/course_list_screen.dart';

class HomeScreen extends StatelessWidget {
  static String id = '/home';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // TAMBAHAN UI
              Icon(
                Icons.school,
                size: 90,
                color: Colors.deepPurple,
              ),

              // TAMBAHAN UI
              SizedBox(height: 20),

              // TAMBAHAN UI
              Text(
                "Course Navigation App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              SizedBox(height: 10),

              // TAMBAHAN UI
              Text(
                "Aplikasi untuk melihat daftar mata kuliah dan detailnya.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),

              // TAMBAHAN UI
              SizedBox(height: 30),

              // KODE AWAL
              ElevatedButton(
                onPressed: () {
                  //untuk perpindahan halaman tanpa routes
                  // Navigator.push(context, MaterialPageRoute(builder: (context)=> 
                  // CourseListScreen()
                  //     ),
                  //     );

                  //untuk perpindahan halaman tanpa routes
                  Navigator.pushNamed(context, CourseListScreen.id);
                },

                // TAMBAHAN UI
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                child: Text(
                  "Buka List Mata Kuliah",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}