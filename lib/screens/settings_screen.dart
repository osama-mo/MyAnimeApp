import 'package:MyAnime/widgets/main_drawer.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  final Function saveFilters;
  final Map<String,bool> wewewewew;

  SettingsScreen(this.wewewewew,this.saveFilters);
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool famos = false;
  @override
  void initState() {
    famos = widget.wewewewew["famous"];
    // TODO: implement initState
    super.initState();
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(title: Text("Settings"),
      actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              final selectedFilters = {
                'famous':famos,
              };
              widget.saveFilters(selectedFilters);
            },
          )
        ],),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "General:",
                style: TextStyle(color: Colors.grey),
              )),
          SwitchListTile(
            title: Text("Do you Want to remove Famous anime shows?"),
            value: famos,
            onChanged:(newValue) {
                    setState(
                      () {
                        famos = newValue;
                      },
                    );
                  },
          )
        ],
      ),
    );
  }
}
