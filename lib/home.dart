import 'package:flutter/material.dart';
import 'package:food_delivery_app/details_navigation_bar.dart';
import 'package:food_delivery_app/offers_navigation_bar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 34, 34, 34),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              //appbar section
              AppBar(
                backgroundColor: const Color.fromARGB(255, 34, 34, 34),
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
                              MdiIcons.menuOpen,
                              color: Colors.white,
                            ),
                            onTap: () {},
                          ),
                        ),
                        const SizedBox(
                          width: 250,
                        ),
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
              //body
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Column(
                  children: [
                    //header text
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Hello! ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'John carry',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Welcome here',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    //food categories
                    SizedBox(
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Row(
                            children: [
                              //first food category
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const DetailsNavigation()),
                                  );
                                },
                                child: Container(
                                  height: 220,
                                  width: 95,
                                  padding: const EdgeInsets.only(top: 7.5),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 59, 59, 59),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(70),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 60,
                                        width: 80,
                                        padding: const EdgeInsets.all(15),
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 255, 115, 0),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(40),
                                            topRight: Radius.circular(40),
                                            bottomLeft: Radius.circular(20),
                                            bottomRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: InkWell(
                                          child: Image.asset(
                                            'assets/food_icons/burger.png',
                                            height: 30,
                                            width: 30,
                                          ),
                                          onTap: () {},
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Text(
                                        'burger',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              //second food category
                              Container(
                                height: 220,
                                width: 95,
                                padding: const EdgeInsets.only(top: 7.5),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(70),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      padding: const EdgeInsets.all(12),
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 34, 34, 34),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: InkWell(
                                        child: Image.asset(
                                          'assets/food_icons/pizza.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Hot Pizza',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              //third food category
                              Container(
                                height: 220,
                                width: 95,
                                padding: const EdgeInsets.only(top: 7.5),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(70),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 34, 34, 34),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: InkWell(
                                        child: Image.asset(
                                          'assets/food_icons/tacos.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Tacos',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              //fourth food category
                              Container(
                                height: 220,
                                width: 95,
                                padding: const EdgeInsets.only(top: 7.5),
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(70),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 80,
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                        color: Color.fromARGB(255, 34, 34, 34),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(40),
                                          topRight: Radius.circular(40),
                                          bottomLeft: Radius.circular(20),
                                          bottomRight: Radius.circular(20),
                                        ),
                                      ),
                                      child: InkWell(
                                        child: Image.asset(
                                          'assets/food_icons/sandwich.png',
                                          height: 30,
                                          width: 30,
                                        ),
                                        onTap: () {},
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    const Text(
                                      'Sandwich',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                              //fifth food category
                            ],
                          )
                        ],
                      ),
                    ),
                    //sub header text
                    const SizedBox(
                      height: 40,
                    ),
                    //today's offers section
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 268.0),
                          child: Text(
                            "Today's offers",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 140,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            children: [
                              //first food offer
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const OffersNavigation()),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(top: 15),
                                  height: 200,
                                  width: 100,
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 59, 59, 59),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      const Text(
                                        'Pizza Burg',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 239, 238, 238),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(left: 20.0),
                                        child: Row(
                                          children: [
                                            Text(
                                              '25%',
                                              style: TextStyle(
                                                color: Color.fromARGB(
                                                  255,
                                                  255,
                                                  115,
                                                  0,
                                                ),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text(
                                              'off',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Image.asset(
                                        'assets/food_icons/pizza_slice.png',
                                        height: 45,
                                        width: 45,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //second food offer
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                height: 200,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(right: 20.0),
                                      child: Text(
                                        'Tacos',
                                        style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 239, 238, 238),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '10%',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                115,
                                                0,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'off',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/food_icons/tacos.png',
                                      height: 55,
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //third food offer
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                height: 200,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Hot Fries',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 239, 238, 238),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '17%',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                115,
                                                0,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'off',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/food_icons/fries.png',
                                      height: 55,
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //fourth food offer
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                height: 200,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Ice Cream',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 239, 238, 238),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '5%',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                115,
                                                0,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'off',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/food_icons/icecream.png',
                                      height: 55,
                                      width: 55,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              //fifth food offer
                              Container(
                                padding: const EdgeInsets.only(top: 15),
                                height: 200,
                                width: 100,
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 59, 59, 59),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    const Text(
                                      'Pizza Burg',
                                      style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 239, 238, 238),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Row(
                                        children: [
                                          Text(
                                            '25%',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                115,
                                                0,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            'off',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Image.asset(
                                      'assets/food_icons/pizza.png',
                                      height: 45,
                                      width: 45,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //recommended section header section
                    const SizedBox(
                      height: 40,
                    ),
                    Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 230.0),
                          child: Text(
                            "Recommended food",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //
                        Column(
                          children: [
                            //first recommended food
                            GestureDetector(
                              onTap: () {},
                              child: Row(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 80,
                                    padding: const EdgeInsets.all(12),
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 59, 59, 59),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(20),
                                      ),
                                    ),
                                    child: Image.asset(
                                      'assets/food_icons/strawberry_icecream.png',
                                      height: 60,
                                      width: 60,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 30,
                                  ),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Strawberry chocolate ice cream',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Chefsquard Cafe',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 239, 238, 238),
                                              fontSize: 12.5,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          ),
                                          Text(
                                            '(\$24)',
                                            style: TextStyle(
                                              color: Color.fromARGB(
                                                255,
                                                255,
                                                115,
                                                0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            //second recommended food
                            Row(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  padding: const EdgeInsets.all(15),
                                  decoration: const BoxDecoration(
                                    color: Color.fromARGB(255, 59, 59, 59),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  child: Image.asset(
                                    'assets/food_icons/donut.png',
                                    height: 45,
                                    width: 45,
                                  ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pink yummy cream donuts',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          'Chefsquard Cafe',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 239, 238, 238),
                                            fontSize: 12.5,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 50,
                                        ),
                                        Text(
                                          '(\$56)',
                                          style: TextStyle(
                                            color: Color.fromARGB(
                                              255,
                                              255,
                                              115,
                                              0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    )
                    //recommended food section
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
