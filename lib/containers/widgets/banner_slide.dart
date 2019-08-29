import 'package:flutter/material.dart';

class BannerSlide extends StatelessWidget {
  final List<Widget> items;

  const BannerSlide({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 12, top: 15),
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListView(
            padding: EdgeInsets.only(right: 12),
            scrollDirection: Axis.horizontal,
            children: items,
          ),
        ),
      ),
    );
  }
}
