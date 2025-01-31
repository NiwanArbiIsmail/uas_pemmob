// lib/services/api_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String _baseUrl = 'https://jsonplaceholder.typicode.com';  // Ganti dengan URL API Anda

  // Fungsi untuk mengambil data dari API
  Future<List<dynamic>> fetchData() async {
    final response = await http.get(Uri.parse('$_baseUrl/posts'));  // Mengambil data posts

    if (response.statusCode == 200) {
      // Jika berhasil, decode JSON dan kembalikan sebagai list
      return json.decode(response.body);
    } else {
      throw Exception('Failed to load data');
    }
  }
}
