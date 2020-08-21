import 'package:MyAnime/Dummy_data.dart';
import 'package:MyAnime/screens/genre_screen.dart';
import 'package:MyAnime/screens/settings_screen.dart';
import 'package:MyAnime/screens/tabs_screen.dart';

import './screens/mainScreen.dart';
import './models/anime.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {"famous": false};
  List<Anime> _availableAnimes = AnimeList;
  List<Anime> favoriteAnime = [];
  void setFilters(Map<String, bool> _filtersData) {
    setState(() {
      _filters = _filtersData;
      _availableAnimes = AnimeList.where((element) {
        if (_filtersData["famous"] && element.isFamous) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  void toggleFavorite(String animeId) {
    final existingIndex =
        favoriteAnime.indexWhere((element) => element.id == animeId);
    if (existingIndex >= 0) {
      setState(() {
        favoriteAnime.removeAt(existingIndex);
      });
    } else {
      setState(() {
        favoriteAnime.add(
            _availableAnimes.firstWhere((element) => element.id == animeId));
      });
    }
  }

  bool isAnimeFavorite(String id) {
    return favoriteAnime.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xnime',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        primarySwatch: Colors.red,
        accentColor: Colors.orange,
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
                // ignore: deprecated_member_use
                title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )),
      ),
      home: TabsScreen(isAnimeFavorite, favoriteAnime, toggleFavorite),
      routes: {
        "/genreScreen": (ctx) =>
            GenreScreen(isAnimeFavorite, toggleFavorite, _availableAnimes),
        "/settingsScreen": (ctx) => SettingsScreen(_filters, setFilters)
      },
    );
  }
}
