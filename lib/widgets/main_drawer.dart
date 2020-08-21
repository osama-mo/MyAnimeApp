import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  void openScreen(String routeName, BuildContext context) {
    Navigator.of(context).pushReplacementNamed(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            alignment: Alignment.center,
            // ignore: deprecated_member_use
            child: Text(
              "Anime Time!!",
              style: TextStyle(
                  fontFamily: "RobotoCondensed",
                  fontSize: 35,
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold),
            ),
            color: Theme.of(context).accentColor,
          ),
          SizedBox(
            height: 20,
          ),
          ListTile(
            onTap: () => openScreen("/", context),
            leading: Icon(Icons.photo),
            title: Text(
              "Anime List",
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: () => openScreen("/settingsScreen", context),
            leading: Icon(Icons.settings),
            title: Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
          )
        ],
      ),
    );
  }
}
