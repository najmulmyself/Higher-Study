import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  String ?image;
  CategoryCard({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158, // as figma says
      width: double.infinity,
      child: Image.asset(
        image!,
        fit: BoxFit.contain,
      ),
    );
  }
}
