import 'package:MyAnime/models/anime.dart';

import './models/genre.dart';

import 'package:flutter/material.dart';

const AnimeGenre = const [
  Genre(id: "g1", title: "Shounen", color: Colors.orange),
  Genre(id: "g2", title: "Seinen", color: Colors.deepOrange),
  Genre(id: "g3", title: "Sport", color: Colors.blue),
  Genre(id: "g4", title: "Comedy", color: Colors.amber),
  Genre(id: "g5", title: "Slice of Life", color: Colors.green),
  Genre(id: "g6", title: "Magic", color: Colors.purple),
  Genre(id: "g7", title: "Horror", color: Colors.grey),
  Genre(id: "g8", title: "Romance", color: Colors.pink),
];

const AnimeList = const [
  Anime(
      id: "a1",
      title: "Death Note",
      ep: 37,
      genres: ["g1"],
      imageSource: "https://i.ytimg.com/vi/bFcrgv7yoBw/maxresdefault.jpg",
      seasons: 1,
      isFamous: true),
  Anime(
      id: "a2",
      title: "Attack on titan",
      ep: 70,
      genres: ["g1"],
      imageSource:
          "https://steamcdn-a.akamaihd.net/steam/apps/449800/capsule_616x353.jpg?t=1550182918",
      seasons: 4,
      isFamous: true),
  Anime(
    id: "a3",
    title: "Hajime no ippo",
    ep: 120,
    genres: ["g1", "g3", "g4"],
    imageSource:
        "https://www.asialogy.com/wp-content/uploads/2014/07/hajime-no-ippo.jpg",
    seasons: 3,
    isFamous: false
  ),
  Anime(
      id: "a4",
      title: "Steins gate",
      ep: 50,
      genres: ["g2", "g7"],
      imageSource:
          "https://www.bilimkurgukulubu.com/wp-content/uploads/2018/07/Steins-Gate.png",
      seasons: 2,
      isFamous: true),
  Anime(
      id: "a5",
      title: "Your Lie in April",
      ep: 37,
      genres: ["g5", "g8"],
      imageSource: "https://i.ytimg.com/vi/fsVU6GP4OEk/maxresdefault.jpg",
      seasons: 1,
      isFamous: true),
  Anime(
      id: "a6",
      title: "Magi",
      ep: 50,
      genres: ["g1", "g6"],
      imageSource:
          "https://derf9v1xhwwx1.cloudfront.net/image/upload/q_60,h_770,w_770,c_fill,g_north/oth/FunimationStoreFront/2130183/Latvian/2130183_Latvian_NewShowDetailHeroPhone_7c6aea6c-1bb8-ea11-82a8-dd291e252010.jpg",
      seasons: 2,
       isFamous: false),
  Anime(
      id: "a7",
      title: "Re:Life",
      ep: 17,
      genres: ["g5"],
      imageSource:
          "https://weeabootaku.files.wordpress.com/2016/10/relife-cast.png",
      seasons: 2,
       isFamous: false),
  Anime(
      id: "a8",
      title: "Saiki kusuo",
      ep: 50,
      genres: ["g4"],
      imageSource:
          "https://media.comicbook.com/2018/10/saiki-k-final-anime-1139179-1280x0.jpeg",
      seasons: 2,
       isFamous: false),
];
