import 'package:flutter/material.dart';

class AnimeItem extends StatefulWidget {
  final String id;
  final String title;
  final int ep;
  final String imageUrl;
  final int seasons;
  final Function toggleFavorite;
  final Function isFav;

  AnimeItem(
      {this.id,this.isFav,this.toggleFavorite,this.ep, this.title, this.imageUrl, this.seasons,});

  @override
  _AnimeItemState createState() => _AnimeItemState();
}

class _AnimeItemState extends State<AnimeItem> {
 

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    widget.imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                    bottom: 10,
                    right: 0,
                    child: Container(
                      width: 300,
                      color: Colors.black54,
                      padding: EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20,
                      ),
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ))
              ],
            ),
            Container(
              color: Colors.grey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Seasons:",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '${widget.seasons}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Episodes:",
                          style: TextStyle(fontSize: 18),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '${widget.ep}',
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    widget.isFav(widget.id)
                        ? FlatButton(
                            onPressed: ()=>widget.toggleFavorite(widget.id), child: Icon(Icons.star))
                        : FlatButton(
                            onPressed:()=>widget.toggleFavorite(widget.id),
                            child: Icon(Icons.star_border))
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
