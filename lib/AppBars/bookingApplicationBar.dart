import 'package:flutter/material.dart';

class BookingApplicationBar extends StatelessWidget with PreferredSizeWidget {
  const BookingApplicationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      title: Text(
        '',
        style: TextStyle(color: Colors.redAccent[400]),
        textAlign: TextAlign.left,
      ),
      leading: IconButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_new,
          color: Colors.redAccent[400],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
