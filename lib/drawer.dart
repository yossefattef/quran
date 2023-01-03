import 'package:flutter/material.dart';
import 'package:quran/person.dart';
import 'package:quran/settings.dart';
import 'package:share_plus/share_plus.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Image.asset(
                  'assats/icons-removebg-preview.png',
                  height: 80,
                ),
                const Text(
                  'Al Quran',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
            ),
            title: const Text(
              'Settings',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
            ),
            title: const Text(
              'Share',
            ),
            onTap: () {
              Share.share(
                  '''*Quran app*\ https://www.facebook.com/joe.elnsharAna?mibextid=ZbWKwL''');
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.person,
            ),
            title: const Text(
              'sadaqah jarih',
            ),
            onTap: () async {
              Navigator.pop(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const sadaqahjarih(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
