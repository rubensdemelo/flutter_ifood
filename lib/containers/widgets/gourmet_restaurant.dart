import 'package:flutter/material.dart';

class GourmetRestaurants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(12),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: Image.asset(
          'assets/images/gourmet.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
