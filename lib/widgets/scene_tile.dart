import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SceneTile extends StatelessWidget {
  final String title;
  final Gradient gradient;
  const SceneTile({
    Key? key,
    required this.title,
    required this.gradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), gradient: gradient),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(
              "assets/surface1.svg",
              color: Colors.white,
            ),
            Text(
              title,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
