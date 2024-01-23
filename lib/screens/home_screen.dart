import 'package:flutter/material.dart';
import '../widgets/custom_nav_bar_widget.dart';
import '../widgets/header_widget.dart';
import '../widgets/nearby_hotels_widget.dart';
import '../widgets/seach_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('Hotel Booking App'),
      ),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(
                top: size.height * 0.25,
              ),
              color: Colors.white,
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  Header(),
                  Search(),
                  SizedBox(height: 20),
                  NearbyHotels(),
                  CustomNavBar(
                    index: 0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
