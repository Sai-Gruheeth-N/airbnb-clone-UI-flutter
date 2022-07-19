import 'package:flutter/material.dart';
import 'package:twople_booking_app/AppBars/bookingApplicationBar.dart';
import 'package:twople_booking_app/Screens/confirmationPage.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  int adultCount = 0;
  int childCount = 0;

  void resetCounter() {
    adultCount = 0;
    childCount = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BookingApplicationBar(),
        body: Column(
          children: [
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.redAccent[400]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Adult : ',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  Text(
                    '$adultCount',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        adultCount = adultCount + 1;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (adultCount > 0) {
                          adultCount = adultCount - 1;
                        }
                      });
                    },
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.redAccent[400]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Child : ',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  Text(
                    '$childCount',
                    style: TextStyle(fontSize: 22.0, color: Colors.white),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        childCount = childCount + 1;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        if (childCount > 0) {
                          childCount = childCount - 1;
                        }
                      });
                    },
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 400.0),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 25.0),
              height: 70.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.redAccent[400],
              ),
              child: TextButton(
                onPressed: () {
                  if (adultCount + childCount > 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ConfirmationPage();
                      }),
                    );
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                'Please enter the count of adult and children.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context, 'OK');
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        });
                  }
                },
                child: Text(
                  'Confirm booking for ${adultCount + childCount}',
                  style: TextStyle(fontSize: 22.0, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
