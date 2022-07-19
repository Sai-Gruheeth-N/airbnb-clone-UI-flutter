import 'package:flutter/material.dart';
import 'package:twople_booking_app/Screens/homeViewPage.dart';

class CreateCard extends StatefulWidget {
  const CreateCard({
    super.key,
    required this.image,
    required this.description,
    required this.address,
  });
  final String image;
  final String description;
  final String address;

  @override
  State<CreateCard> createState() => _CreateCardState();
}

class _CreateCardState extends State<CreateCard> {
  Color? selectedHeart = Colors.grey[800];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ViewHome(
                photo: AssetImage(widget.image),
                address: widget.address,
                heart: selectedHeart,
              );
            },
          ),
        );
      },
      child: Card(
        child: Stack(
          children: [
            SizedBox(
              width: 175.0,
              height: 200.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    image: AssetImage(widget.image),
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                    child: Text(
                      widget.description,
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 10.0),
                    child: Text(
                      widget.address,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 125, top: 0.0),
              child: IconButton(
                onPressed: (() {
                  setState(() {
                    if (selectedHeart == Colors.grey[800]) {
                      selectedHeart = Colors.redAccent[400];
                    } else {
                      selectedHeart = Colors.grey[800];
                    }
                  });
                }),
                icon: Icon(
                  Icons.favorite,
                  color: selectedHeart,
                ),
                padding: EdgeInsets.all(2.0),
                alignment: Alignment.topRight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
