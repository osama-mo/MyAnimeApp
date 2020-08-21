import 'package:MyAnime/Dummy_data.dart';
import 'package:MyAnime/widgets/anime_item.dart';
import 'package:flutter/material.dart';

import '../models/anime.dart';

class FavoriteScreen extends StatelessWidget {
  final Function togFav;
  final Function isFav;
  final List<Anime> favoriteAnimes;
  FavoriteScreen(this.isFav,this.favoriteAnimes,this.togFav);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: favoriteAnimes.length,
        itemBuilder: (ctx, index) {
          return AnimeItem(
            id: favoriteAnimes[index].id,
            isFav: isFav,
            toggleFavorite: togFav,
            ep: favoriteAnimes[index].ep,
            imageUrl: favoriteAnimes[index].imageSource,
            title: favoriteAnimes[index].title,
            seasons: favoriteAnimes[index].seasons,
          );
        });
  }
}
