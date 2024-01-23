import 'package:latlng/latlng.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagesPaths;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagesPaths,
    required this.price,
    required this.coordinate,
    this.totalReview = 0,
    this.ratingScore = 0,
  });

  static List<HotelModel> sampleHotels = [
    HotelModel(
      id: '1',
      title: "D'Java Homestay",
      location: 'surabaya',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpg',
      ],
      price: 337,
      coordinate: const LatLng(
        -7.8712168283326625,
        110.353484068852,
      ),
      ratingScore: 5.0,
    ),
    HotelModel(
      id: '1',
      title: 'Greenhost Boutique Hotel',
      location: 'Yogyakarta',
      address: 'Jl. Parangtritis km 8.5, Yogyakarta 55186',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_02.jpg',
      ],
      price: 456,
      coordinate: const LatLng(
        -7.8712168283326625,
        110.353484068852,
      ),
      ratingScore: 3.6,
      totalReview: 134,
    ),
    HotelModel(
      id: '1',
      title: 'Candi Tirta Rahayu',
      location: 'phiphi island',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_03.jpg',
      ],
      price: 695,
      coordinate: const LatLng(
        -7.8712168283326625,
        110.353484068852,
      ),
      ratingScore: 4.4,
    ),
    HotelModel(
      id: '1',
      title: 'Candi Tirta Rahayu',
      location: 'bankok',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpg',
      ],
      price: 695,
      coordinate: const LatLng(
        -7.8712168283326625,
        110.353484068852,
      ),
      ratingScore: 4.4,
    ),
  ];
}
