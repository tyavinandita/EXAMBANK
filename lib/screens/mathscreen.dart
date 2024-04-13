import 'dart:async';

import 'package:flutter/material.dart';

class MathScreen extends StatelessWidget {
  const MathScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mathematics'),
        backgroundColor: Colors.blue, // Warna latar belakang appbar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildClassOption(context, 'Class 7', () {
              print('Class 7 selected');
              // Tampilkan dialog menu soal untuk kelas 7
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Class 7 Mathematics'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        buildQuestionMenuItem(
                            context, 'Aljabar', 'by @faralala', () {
                          print('Aljabar for Class 7 selected');
                          // Navigasi ke layar daftar soal Aljabar untuk kelas 7
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionListScreen(
                                className: 'Class 7 Aljabar',
                                subject: 'Aljabar',
                                description: 'by @faralala',
                                questions: [
                                  'Jika x=5, berapakah nilai dari 2x+3?',
                                  ['a) 8', 'b) 10', 'c) 13', 'd) 15'],
                                  'Jika y=7, hitunglah nilai dari 4y−9.',
                                  ['a) 5', 'b) 19', 'c) 23', 'd) 25'],
                                  'Jika p=3 dan q=9, berapakah nilai dari 2p2 −q?',
                                  ['a) 9', 'b) 15', 'c) 21', 'd) 27'],
                                  'Jika x+3=10, berapakah nilai dari x?',
                                  ['a) 6', 'b) 7', 'c) 8', 'd) 9'],
                                  'Jika 2x−5=11, berapakah nilai dari x?',
                                  ['a) 3', 'b) 6', 'c) 8', 'd) 9'],
                                  'Jika 3y+7=22, berapakah nilai dari y?',
                                  ['a) 5', 'b) 6', 'c) 7', 'd) 8'],
                                  'Jika 4p−9=27, berapakah nilai dari p?',
                                  ['a) 6', 'b) 8', 'c) 9', 'd) 10'],
                                  'Jika 2x=16, berapakah nilai dari  x?',
                                  ['a) 4', 'b) 6', 'c) 8', 'd) 10'],
                                  'Jika 5y=25, berapakah nilai dari y?',
                                  ['a) 2', 'b) 3', 'c) 4', 'd) 5'],
                                ],
                              ),
                            ),
                          );
                        }),
                        SizedBox(height: 10),
                        buildQuestionMenuItem(
                            context, 'Statistics', 'by @lacimolala', () {
                          print('Statistics for Class 7 selected');
                          // Navigasi ke layar daftar soal Statistik untuk kelas 7
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => QuestionListScreen(
                                className: 'Class 7 Statistics',
                                subject: 'Statistics',
                                description: 'by @lacimolala',
                                questions: [], // Tambahkan soal statistik di sini jika ada
                              ),
                            ),
                          );
                        }),
                      ],
                    ),
                  );
                },
              );
            }),
            SizedBox(height: 20),
            buildClassOption(context, 'Class 8', () {
              print('Class 8 selected');
            }),
            SizedBox(height: 20),
            buildClassOption(context, 'Class 9', () {
              print('Class 9 selected');
            }),
            SizedBox(height: 20),
            buildClassOption(context, 'Class 10', () {
              print('Class 10 selected');
            }),
            SizedBox(height: 20),
            buildClassOption(context, 'Class 11', () {
              print('Class 11 selected');
            }),
            SizedBox(height: 20),
            buildClassOption(context, 'Class 12', () {
              print('Class 12 selected');
            }),
          ],
        ),
      ),
    );
  }

  Widget buildClassOption(
      BuildContext context, String className, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(
            className,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget buildQuestionMenuItem(BuildContext context, String questionName,
      String description, VoidCallback onPressed) {
    return ListTile(
      title: Text(questionName),
      subtitle: Text(description),
      onTap: onPressed,
    );
  }
}

class QuestionListScreen extends StatefulWidget {
  final String className;
  final String subject;
  final String description;
  final List<dynamic> questions;

  const QuestionListScreen({
    Key? key,
    required this.className,
    required this.subject,
    required this.description,
    required this.questions,
  }) : super(key: key);

  @override
  _QuestionListScreenState createState() => _QuestionListScreenState();
}

class _QuestionListScreenState extends State<QuestionListScreen> {
  String? _selectedAnswer;

  // Timer duration
  int _seconds = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _seconds = timer.tick;
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.className} Questions'),
        backgroundColor: Colors.blue, // Warna latar belakang appbar
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Time: $_seconds s',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Latihan Soal ${widget.subject} ${widget.className}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              '${widget.description}',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
            child: Text(
              'Selamat Mengerjakan',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: widget.questions.length,
              itemBuilder: (context, index) {
                if (widget.questions[index] is String) {
                  return ListTile(
                    title: Text(widget.questions[index]),
                  );
                } else if (widget.questions[index] is List<String>) {
                  // Mengubah List<String> menjadi List<RadioListTile>
                  List<RadioListTile<String>> radioTiles = [];
                  for (int i = 0; i < widget.questions[index].length; i++) {
                    radioTiles.add(
                      RadioListTile<String>(
                        title: Text(widget.questions[index][i]),
                        value: widget.questions[index][i],
                        groupValue: _selectedAnswer,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedAnswer = value;
                          });
                          // Lakukan sesuatu dengan nilai yang dipilih
                          print('Selected value: $value');
                        },
                      ),
                    );
                  }
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: radioTiles,
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ),
          SizedBox(
              height:
                  20), // Menambahkan jarak antara daftar soal dan tombol Kirim
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {
                print('Jawaban dikirim');
              },
              child: Text('Kirim'),
            ),
          ),
        ],
      ),
    );
  }
}
