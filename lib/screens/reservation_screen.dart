import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

class ReservationScreen extends StatelessWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reservation Screen"),
      ),
      body: Column(
        children: [
          const Row(
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
          const Row(
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
          const SizedBox(
            height: 4,
          ),
          Row(
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
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(
        index: 0,
      ),
    );
  }
}
