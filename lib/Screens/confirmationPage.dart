import 'package:flutter/material.dart';
import 'package:twople_booking_app/AppBars/bookingApplicationBar.dart';
import 'package:twople_booking_app/AppBars/confirmationApplicationBar.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ConfirmationApplicationBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your booking has been confirmed. Payment will be done at the premises!',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0),
            Text('Happy Booking!'),
          ],
        ),
      ),
    ));
  }
}
