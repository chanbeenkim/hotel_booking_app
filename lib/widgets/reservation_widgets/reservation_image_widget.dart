import 'package:flutter/material.dart';

class ReservationImage extends StatelessWidget {
  const ReservationImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 130,
              height: 130,
              child: Image(
                image: AssetImage("assets/images/hotel_01.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 130,
              height: 130,
              child: Image(
                image: AssetImage("assets/images/hotel_02.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 130,
              height: 130,
              child: Image(
                image: AssetImage("assets/images/hotel_04.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 195,
              height: 195,
              child: Image(
                image: AssetImage("assets/images/hotel_02.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 195,
              height: 195,
              child: Image(
                image: AssetImage("assets/images/hotel_04.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 4,
        ),
      ],
    );
  }
}
