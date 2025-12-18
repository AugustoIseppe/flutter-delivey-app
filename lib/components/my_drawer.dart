import 'package:delivery_app_with_backend/components/my_drawer_tile.dart';
import 'package:delivery_app_with_backend/pages/settings_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:
          Theme.of(context).colorScheme.surface,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Icon(
              CupertinoIcons.lock_rotation_open,
              size: 100,
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Divider(),
          ),
          MyDrawerTile(
            text: 'HOME',
            icon: CupertinoIcons.home,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerTile(
            text: 'SETTINGS',
            icon: CupertinoIcons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
              );
            },
          ),
          const Spacer(),
          MyDrawerTile(
            text: 'LOGOUT',
            icon: CupertinoIcons.arrow_right_circle,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
