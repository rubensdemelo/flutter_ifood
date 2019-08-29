import 'package:flutter/material.dart';
import 'package:ifood_flutter/core/model/main.dart';
import 'package:ifood_flutter/widgets/card_image.dart';

class Categories extends StatelessWidget {
  final List<CardImageItem> items;

  const Categories({@required this.items});

  List<Widget> _buildCategories() => items
      .map((category) => CardImage(
            image: category.image,
            text: category.text,
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 150,
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(top: 12, left: 12),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 10),
            child: Text(
              'Categorias',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: _buildCategories(),
            ),
          ),
        ],
      ),
    );
  }
}
