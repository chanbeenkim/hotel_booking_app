import 'package:latlng/latlng.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'map_location_provider.g.dart';

@riverpod
class MapLocation extends _$MapLocation {
  @override
  LatLng build() {
    return const LatLng(37.5428732, 126.9496986);
  }

  void setMapLocation(LatLng position) {
    state = position;
  }
}
