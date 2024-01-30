import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Booking"),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Booking",
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ClipOval(
              child: SizedBox.fromSize(
                size: const Size(280, 200),
                child: const Image(
                  image: AssetImage(
                    "assets/images/rest.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Text(
              "Time to start thining about your next adventure!",
            ),
            const Text(
              "Create a trip by adding a flight or hotel.",
            ),
            ElevatedButton(
                onPressed: () {},
                child: Container(
                  width: 120,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.blue),
                  ),
                  child: const Text(
                    "Start Booking",
                  ),
                ))
          ],
        ),
        bottomNavigationBar: const CustomNavBar(
          index: 2,
        ));
  }
}
