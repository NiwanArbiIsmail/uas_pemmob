import 'package:flutter/material.dart';
import 'pages/company_profile.dart';
import 'service/firebase_service.dart';
import 'pages/community_profile.dart';
import 'pages/dashboard.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FirebaseService.initializeFirebase();  // Inisialisasi Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Sehat Lingkungan',
      initialRoute: '/',
      routes: {
        '/': (context) => CompanyProfilePage(),
        '/company': (context) => CompanyProfilePage(),
        '/community': (context) => CommunityProfilePage(),
        '/dashboard': (context) => DashboardPage(),
      },
    );
  }
}
