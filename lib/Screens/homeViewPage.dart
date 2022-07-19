import 'package:flutter/material.dart';
import 'package:twople_booking_app/Screens/bookingPage.dart';
import 'package:twople_booking_app/bottomNavBar.dart';
import 'package:twople_booking_app/AppBars/homeApplicationBar.dart';

class ViewHome extends StatelessWidget {
  const ViewHome({
    super.key,
    required this.photo,
    required this.address,
    required this.heart,
  });
  final AssetImage photo;
  final String address;
  final Color? heart;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: HomeApplicationBar(heart: heart),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 180.0,
                  width: double.infinity,
                  child: Image(
                    image: photo,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, left: 10.0),
                  child: Text(
                    address,
                    style:
                        TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0),
                  child: Text(
                    'Fabulous and modern two-bedroom house, two bath, home located in the heart of the city.',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Image.asset(
                    'images/maps/graham_st_map.png',
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: Container(
          margin: EdgeInsets.only(left: 31.0),
          width: double.infinity,
          child: FloatingActionButton(
            backgroundColor: Colors.redAccent[400],
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return BookingPage();
                  },
                ),
              );
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              'Book Now!',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        bottomNavigationBar: const BottomNavBar(),
      ),
    );
  }
}
