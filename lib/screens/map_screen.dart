import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/map_location_provider.dart';
import '../providers/map_markers_provider.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapLocation = ref.watch(mapLocationProvider);
    final mapMarkers = ref.watch(mapMarkersProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Map Screen'),
        leading: const BackButton(),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(mapLocation.latitude, mapLocation.longitude),
              zoom: 12.5,
            ),
            markers: mapMarkers.maybeWhen(
              data: (markers) => markers,
              orElse: () => {},
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
