import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          SubjectCard(
            subjectName: 'Math',
            imagePath:
                'assets/images/Calculatorandgraphswithmathematicssigns.png',
            gradientColors: [Color(0xFF82B1FF), Color(0xFF448AFF)],
            onTap: () {
              Navigator.pushNamed(context, '/Math-screen');
            },
          ),
          SubjectCard(
            subjectName: 'Natural Science',
            imagePath: 'assets/images/Sciencelaboratory.png',
            gradientColors: [Color(0xFF80CBC4), Color(0xFF009688)],
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat subjek alam di tekan
              print('Natural Science selected');
            },
          ),
          SubjectCard(
            subjectName: 'Social Sciences',
            imagePath: 'assets/images/Schoolsubjectsanditemsforstudying.png',
            gradientColors: [Color(0xFFFFCC80), Color(0xFFFF5722)],
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat subjek sosial di tekan
              print('Social Sciences selected');
            },
          ),
          SubjectCard(
            subjectName: 'International Language',
            imagePath:
                'assets/images/Translatorsignontabletwithwebsigntext.png',
            gradientColors: [Color(0xFFB39DDB), Color(0xFF673AB7)],
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat subjek bahasa internasional di tekan
              print('International Language selected');
            },
          ),
          SubjectCard(
            subjectName: 'Psychology',
            imagePath: 'assets/images/Searchingformentalproblemsinthebrain.png',
            gradientColors: [Color(0xFFFFAB91), Color(0xFFFF5722)],
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat psikologi di tekan
              print('Psychology selected');
            },
          ),
          SubjectCard(
            subjectName: 'Art',
            imagePath: 'assets/images/Brush.png',
            gradientColors: [Color(0xFFFFF59D), Color(0xFFFFB74D)],
            onTap: () {
              // Tambahkan aksi yang ingin dilakukan saat seni di tekan
              print('Art selected');
            },
          ),
        ],
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String subjectName;
  final String imagePath;
  final List<Color> gradientColors;
  final VoidCallback onTap;

  const SubjectCard({
    Key? key,
    required this.subjectName,
    required this.imagePath,
    required this.gradientColors,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        margin: EdgeInsets.all(10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: gradientColors,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    imagePath,
                    height: 100, // Sesuaikan dengan kebutuhan
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Text(
                subjectName,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black87),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
