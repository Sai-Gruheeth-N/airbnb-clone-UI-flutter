import 'package:flutter/material.dart';

class HomeApplicationBar extends StatelessWidget with PreferredSizeWidget {
  const HomeApplicationBar({
    super.key,
    required this.heart,
  });
  final Color? heart;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      title: Text(
        'Home',
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
      actions: [
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            'images/icons/information.png',
            color: Colors.redAccent[400],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            Icons.favorite,
            color: heart,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
