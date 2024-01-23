import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/map_location_provider.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapLocation = ref.watch(mapLocationProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
        leading: const BackButton(),
      ),
      body: const Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(
                -7.8712168283326625,
                110.353484068852,
              ),
              zoom: 12.5,
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomNavBar(
        index: 1,
      ),
    );
  }
}
