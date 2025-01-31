import 'package:flutter/material.dart';

class CommunityProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Masyarakat"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Data Masyarakat akan ditampilkan di sini"),
            // Integrasi Firebase untuk mengambil data masyarakat
          ],
        ),
      ),
    );
  }
}
