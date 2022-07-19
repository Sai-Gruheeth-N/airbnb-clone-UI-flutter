import 'package:flutter/material.dart';

class MakeCard extends StatelessWidget {
  const MakeCard({
    super.key,
    required this.image,
    required this.desc,
  });
  final AssetImage image;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: SizedBox(
          width: 150.0,
          height: 150.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: image,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(desc),
              ),
            ],
          ),
        ),
        // child: Column(
        //   children: [
        //     // Image(image: image),
        //     // Text(desc),
        //   ],
        // ),
      ),
    );
  }
}
