import 'package:flutter/material.dart';

class CustomHomeViewDrawer extends StatelessWidget {
  const CustomHomeViewDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text(
              "Ziad Salah",
              style: TextStyle(fontSize: 22),
            ),
            accountEmail: Text(
              "Ziad@gmail.com",
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: const Icon(Icons.home),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("My products"),
            leading: const Icon(Icons.add_shopping_cart),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("About"),
            leading: const Icon(Icons.help_center),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("Profile Page"),
            leading: const Icon(Icons.person),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text("Logout"),
            leading: const Icon(Icons.exit_to_app),
            onTap: () {},
          ),
          const Divider(),
        ],
      ),
    );
  }
}
