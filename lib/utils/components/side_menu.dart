import 'package:figmaapp/screens/API_screen.dart';
import 'package:figmaapp/screens/chat.dart';
import 'package:figmaapp/screens/historyscreen.dart';
import 'package:figmaapp/screens/login_screen.dart';
import 'package:figmaapp/screens/setting_screen.dart';
import 'package:figmaapp/screens/sqlite_screen.dart';
import 'package:figmaapp/screens/upgrade.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:ternav_icons/ternav_icons.dart';

import '../../constant.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        shrinkWrap: true,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text(
              'Komang Tya Vinandita Kusuma Dewi',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            accountEmail: const Text(
              '2215091044',
              style: TextStyle(color: Colors.black87, fontSize: 13),
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/♡.jpeg'),
            ),
            decoration:
                BoxDecoration(color: const Color.fromRGBO(93, 173, 226, 1)),
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.menu,
            title: "History",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HistoryScreen()));
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "test API",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ApiScreen()));
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.folder,
            title: "test CRUD",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CrudSQLScreen()));
            },
          ),
          DrawerListTile(
            icon: TernavIcons.lightOutline.settings,
            title: "Settings",
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
          ),
          DrawerListTile(
            icon: Icons.logout_rounded,
            title: "Logout",
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => LoginWidget()));
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Image.asset(
            "assets/images/help.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 100,
            margin: const EdgeInsets.all(24),
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
                color: kLightBlue, borderRadius: BorderRadius.circular(15)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text("Upgrade your test",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Go to Pro", style: TextStyle(color: kDarkBlue)),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    UpgradeToPremiumScreen()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: kDarkBlue),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: kDarkBlue,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
        style: const TextStyle(color: Colors.grey),
      ),
    );
  }
}
