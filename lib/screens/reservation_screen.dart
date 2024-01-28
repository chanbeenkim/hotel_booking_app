import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/reservation_widgets/reservation_image_widget.dart';
import '../widgets/reservation_widgets/reservation_info_widget.dart';
import '../widgets/reservation_widgets/reservation_title_widget.dart';

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
          const ReservationImage(),
          const ReservationTitle(),
          Divider(
            color: Colors.grey.shade200,
            height: 24,
            thickness: 10,
          ),
          Column(
            children: [
              const ReservationInfo(),
              const SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.grey.shade200,
                height: 40,
                thickness: 10,
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: const CustomNavBar(
        index: 0,
      ),
    );
  }
}
