import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: const Padding(
          padding: EdgeInsets.only(left: 30),
          child: Icon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child:
                Icon(FontAwesomeIcons.earthAsia, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              Image.asset(
                'assets/profile.jpg',
                height: 60,
                width: 60,
              ),
              Column(
                children: [
                  Text(
                    "Jennifer Josef",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.locationDot,
                        color: Colors.grey,
                        size: 17,
                      ),
                      Text(
                        "United Kingdom",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
