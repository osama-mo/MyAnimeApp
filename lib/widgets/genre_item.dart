import 'package:flutter/material.dart';

class GerenItem extends StatelessWidget {
  final String title;
  final String id;
  final Color color;

  GerenItem({this.title, this.id, this.color});

  void selectCategory(BuildContext context) {
    Navigator.of(context)
        .pushNamed("/genreScreen", arguments: {"id": id, "title": title});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Container(
          padding: EdgeInsets.all(10),
          // ignore: deprecated_member_use
          child: Text(
            title,
            // ignore: deprecated_member_use
            style: Theme.of(context).textTheme.title,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7), color],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(15),
          )),
    );
  }
}
