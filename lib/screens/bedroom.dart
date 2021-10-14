import 'dart:ui';
import 'package:tinycolor/tinycolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Bedroom extends StatefulWidget {
  const Bedroom({Key? key}) : super(key: key);

  @override
  _BedroomState createState() => _BedroomState();
}

class _BedroomState extends State<Bedroom> {
  double _currentSliderValue = 100;
  Color _currentColor = Color(0xffFF9B9B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0A4DA2),
      body: Container(
        padding: const EdgeInsets.only(top: 32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 30, left: 10),
                  child: RichText(
                    text: TextSpan(children: [
                      WidgetSpan(
                          child: GestureDetector(
                              child: const Icon(
                                Icons.arrow_back,
                                size: 28,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.pop(context);
                              })),
                      TextSpan(
                          text: " Bed \n Room",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "\n   4 Lights",
                          style: TextStyle(
                              color: Color(0xffFFD239),
                              fontWeight: FontWeight.bold,
                              height: 2,
                              fontSize: 16))
                    ]),
                    textAlign: TextAlign.start,
                  ),
                ),
                Stack(
                  children: [
                    SvgPicture.asset(
                      "assets/lightbulb.svg",
                    ),
                    Positioned(
                      bottom: 25,
                      right: 58,
                      child: Container(
                        decoration: BoxDecoration(
                          color: _currentColor
                              .desaturate(100 - _currentSliderValue.toInt()),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                          ),
                          boxShadow: [
                            BoxShadow(

                                // color: Color.fromRGBO(0, 0, 0, _opacity),
                                offset: Offset(0, 8),
                                blurRadius: 16,
                                spreadRadius: 8,
                                color: _currentColor
                                    .withOpacity(
                                        _currentSliderValue.toInt() / 100)
                                    .desaturate(
                                        100 - _currentSliderValue.toInt()))
                          ],
                        ),
                        height: 10,
                        width: 20,
                      ),
                    )
                  ],
                )
              ],
            ),
            SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              "assets/surface1.svg",
                              color: Colors.blue.shade800,
                            ),
                            Text(
                              "Main Light",
                              style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xff000C66),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              "assets/furniture-and-household.svg",
                              color: Colors.white,
                            ),
                            const Text(
                              "Desk Lights",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      height: 45,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                              "assets/bed (1).svg",
                              color: Colors.blue.shade800,
                            ),
                            Text(
                              "Bed Light",
                              style: TextStyle(
                                  color: Colors.blue.shade800,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 32.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                          color: Color(0xffF6F8FB)),
                      child: ListView(
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 15),
                        children: [
                          Text(
                            "Intensity",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00008B),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SvgPicture.asset("assets/solution2.svg"),
                              Expanded(
                                child: Slider(
                                  inactiveColor: Colors.yellow,
                                  activeColor: Colors.yellowAccent,
                                  thumbColor: Colors.white,
                                  min: 0,
                                  max: 100,
                                  value: _currentSliderValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _currentSliderValue = value;
                                    });
                                  },
                                ),
                              ),
                              SvgPicture.asset("assets/solution.svg"),
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Colors",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00008B),
                            ),
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xffFF9B9B);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xffFF9B9B))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xff94EB9E);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xff94EB9E))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xff94CAEB);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xff94CAEB))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xffA594EB);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xffA594EB))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xffDE94EB);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xffDE94EB))),
                              GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _currentColor = Color(0xffEBD094);
                                    });
                                  },
                                  child: ColorTile(color: Color(0xffEBD094))),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(Icons.add),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 32,
                          ),
                          Text(
                            "Scenes",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff00008B),
                            ),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          GridView(
                            padding: const EdgeInsets.all(0),
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    childAspectRatio: 2.6,
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20),
                            children: [
                              SceneTile(
                                  title: "Birthday",
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xffFF9B9B),
                                        Color(0xffFFB793)
                                      ])),
                              SceneTile(
                                  title: "Party",
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xffA693EB),
                                        Color(0xffD193EB)
                                      ])),
                              SceneTile(
                                  title: "Relax",
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff93CAEB),
                                        Color(0xff93DAEB)
                                      ])),
                              SceneTile(
                                  title: "Fun",
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        Color(0xff94DF9F),
                                        Color(0xffB6EA92)
                                      ])),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 20,
                    child: Container(
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        child: CircleAvatar(
                          child: SvgPicture.asset(
                              "assets/Icon awesome-power-off.svg"),
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
