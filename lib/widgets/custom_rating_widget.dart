import 'package:flutter/material.dart';

class CustomRating extends StatelessWidget {
  final double ratingScore;
  final int totalReviews;
  final bool showReviews;
  const CustomRating(
      {super.key,
      required this.ratingScore,
      this.totalReviews = 0,
      this.showReviews = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            margin: const EdgeInsets.all(1),
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              color: i <= ratingScore ? Colors.yellow[600] : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.yellow[600]!,
                width: 2,
              ),
            ),
          ),
        const SizedBox(
          width: 10,
        ),
        Text(
          "$ratingScore",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
