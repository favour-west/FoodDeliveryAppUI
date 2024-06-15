import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

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
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 8,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
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
                      const Spacer(),
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
              height: 20,
            ),
            //offers body
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  //specials deals text
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Special deals',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //crazy offers container
                  Container(
                    height: 220,
                    width: 450,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                    child: Row(
                      children: [
                        const Padding(
                          padding:
                              EdgeInsets.only(left: 30, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //crazy offer text
                              Text(
                                'Crazy offers',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //50% text
                              Text(
                                '50%',
                                style: TextStyle(
                                    fontSize: 32,
                                    color: Color.fromARGB(
                                      255,
                                      255,
                                      115,
                                      0,
                                    ),
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              //discount text
                              Text(
                                'Discount',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset(
                              'assets/profile_image/shopper.png',
                              height: 220,
                              width: 220,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //best deals text
                  const SizedBox(height: 20,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Best deals',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  //pizza burg offer container
                  Container(
                    height: 150,
                    width: 450,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //pizza offer text
                              const Text(
                                'Pizza',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              //price text
                              Text(
                                'Price - \$150',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: const  Color.fromARGB(255, 199, 197, 197).withOpacity(0.75),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
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
                                      color: Color.fromARGB(255, 34, 34, 34),
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
                                      color: Color.fromARGB(255, 34, 34, 34),
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
                        Expanded(
                          child: Align(
                            alignment: const Alignment(0.5, 0.3),
                            child: Image.asset(
                              'assets/food_icons/pizza_slice.png',
                              height: 115,
                              width: 115,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15,),
                  //tacos offer container
                  Container(
                    height: 150,
                    width: 450,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      color: Color.fromARGB(255, 59, 59, 59),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 30, top: 20, bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //pizza offer text
                              const Text(
                                'Tacos',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 6,
                              ),
                              //price text
                              Text(
                                'Price - \$230',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: const  Color.fromARGB(255, 199, 197, 197).withOpacity(0.75),
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 15,
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
                                      color: Color.fromARGB(255, 34, 34, 34),
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
                                    '5',
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
                                      color: Color.fromARGB(255, 34, 34, 34),
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
                        Expanded(
                          child: Align(
                            alignment: const Alignment(0.5, 0.3),
                            child: Image.asset(
                              'assets/food_icons/tacos.png',
                              height: 115,
                              width: 115,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
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
