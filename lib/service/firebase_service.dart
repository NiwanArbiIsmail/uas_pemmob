// lib/service/firebase_service.dart
import 'package:firebase_core/firebase_core.dart';

class FirebaseService {
  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp();
  }
}
