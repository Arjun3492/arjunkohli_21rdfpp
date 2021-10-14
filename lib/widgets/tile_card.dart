import 'package:arjunkohli_21rdfpp/screens/bedroom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Tilecard extends StatelessWidget {
  final String svgpath;
  final String title;
  final String lightCount;
  const Tilecard({
    Key? key,
    required this.svgpath,
    required this.title,
    required this.lightCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Bedroom()),
        );
      },
      child: Card(
        color: Color(0xffFFFFFF),
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SvgPicture.asset(
                svgpath,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    softWrap: false,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    lightCount,
                    style: TextStyle(
                        color: Color(0xffFFB14C),
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
