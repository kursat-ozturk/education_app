import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Lesson extends StatelessWidget {
  const Lesson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Column(
              children: [
                Container(
                  height: 350,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[800],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        leading: const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Icon(Icons.arrow_back_ios_new, size: 25),
                        ),
                        centerTitle: true,
                        title: const Text(
                          'Lesson',
                          style: TextStyle(fontSize: 25),
                        ),
                        actions: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Image.asset(
                              "assets/profile.png",
                              height: 40,
                              width: 40,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'Translate these phrases to English',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 147, 147),
                          offset: Offset(-5.0, 5.0),
                          blurRadius: 20,
                          spreadRadius: 0.5,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 0.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Icon(FontAwesomeIcons.xmark),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            "\" Mejor Aprendizaje en clases de education. \"",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.mic_rounded,
                              size: 40,
                            ),
                            Icon(
                              Icons.volume_up_rounded,
                              size: 40,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Icon(FontAwesomeIcons.arrowsUpDown),
                  SizedBox(height: 20),
                  Container(
                    height: 200,
                    width: 450,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 150, 147, 147),
                          offset: Offset(-5.0, 5.0),
                          blurRadius: 20,
                          spreadRadius: 0.5,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 0.0,
                          spreadRadius: 3.0,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "\"Your answer...",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Icon(
                      FontAwesomeIcons.circleChevronRight,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
