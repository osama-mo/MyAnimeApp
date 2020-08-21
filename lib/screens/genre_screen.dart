import 'package:MyAnime/Dummy_data.dart';
import 'package:MyAnime/models/anime.dart';
import 'package:MyAnime/widgets/anime_item.dart';

import 'package:flutter/material.dart';

class GenreScreen extends StatelessWidget {
  final Function togfav;
  final Function isfav;
  final List<Anime> _animeList;
  GenreScreen(this.isfav,this.togfav,this._animeList);
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final genreId = routeArgs["id"];
    final genreTitle = routeArgs["title"];
     List<Anime> animeList = _animeList.where((element) => element.genres.contains(genreId)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(genreTitle),
      ),
      body: ListView.builder(itemBuilder: (ctx, index) {
        return AnimeItem(
          ep: animeList[index].ep,
          imageUrl: animeList[index].imageSource,
          title: animeList[index].title,
          seasons: animeList[index].seasons,
          id: animeList[index].id,
          isFav: isfav,
          toggleFavorite: togfav ,
        );
      },
      itemCount: animeList.length,),
      
    );
  }
}
