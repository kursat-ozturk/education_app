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
            Icons.menu_rounded,
            color: Colors.black,
            size: 30,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: Icon(Icons.travel_explore, color: Colors.black, size: 35),
            //FontAwesomeIcons.earthAsia, color: Colors.black, size: 30),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/profile.png',
                      height: 70,
                      width: 70,
                    ),
                    const SizedBox(width: 20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Container(
              height: 250,
              width: 500,
              decoration: BoxDecoration(
                color: const Color(0xffB3E5FC),
                image: const DecorationImage(
                  image: AssetImage('assets/img1.png'),
                  alignment: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 150, 147, 147),
                    offset: Offset(-5.0, 5.0),
                    blurRadius: 20,
                    spreadRadius: 0.5,
                  ),
                  BoxShadow(
                    color: Color(0xffB3E5FC),
                    blurRadius: 0.0,
                    spreadRadius: 3.0,
                  ),
                ],
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Today's \nChallenge",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Turkish foods",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Take this lesson to\nearn a new milestone",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              "Your Courses",
              style: TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Cart(
                  courses: 'Spanish',
                  text: 'Beginner',
                ),
                Cart(
                  courses: 'English',
                  text: 'Advanced',
                ),
                Cart(
                  courses: 'German',
                  text: 'Intermediate',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Cart extends StatelessWidget {
  const Cart({super.key, required this.courses, required this.text});

  final String courses;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.lightBlue[800],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  courses,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const Icon(
              FontAwesomeIcons.chevronRight,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
