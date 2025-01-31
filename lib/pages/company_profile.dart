import 'package:flutter/material.dart';

class CompanyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil Perusahaan"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Informasi Perusahaan akan ditampilkan di sini"),
            // Bisa diintegrasikan dengan Firebase untuk mengambil data perusahaan
          ],
        ),
      ),
    );
  }
}
