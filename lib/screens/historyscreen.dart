import 'dart:math';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  // Daftar nama-nama soal
  final List<String> daftarNamaSoal = [
    'Soal Matematika',
    'Soal Bahasa Indonesia',
    'Soal IPA',
    'Soal IPS',
    'Soal Seni Budaya',
    'Soal Pendidikan Agama',
    'Soal Olahraga',
    'Soal Teknologi Informasi',
    'Soal Bahasa Asing',
    'Soal Kewarganegaraan'
  ];

  final List<String> listSoal1 = [
    "1+2=",
    "2x3=",
  ];

  final List<Map<String, dynamic>> listSoalGG = [
    {
      "pertanyaan":
          "Negara yang pertama kali mendaratkan manusia di bulan adalah...",
      "jawaban": [
        {"teks": "Amerika Serikat", "benar": true},
        {"teks": "Uni Soviet", "benar": false},
        {"teks": "China", "benar": false}
      ]
    },
    {
      "pertanyaan":
          "Faktor utama yang menyebabkan terjadinya revolusi industri adalah...",
      "jawaban": [
        {"teks": "Penemuan mesin uap", "benar": true},
        {"teks": "Perkembangan teknologi informasi", "benar": false},
        {"teks": "Perang Dunia II", "benar": false}
      ]
    },
    {
      "pertanyaan": "Bentuk negara Indonesia adalah...",
      "jawaban": [
        {"teks": "Republik", "benar": true},
        {"teks": "Kerajaan", "benar": false},
        {"teks": "Komunis", "benar": false}
      ]
    }
  ];

  // Daftar waktu pengerjaan secara acak (dalam menit)
  final List<int> daftarWaktu =
      List.generate(10, (index) => Random().nextInt(20) + 5);

  // Daftar status untuk setiap soal (0: belum dijawab, 1: sudah selesai, 2: belum selesai)
  final List<int> daftarStatus =
      List.generate(10, (index) => Random().nextInt(3));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
      ),
      body: ListView.builder(
        itemCount:
            daftarNamaSoal.length, // Menggunakan panjang daftar nama soal
        itemBuilder: (context, index) {
          String statusText = '';

          // Menentukan teks status berdasarkan nilai status soal
          switch (daftarStatus[index]) {
            case 0:
              statusText = 'Belum dijawab';
              break;
            case 1:
              statusText = 'Sudah selesai';
              break;
            case 2:
              statusText = 'Belum selesai';
              break;
          }

          return ListTile(
            leading: CircleAvatar(
              backgroundColor: _getColorByStatus(daftarStatus[index]),
              child: Icon(Icons.assignment),
            ),
            title:
                Text(daftarNamaSoal[index]), // Mengambil nama soal dari daftar
            subtitle: Text(
                'Waktu pengerjaan: ${daftarWaktu[index]} menit\nStatus: $statusText'),
            onTap: () {
              // Menavigasi ke halaman detail soal dengan parameter yang sesuai
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(
                          namaSoal: daftarNamaSoal[index],
                          listSoal: listSoalGG,
                        )),
              );
            },
          );
        },
      ),
    );
  }

  // Mendapatkan warna yang sesuai berdasarkan status soal
  Color _getColorByStatus(int status) {
    switch (status) {
      case 0:
        return Colors.grey; // Belum dijawab
      case 1:
        return Colors.green; // Sudah selesai
      case 2:
        return Colors.red; // Belum selesai
      default:
        return Colors.grey;
    }
  }
}

// Halaman detail soal

class DetailScreen extends StatelessWidget {
  final String namaSoal;
  final List<Map<String, dynamic>> listSoal;

  DetailScreen({required this.namaSoal, required this.listSoal});

  @override
  Widget build(BuildContext context) {
    String soal = '';

    switch (namaSoal) {
      case 'Soal Matematika':
        soal = listSoal[0]['pertanyaan'].toString();
        break;
      case 'Soal Bahasa Indonesia':
        soal = listSoal[1]['pertanyaan'].toString();
        break;
      default:
        soal = 'Soal tidak tersedia';
        break;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(namaSoal),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(soal),
          ],
        ),
      ),
    );
  }
}
