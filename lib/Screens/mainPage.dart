import 'package:flutter/material.dart';
import 'package:twople_booking_app/AppBars/mainApplicationBar.dart';
import 'package:twople_booking_app/bottomNavBar.dart';
import 'package:twople_booking_app/Cards/createCard.dart';
import 'package:twople_booking_app/Cards/makeCard.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const ApplicationBar(),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  height: 220.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 5.0, left: 10.0),
                        child: const Text(
                          'Explore Listings',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: const [
                              MakeCard(
                                image: AssetImage('images/explore/house1.jpg'),
                                desc: 'Recently Sold',
                              ),
                              MakeCard(
                                image: AssetImage('images/explore/house2.jpg'),
                                desc: 'For Rent',
                              ),
                              MakeCard(
                                image: AssetImage('images/explore/house3.jpg'),
                                desc: 'Open House',
                              ),
                              MakeCard(
                                image: AssetImage('images/explore/house4.jpg'),
                                desc: 'Mansion',
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: const Text(
                          'Homes in San Fransisco',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                            left: 5.0, top: 5.0, right: 5.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.vertical,
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  CreateCard(
                                    image: 'images/homes/hotel2.jpg',
                                    description: 'New Homes',
                                    address: '1100 Sacramento Street',
                                  ),
                                  CreateCard(
                                    image: 'images/homes/hotel1.jpg',
                                    description: 'New Homes',
                                    address: '4023 Folsom Street',
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  CreateCard(
                                    image: 'images/homes/hotel3.jpg',
                                    description: 'New Homes',
                                    address: '278 Graham St',
                                  ),
                                  CreateCard(
                                    image: 'images/homes/hotel4.jpg',
                                    description: 'New Homes',
                                    address: 'Great house',
                                  ),
                                ],
                              ),
                              Row(
                                children: const [
                                  CreateCard(
                                    image: 'images/homes/hotel5.jpg',
                                    description: 'New Homes',
                                    address: '375 Einstein St',
                                  ),
                                  CreateCard(
                                    image: 'images/homes/hotel6.jpg',
                                    description: 'New Homes',
                                    address: '007 Bond St',
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
