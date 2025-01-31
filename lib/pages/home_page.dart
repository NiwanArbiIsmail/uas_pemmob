// lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:uaspemmob/services/api_service.dart';  // Pastikan mengimpor ApiService dengan benar

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<dynamic>> posts;

  @override
  void initState() {
    super.initState();
    posts = ApiService().fetchData();  // Memanggil API saat widget pertama kali diinisialisasi
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplikasi Sehat Lingkungan - Home'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: posts, 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); 
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            var data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(data[index]['title']),
                  subtitle: Text(data[index]['body']),
                );
              },
            );
          } else {
            return Center(child: Text('No Data Available'));
          }
        },
      ),
    );
  }
}
