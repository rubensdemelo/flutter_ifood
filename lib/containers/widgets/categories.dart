import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  final List<Widget> items;

  const Categories({Key key, @required this.items}) : super(key: key);

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
              children: items,
            ),
          ),
        ],
      ),
    );
  }
}
