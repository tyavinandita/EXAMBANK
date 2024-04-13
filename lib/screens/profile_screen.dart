import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/images/1.png'),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/editprofil-screen');
              },
              child: const Text(
                'Edit your profil',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.blue,
                ),
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Tya Vinandita',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              'Student',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Divider(),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('gwencyanayo28@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+6285967000762'),
            ),
            const ListTile(
              leading: Icon(Icons.star),
              title: Text('basic member'),
            ),
            Divider(),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text('Help'),
            ),
          ],
        ),
      ),
    );
  }
}
