import 'package:figmaapp/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:figmaapp/screens/home_screen.dart';
import 'package:figmaapp/screens/komunitas.dart';
import 'package:figmaapp/screens/menuscreen.dart';
import 'package:figmaapp/utils/components/side_menu.dart';

class PageBackgroundWidget extends StatefulWidget {
  @override
  _PageBackgroundWidgetState createState() => _PageBackgroundWidgetState();
}

class _PageBackgroundWidgetState extends State<PageBackgroundWidget> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    const MenuScreen(),
    const Komunitas(),
  ];

  final List<String> _appBarTitles = [
    'Home',
    'Menu',
    'Community',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _showNotificationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.6,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Colors.grey[300]!,
                      width: 1,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Notifikasi',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 3, // Ganti jumlah notifikasi sesuai kebutuhan Anda
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('Come on, finish your test now'),
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(
                            93, 173, 226, 1), // Warna avatar
                        radius: 20,
                        child: Image.asset(
                            'assets/images/Exambankfaviconcolor1.png'),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showSearchBar(BuildContext context) {
    showSearch(
      context: context,
      delegate: _SearchDelegate(), // Gunakan SearchDelegate yang telah dibuat
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.grey, size: 28),
        title: Text(_appBarTitles[_selectedIndex] as String),
        actions: [
          IconButton(
            onPressed: () {
              _showSearchBar(context);
            },
            icon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              _showNotificationBottomSheet(context);
            },
            icon: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {
              // Navigasi ke layar profil
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
            },
            icon: const CircleAvatar(
              backgroundImage: AssetImage("assets/images/♡.jpeg"),
            ),
          )
        ],
      ),
      drawer: const SideMenu(),
      body: _screens[_selectedIndex],
      bottomNavigationBar: CurvedNavigationBar(
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.school, size: 30),
          Icon(Icons.group, size: 30),
        ],
        color: const Color.fromRGBO(93, 173, 226, 1),
        buttonBackgroundColor: const Color.fromRGBO(93, 173, 226, 1),
        backgroundColor: Colors.transparent,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: _onItemTapped,
        index: _selectedIndex.clamp(0, _screens.length - 1),
      ),
    );
  }
}

class _SearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions untuk menampilkan aksi tambahan di sebelah kanan kolom pencarian
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Leading widget adalah ikon yang berada di sebelah kiri kolom pencarian
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, ''); // Menutup kolom pencarian
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Widget yang menampilkan hasil pencarian
    return Center(
      child: Text('Hasil pencarian untuk: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Widget yang menampilkan saran saat pengguna mengetikkan dalam kolom pencarian
    final List<String> suggestions = [
      '7th grade math test',
      '9th grade math test',
      '8th grade math test'
    ];
    final List<String> suggestionList = query.isEmpty
        ? suggestions
        : suggestions.where((element) => element.contains(query)).toList();

    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestionList[index]),
          onTap: () {
            query = suggestionList[index];
            showResults(context);
          },
        );
      },
    );
  }
}
