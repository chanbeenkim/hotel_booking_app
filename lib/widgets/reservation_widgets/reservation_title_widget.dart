import 'package:flutter/material.dart';

class ReservationTitle extends StatelessWidget {
  const ReservationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Step Inn Hongdae",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[700],
        ),
        Icon(
          Icons.thumb_up_alt_outlined,
          color: Colors.yellow[700],
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          padding: const EdgeInsets.all(5),
          width: 30,
          height: 30,
          decoration: const BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: const Text(
            "9.9",
            style: TextStyle(color: Colors.white),
          ),
        )
      ],
    );
  }
}
