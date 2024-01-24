import 'package:booking_app/screens/booking_screen.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/map_screen.dart';

class CustomNavBar extends StatelessWidget {
  final int index;
  const CustomNavBar({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 20,
          right: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavBarIcon(
              iconPath: Icons.home_outlined,
              text: "Home",
              isSelected: index == 0,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
            ),
            NavBarIcon(
              iconPath: Icons.map_outlined,
              text: "Map",
              isSelected: index == 1,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MapScreen(),
                  ),
                );
              },
            ),
            NavBarIcon(
              iconPath: Icons.airplane_ticket_outlined,
              text: "Booking",
              isSelected: index == 2,
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BookingScreen(),
                  ),
                );
              },
            ),
            NavBarIcon(
              iconPath: Icons.person_2_outlined,
              text: "Profile",
              isSelected: index == 3,
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  final IconData iconPath;
  final String text;
  final Function()? onTap;
  final bool isSelected;
  const NavBarIcon(
      {super.key,
      required this.iconPath,
      required this.text,
      this.onTap,
      this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final color = isSelected ? Colors.blueAccent : Colors.grey;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconPath,
            color: color,
            size: 24,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
