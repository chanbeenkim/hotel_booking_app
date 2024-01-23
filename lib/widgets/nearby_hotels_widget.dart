import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/all_hotels_provider.dart';
import 'hotel_card_widget.dart';

class NearbyHotels extends ConsumerWidget {
  const NearbyHotels({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        hotels.when(
          data: (hotels) {
            return ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  return HotelCard(hotel: hotels[index]);
                });
          },
          error: (error, stackTrace) => Text('Error: $error'),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ],
    );
  }
}
