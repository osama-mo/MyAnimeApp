import 'package:flutter/material.dart';

import '../models/anime.dart';
import '../screens/favorite_screen.dart';
import '../screens/mainScreen.dart';
import '../widgets/main_drawer.dart';


class TabsScreen extends StatefulWidget {
  final Function isfav;
  final Function togfav;
  final List<Anime> favList;
  TabsScreen(this.isfav,this.favList,this.togfav);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int selectedPage = 0;
  @override
  void initState() {
    _pages = [
      {"page": MainScreen(), "title": "Genres"},
      {"page": FavoriteScreen(widget.isfav,widget.favList,widget.togfav), "title": "Favorites"}
    ];
    // TODO: implement initState
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[selectedPage]["title"]),
      ),
      drawer: MainDrawer(),
      body: _pages[selectedPage]["page"],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).accentColor,
          type: BottomNavigationBarType.shifting,
          selectedFontSize: 17,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.category),
              title: Text('Genres'),
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).primaryColor,
              icon: Icon(Icons.star),
              title: Text('Favorites'),
            ),
          ]),
    );
  }
}
