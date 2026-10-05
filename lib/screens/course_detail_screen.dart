import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  static String id = '/course_detail';

  // final String nama;
  // final int sks;
  // versi tanpa route
  // const CourseDetailScreen({super.key,required this.nama,required this.sks});

  const CourseDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //versi dengan route
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final String nama = args['nama'].toString();
    final String kode = args['kode'].toString();
    final int sks = int.parse(args['sks'].toString());
    final int semester = int.parse(args['semester'].toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Course Detail",
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
                Icons.menu_book,
                size: 80,
                color: Colors.deepPurple,
              ),

              // TAMBAHAN UI
              SizedBox(height: 20),

              Text(
                "Detail Mata Kuliah",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              SizedBox(height: 20),

              // TAMBAHAN UI
              Card(
                elevation: 3,
                child: Padding(
                  padding: EdgeInsets.all(20),

                  child: Column(
                    children: [

                      Text(
                        nama,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: 16),

                      // TAMBAHAN UI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.code,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Kode: $kode',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      // TAMBAHAN UI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.credit_card,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 8),
                          Text(
                            '$sks SKS',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12),

                      // TAMBAHAN UI
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.school,
                            color: Colors.deepPurple,
                          ),
                          SizedBox(width: 8),
                          Text(
                            'Semester: $semester',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // KODE AWAL
              SizedBox(height: 24),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },

                // TAMBAHAN UI
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                child: Text(
                  "Kembali",
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