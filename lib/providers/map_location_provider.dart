import 'package:latlng/latlng.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_location_provider.g.dart';

@riverpod
class MapLocation extends _$MapLocation {
  @override
  LatLng build() {
    return const LatLng(-7.795529617707741, 110.36872726427349);
  }

  void setMapLocation(LatLng position) {
    state = position;
  }
}
