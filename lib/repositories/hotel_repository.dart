import 'package:booking_app/models/hotel_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hotel_repository.g.dart';

@riverpod
HotelRepository hotelRepository(HotelRepositoryRef ref) => HotelRepository();

class HotelRepository {
  Future<List<HotelModel>> getHotels() async {
    await Future.delayed(const Duration(seconds: 1));
    return HotelModel.sampleHotels;
  }

  Future<HotelModel> getHotel(String hotelId) async {
    await Future.delayed(const Duration(seconds: 1));
    return HotelModel.sampleHotels.where((hotel) => hotel.id == hotelId).first;
  }
}
