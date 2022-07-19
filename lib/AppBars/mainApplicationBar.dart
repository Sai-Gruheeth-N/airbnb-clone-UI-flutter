import 'package:flutter/material.dart';

class ApplicationBar extends StatelessWidget with PreferredSizeWidget {
  const ApplicationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 1.0,
      centerTitle: true,
      title: const Text(
        'Home',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18.0,
        ),
      ),
      leading: Padding(
        padding: const EdgeInsets.all(5.0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.account_circle,
            color: Colors.redAccent[400],
          ),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.event_note_outlined),
          color: Colors.redAccent[400],
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.bookmark_border),
          color: Colors.redAccent[400],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
