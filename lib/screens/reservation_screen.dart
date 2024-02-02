import 'package:booking_app/widgets/custom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/map_location_provider.dart';
import '../providers/map_markers_provider.dart';
import '../providers/review_provider.dart';
import '../widgets/reservation_widgets/reservation_cost_widget.dart';
import '../widgets/reservation_widgets/reservation_image_widget.dart';
import '../widgets/reservation_widgets/reservation_info_widget.dart';
import '../widgets/reservation_widgets/reservation_offers_widget.dart';
import '../widgets/reservation_widgets/reservation_title_widget.dart';

class ReservationScreen extends ConsumerWidget {
  const ReservationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapLocation = ref.watch(mapLocationProvider);
    final mapMarkers = ref.watch(mapMarkersProvider);
    final review = ref.watch(reviewProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Reservation Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
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
                const ReservationCost(),
                Divider(
                  color: Colors.grey.shade200,
                  thickness: 10,
                ),
                const ReservationOffers(),
                const Divider(
                  color: Colors.white,
                  thickness: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target:
                          LatLng(mapLocation.latitude, mapLocation.longitude),
                      zoom: 12.5,
                    ),
                    markers: mapMarkers.maybeWhen(
                      data: (markers) => markers,
                      orElse: () => {},
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey[600],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        "서울특별시 마포구 마포대로 83",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Text(review.maybeWhen(
                        data: (reviews) {
                          final review = reviews[0];
                          return review.review;
                        },
                        orElse: () => "No reviews",
                      )),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: const CustomNavBar(
        index: 0,
      ),
    );
  }
}
