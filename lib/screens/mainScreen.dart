import '../Dummy_data.dart';
import '../models/genre.dart';
import '../widgets/genre_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: AnimeGenre.map((genData) => GerenItem(
            id: genData.id,
            color: genData.color,
            title: genData.title,
          )).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
