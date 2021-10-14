import 'package:arjunkohli_21rdfpp/widgets/tile_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Control \nPanel",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/user.png"),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        color: Color(0xffF6F8FB)),
                    child: ListView(
                      padding: const EdgeInsets.symmetric(
                          vertical: 30, horizontal: 15),
                      children: [
                        const Text(
                          "All Rooms",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff00008B),
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        GridView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 12,
                                  mainAxisSpacing: 12),
                          children: const [
                            Tilecard(
                                svgpath: "assets/bed.svg",
                                title: "Bed room",
                                lightCount: "4 Lights"),
                            Tilecard(
                                svgpath: "assets/room.svg",
                                title: "Living room",
                                lightCount: "2 Lights"),
                            Tilecard(
                                svgpath: "assets/kitchen.svg",
                                title: "Kitchen",
                                lightCount: "5 Lights"),
                            Tilecard(
                                svgpath: "assets/bathtube.svg",
                                title: "Bathroom",
                                lightCount: "1 Light"),
                            Tilecard(
                                svgpath: "assets/house.svg",
                                title: "Outdoor",
                                lightCount: "5 Lights"),
                            Tilecard(
                                svgpath: "assets/balcony.svg",
                                title: "Balcony",
                                lightCount: "2 Lights"),
                          ],
                        )
                      ],
                    )),
              ),
            )
          ],
        ));
  }
}
