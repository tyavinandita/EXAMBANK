import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  // Simulasi data profil
  Map<String, TextEditingController> _controllers = {
    'Name': TextEditingController(text: 'Tya Vinandita'),
    'NIM': TextEditingController(text: '2215091044'),
    'Email': TextEditingController(text: 'Tya@student.undiksha.ac.id'),
    'phone': TextEditingController(text: '085967000762'),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                alignment: Alignment.center,
                child: CircleAvatar(
                  radius: 90,
                  backgroundImage: AssetImage('assets/images/♡.jpeg'),
                ),
              ),
              SizedBox(height: 8), // Spasi antara gambar profil dan teks
              Text(
                'Change picture',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              for (var entry in _controllers.entries)
                _buildEditableUserInfo(
                  label: entry.key,
                  controller: entry.value,
                ),
            ],
          ),
          SizedBox(height: 20),
          Positioned(
            bottom: 50,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text('Save'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEditableUserInfo({
    required String label,
    required TextEditingController controller,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: ListTile(
        title: Text(label),
        subtitle: Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: controller,
                readOnly: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                _editInfo(label);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _editInfo(String label) {
    TextEditingController controller = _controllers[label]!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit $label'),
          content: TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter new $label',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
