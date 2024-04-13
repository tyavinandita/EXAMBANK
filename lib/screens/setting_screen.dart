import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool _isNotificationEnabled = true;
  bool _isDarkModeEnabled = false;
  double _fontSize = 16.0; // Font size in points

  void _toggleNotification(bool value) {
    setState(() {
      _isNotificationEnabled = value;
    });
    // Add logic to handle notification preferences
  }

  void _toggleDarkMode(bool value) {
    setState(() {
      _isDarkModeEnabled = value;
    });
    // Add logic to handle dark mode preferences
  }

  void _changeFontSize() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pilih Ukuran Font'),
          content: Slider(
            value: _fontSize,
            min: 12.0,
            max: 24.0,
            divisions: 12,
            label: _fontSize.round().toString(),
            onChanged: (value) {
              setState(() {
                _fontSize = value;
              });
            },
          ),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
                // Add logic to save font size preference
              },
            ),
          ],
        );
      },
    );
  }

  void _changeLanguage() {
    // Add logic to navigate to language selection screen
  }

  void _resetSettings() {
    // Add logic to reset all settings to default
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
      ),
      body: ListView(
        children: [
          _buildSettingItem(
            title: 'Notifikasi',
            trailing: Switch(
              value: _isNotificationEnabled,
              onChanged: _toggleNotification,
            ),
          ),
          _buildDivider(),
          _buildSettingItem(
            title: 'Mode Gelap',
            trailing: Switch(
              value: _isDarkModeEnabled,
              onChanged: _toggleDarkMode,
            ),
          ),
          _buildDivider(),
          _buildSettingItem(
            title: 'Ukuran Font',
            trailing: IconButton(
              icon: Icon(Icons.format_size),
              onPressed: _changeFontSize,
            ),
          ),
          _buildDivider(),
          _buildSettingItem(
            title: 'Bahasa',
            trailing: IconButton(
              icon: Icon(Icons.language),
              onPressed: _changeLanguage,
            ),
          ),
          _buildDivider(),
          _buildSettingItem(
            title: 'Atur Ulang Pengaturan',
            onTap: _resetSettings,
          ),
        ],
      ),
    );
  }

  Widget _buildSettingItem({
    required String title,
    Widget? trailing,
    Function()? onTap,
  }) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: onTap,
      trailing: trailing,
    );
  }

  Widget _buildDivider() {
    return Divider(
      thickness: 1.0,
      color: Colors.grey[300],
    );
  }
}
