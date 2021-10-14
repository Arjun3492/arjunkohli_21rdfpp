import 'package:flutter/material.dart';

class ColorTile extends StatelessWidget {
  final Color color;
  const ColorTile({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }
}
