import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DetailssScreen extends StatelessWidget {
  const DetailssScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //appbar section
            AppBar(
              backgroundColor: const Color.fromARGB(255, 34, 34, 34),
              automaticallyImplyLeading: false,
              title: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      // back arrow
                      Container(
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(15),
                          ),
                          color: Color.fromARGB(255, 59, 59, 59),
                        ),
                        child: InkWell(
                          child: Icon(
                            MdiIcons.arrowLeft,
                            color: Colors.white,
                          ),
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).pop(context);
                          },
                        ),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      //Details text
                      const Text(
                        'Details',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      //image icon
                      ClipOval(
                        child: Image.asset(
                          'assets/profile_image/image.jpg',
                          fit: BoxFit.fill,
                          height: 50,
                          width: 50,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            //body
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  //food large image
                  Image.asset(
                    'assets/food_icons/burger.png',
                    height: 250,
                    width: 250,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  //details row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //weight column
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Weight',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              '500kg',
                              style: TextStyle(
                                  fontSize: 11.5,
                                  color: Color.fromARGB(255, 255, 115, 0),
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      //calory column
                      const Column(
                        children: [
                          Text(
                            'Calory',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Text(
                            '220 cal',
                            style: TextStyle(
                                fontSize: 11.5,
                                color: Color.fromARGB(255, 255, 115, 0),
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      //rating column
                      Column(
                        children: [
                          const Text(
                            'Rating',
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Row(
                            children: [
                              //icon
                              Icon(
                                MdiIcons.star,
                                color: Colors.yellow,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              //text
                              const Text(
                                '(4.5)',
                                style: TextStyle(
                                    fontSize: 11.5,
                                    color: Color.fromARGB(255, 255, 115, 0),
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  //food name text
                  const SizedBox(
                    height: 30,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 290.0),
                    child: Text(
                      'Burger',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //price increase/decrease row
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: [
                        //amount container
                        Container(
                          height: 38,
                          width: 55,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                            color: Color.fromARGB(255, 59, 59, 59),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text(
                              '\$300',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 225, 222, 222),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        //increase/decrease price
                        Row(
                          children: [
                            //add icon
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Color.fromARGB(255, 59, 59, 59),
                              ),
                              child: Icon(
                                MdiIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            //amount text
                            const Text(
                              '2',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 255, 115, 0),
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            //minus icon
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                ),
                                color: Color.fromARGB(255, 59, 59, 59),
                              ),
                              child: Icon(
                                MdiIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //food description text
                  const SizedBox(
                    height: 20,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 200.0),
                    child: Text(
                      'Food description',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  //description text
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: Text(
                      'Contrary to popular belief , Lorem Ipsum not simply \n random text. It has roots in a piece of classical latin \n literature word in classical literature.',
                      style: TextStyle(
                          fontSize: 14,
                          color: const Color.fromARGB(255, 199, 197, 197).withOpacity(0.75),
                          fontWeight: FontWeight.bold),
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
