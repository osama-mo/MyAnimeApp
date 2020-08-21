import 'package:flutter/material.dart';

class Anime {
  final List<String> genres;
  final String id;
  final String title;
  final int ep;
  final String imageSource;
  final int seasons;
  final bool isFamous;

  const Anime({
    this.title,
    this.id,
    this.ep,
    this.imageSource,
    this.genres,
    this.seasons,
    this.isFamous
  });
}
