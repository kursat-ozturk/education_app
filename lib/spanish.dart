import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Spanish extends StatelessWidget {
  const Spanish({super.key});

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
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      bottomRight: Radius.circular(150),
                    ),
                  ),
                  child: Column(
                    children: [
                      AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0.0,
                        leading: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          padding: const EdgeInsets.only(left: 20),
                          onPressed: () => Navigator.pop(context, false),
                        ),
                        centerTitle: true,
                        title: const Text(
                          'Curse',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Spanish',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Beginner',
                                        style: TextStyle(
                                          color: Colors.lightBlue[800],
                                          fontSize: 20,
                                        ),
                                      ),
                                      Icon(
                                        FontAwesomeIcons.chevronDown,
                                        size: 20,
                                        color: Colors.lightBlue[800],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.diamond_rounded,
                                    color: Colors.red,
                                  ),
                                  Icon(
                                    Icons.diamond_rounded,
                                    color: Colors.red,
                                  ),
                                  Text(
                                    ' 2 Milestones',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: CircularPercentIndicator(
                              radius: 40,
                              backgroundColor: Colors.white,
                              lineWidth: 5,
                              backgroundWidth: 2.0,
                              percent: 0.4,
                              animation: true,
                              center: const Text(
                                '40%',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 25.0,
                                ),
                              ),
                              circularStrokeCap: CircularStrokeCap.round,
                              progressColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 250),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              //crossAxisSpacing: 5,
              children: const [
                CourseCart(
                  text: 'Basic',
                  number: '4/5',
                  icon: Icons.book_rounded,
                  color: Colors.amber,
                ),
                CourseCart(
                  text: 'Conversation',
                  number: '3/5',
                  icon: Icons.message_rounded,
                  color: Colors.blue,
                ),
                CourseCart(
                  text: 'Occupations',
                  number: '1/5',
                  icon: Icons.shopping_bag_rounded,
                  color: Colors.red,
                ),
                CourseCart(
                  text: 'Places',
                  number: '2/5',
                  icon: Icons.location_on_rounded,
                  color: Colors.green,
                ),
                CourseCart(
                  text: 'Foods',
                  number: '5/5',
                  icon: Icons.fastfood_rounded,
                  color: Colors.teal,
                ),
                CourseCart(
                  text: 'Family Members',
                  number: '3/5',
                  icon: Icons.family_restroom_rounded,
                  color: Colors.purple,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CourseCart extends StatelessWidget {
  const CourseCart({
    super.key,
    required this.text,
    required this.number,
    required this.icon,
    required this.color,
  });

  final String text;
  final String number;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        //shape: BoxShape.circle,
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
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
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(
                icon,
                size: 50,
                color: color,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Column(
            children: [
              Text(
                text,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              Text(
                number,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
