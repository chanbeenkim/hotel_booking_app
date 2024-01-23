import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'custom_text_field_widget.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final datetoTextController = TextEditingController();

    locationTextController.text = "Seoul";
    dateFromTextController.text = datetoTextController.text =
        DateFormat('yyyy/MM/dd').format(DateTime.now());

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.blueAccent,
                ),
                const SizedBox(width: 10),
                CustomTextField(
                  label: "Location",
                  hintText: locationTextController.text,
                  controller: locationTextController,
                ),
              ],
            ),
            Row(
              children: [
                const Icon(
                  Icons.calendar_today,
                  color: Colors.blueAccent,
                ),
                const SizedBox(width: 10),
                CustomTextField(
                  label: "From",
                  hintText: dateFromTextController.text,
                  controller: locationTextController,
                ),
                CustomTextField(
                  label: "To",
                  hintText: datetoTextController.text,
                  controller: locationTextController,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 60,
                  vertical: 10,
                ),
                backgroundColor: Colors.yellow[700],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Search",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
