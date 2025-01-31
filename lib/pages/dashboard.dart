import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard Kontrol"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Dashboard untuk kontrol aplikasi"),
            // Bisa menambahkan komponen kontrol atau monitoring lingkungan
          ],
        ),
      ),
    );
  }
}
