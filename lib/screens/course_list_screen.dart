import 'package:flutter/material.dart';
import 'course_detail_screen.dart';

class CourseListScreen extends StatelessWidget {
    static String id = '/course_list';
  const CourseListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TAMBAHAN UI
      appBar: AppBar(
        title: Text(
          "Course List",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),

      body: ListView(
        padding: EdgeInsets.all(16),
        children: [

          /// TAMBAHAN UI
          Text(
            "Daftar Mata Kuliah",
            textAlign: TextAlign.center,
            style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),

          // TAMBAHAN UI
          SizedBox(height: 6),

          // TAMBAHAN UI
          Text(
            "Pilih mata kuliah untuk melihat detail",
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.grey,
          ),
        ),

          // TAMBAHAN UI
          SizedBox(height: 16),

          // TAMBAHAN UI
          Card(
            elevation: 3,
            child: ListTile(
              // TAMBAHAN UI
              leading: Icon(
                Icons.phone_android,
                color: Colors.deepPurple,
              ),

              title: Text(
                "Pemrograman Mobile",
                // TAMBAHAN UI
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              subtitle: Text('3 SKS • Semester 5'),

              trailing: Icon(Icons.chevron_right),

              onTap: (){
              //Cara navigasi tanpa routes
              //     Navigator.push(context, 
              //     MaterialPageRoute(builder: (context)=> 
              //     CourseDetailScreen(nama: "Pemrograman Mobile", sks: 3),
              //     ),
              // );

              //Cara navigasi dengan routes
              Navigator.pushNamed(context, CourseDetailScreen.id, arguments: {
                  'nama':"Pemrograman Mobile",
                  'kode':"IE104",
                  'sks': 3,
                  'semester': 5,
              });
              },
            ),
          ),

          Divider(),

          // TAMBAHAN UI
          Card(
            elevation: 3,
            child: ListTile(
              // TAMBAHAN UI
              leading: Icon(
                Icons.storage,
                color: Colors.blue,
              ),

              title: Text(
                "Basis Data",
                // TAMBAHAN UI
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              subtitle: Text('2 SKS • Semester 2'),

              trailing: Icon(Icons.chevron_right),

              onTap: (){
                  //Cara navigasi tanpa routes
                  // Navigator.push(context, 
                  // MaterialPageRoute(builder: (context)=> 
                  // CourseDetailScreen(nama: "Basis Data", sks: 2),
                  // ),
              // );

              //Cara navigasi dengan routes
              Navigator.pushNamed(context, CourseDetailScreen.id, arguments: {
                  'nama':"Basis Data",
                  'kode':"IE202",
                  'sks': 2,
                  'semester': 2,
              });
              },
            ),
          ),

          Divider(),

          // TAMBAHAN UI
          Card(
            elevation: 3,
            child: ListTile(
              // TAMBAHAN UI
              leading: Icon(
                Icons.wifi,
                color: Colors.green,
              ),

              title: Text(
                "Jaringan Komputer",
                // TAMBAHAN UI
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              subtitle: Text('4 SKS • Semester 2'),

              trailing: Icon(Icons.chevron_right),

              onTap: (){
                  //Cara navigasi tanpa routes
              //     Navigator.push(context, 
              //     MaterialPageRoute(builder: (context)=> 
              //     CourseDetailScreen(nama: "Jaringan Komputer", sks: 4),
              //     ),
              // );
              //Cara navigasi dengan routes
              Navigator.pushNamed(context, CourseDetailScreen.id, arguments: {
                  'nama':"Jaringan Komputer",
                  'kode':"IE204",
                  'sks': 4,
                  'semester': 2,
              });
              },
            ),
          ),

          Divider(),

          // TAMBAHAN UI
          Card(
            elevation: 3,
            child: ListTile(
              // TAMBAHAN UI
              leading: Icon(
                Icons.web,
                color: Colors.orange,
              ),

              title: Text(
                "Pemrograman Web",
                // TAMBAHAN UI
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              subtitle: Text('3 SKS • Semester 4'),

              trailing: Icon(Icons.chevron_right),

              onTap: (){
                  //Cara navigasi tanpa routes
              //     Navigator.push(context, 
              //     MaterialPageRoute(builder: (context)=> 
              //     CourseDetailScreen(nama: "Pemrograman Web", sks: 3),
              //     ),
              // );
              //Cara navigasi dengan routes
              Navigator.pushNamed(context, CourseDetailScreen.id, arguments: {
                  'nama':"Pemrograman Web",
                  'kode':"IE407",
                  'sks': 3,
                  'semester': 4,
              });
              },
            ),
          ),

          Divider(),

          // TAMBAHAN UI
          Card(
            elevation: 3,
            child: ListTile(
              // TAMBAHAN UI
              leading: Icon(
                Icons.calculate,
                color: Colors.red,
              ),

              title: Text(
                "Kalkulus",
                // TAMBAHAN UI
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),

              // TAMBAHAN UI
              subtitle: Text('6 SKS • Semester 2'),

              trailing: Icon(Icons.chevron_right),

              onTap: (){
                  //Cara navigasi tanpa routes
              //     Navigator.push(context, 
              //     MaterialPageRoute(builder: (context)=> 
              //     CourseDetailScreen(nama: "Kalkulus", sks: 6),
              //     ),
              // );
              //Cara navigasi dengan routes
              Navigator.pushNamed(context, CourseDetailScreen.id, arguments: {
                  'nama':"Kalkulus",
                  'kode':"FE202",
                  'sks': 6,
                  'semester': 2,
              });
              },
            ),
          ), 

        ],
      ),
    );
  }
}