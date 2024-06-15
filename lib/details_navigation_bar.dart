import 'package:flutter/material.dart';
import 'package:food_delivery_app/details.dart';

class DetailsNavigation extends StatefulWidget {
  const DetailsNavigation({super.key});

  @override
  State<DetailsNavigation> createState() => _DetailsNavigationState();
}

class _DetailsNavigationState extends State<DetailsNavigation> {
  int _pageIndex = 0;
  final List<Widget> body = const [
    DetailssScreen(),
    DetailssScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          body.elementAt(_pageIndex),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Align(
              alignment: const Alignment(0.0, 1.1),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(
                  width: 215,
                  child: BottomNavigationBar(
                    currentIndex: _pageIndex,
                    onTap: (int index) {
                      setState(() {
                        _pageIndex = index;
                      });
                    },
                    backgroundColor: const Color.fromARGB(
                      255,
                      255,
                      115,
                      0,
                    ),
                    selectedItemColor: Colors.white,
                    unselectedItemColor: Colors.white,
                    items: const [
                      BottomNavigationBarItem(
                          icon: SizedBox.shrink(), label: ''),
                      BottomNavigationBarItem(
                          icon: SizedBox.shrink(), label: 'Add to cart'),
                      BottomNavigationBarItem(
                        icon: SizedBox.shrink(),
                        label: '',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
