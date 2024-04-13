import 'package:flutter/material.dart';

class Komunitas extends StatelessWidget {
  const Komunitas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            _buildKomunitasCard("LULUS SBMPTN 2022"),
            // Tambahkan komunitas yang sudah jadi di sini
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _tambahKomunitas(context);
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget _buildKomunitasCard(String namaKomunitas) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/WhatsApp Image 2024-04-10 at 14.14.21_6a359339.jpg'), // Ganti dengan asset gambar Anda
        ),
        title: Text(namaKomunitas),
        subtitle: Text('Deskripsi komunitas'),
        onTap: () {
          // Tambahkan aksi ketika komunitas diklik
        },
      ),
    );
  }

  void _tambahKomunitas(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Buat Komunitas Baru'),
          content: TextField(
            controller: _controller,
            decoration: InputDecoration(labelText: 'Nama Komunitas'),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                _buatKomunitas(_controller.text, context);
              },
              child: Text('Buat'),
            ),
          ],
        );
      },
    );
  }

  void _buatKomunitas(String namaKomunitas, BuildContext context) {
    // Tambahkan logika untuk membuat komunitas baru di sini
    print('Komunitas baru ditambahkan: $namaKomunitas');
    Navigator.of(context).pop(); // Tutup dialog setelah membuat komunitas baru
    // Untuk contoh sederhana, kita hanya mencetak nama komunitas
  }
}
