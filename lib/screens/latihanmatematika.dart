import 'package:flutter/material.dart';

class MathQuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math Quiz'),
      ),
      body: ListView.builder(
        itemCount: 50, // Jumlah soal
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Soal ${index + 1}'),
            subtitle: Text(
                'Pertanyaan untuk soal nomor ${index + 1}'), // Ganti dengan pertanyaan yang sesuai
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      MathQuizDetailScreen(soalIndex: index + 1),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class MathQuizDetailScreen extends StatelessWidget {
  final int soalIndex;

  MathQuizDetailScreen({required this.soalIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Soal $soalIndex'),
      ),
      body: Center(
        child: Text('Ini adalah detail soal nomor $soalIndex'),
      ),
    );
  }
}
