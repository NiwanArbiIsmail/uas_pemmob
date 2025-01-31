import 'package:flutter/material.dart';

class HealthyLivingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hidup Sehat & Menjaga Lingkungan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Tips Hidup Sehat:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. Rutin berolahraga.\n'
              '2. Makan makanan bergizi dan seimbang.\n'
              '3. Istirahat yang cukup.\n'
              '4. Hindari stres.\n'
              '5. Minum air putih yang cukup.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Menjaga Lingkungan:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. Kurangi penggunaan plastik sekali pakai.\n'
              '2. Hemat energi dan air.\n'
              '3. Daur ulang sampah.\n'
              '4. Tanam pohon untuk menyerap CO2.',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Bermusyawarah untuk Kebaikan Bersama:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              '1. Diskusikan masalah secara terbuka dan jujur.\n'
              '2. Dengarkan pendapat orang lain.\n'
              '3. Ambil keputusan bersama demi kebaikan bersama.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
