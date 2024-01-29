import 'package:flutter/Material.dart';

class ReservationCost extends StatelessWidget {
  const ReservationCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                height: 16,
                width: 100,
                color: Colors.green,
                child: const Text(
                  "Limited-time-Deal",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Price for 2 nights",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "₩352,000",
                style: TextStyle(
                  color: Colors.red,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "₩176,000",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          const Row(
            children: [
              Icon(
                Icons.check,
                size: 14,
                color: Colors.green,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                "Includes taxes and fees",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
