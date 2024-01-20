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
      title: 'title',
      location: 'location',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpg',
        'assets/images/hotel_02.jpg',
        'assets/images/hotel_03.jpg'
      ],
      price: 456,
      coordinate: const LatLng(
        -7.8712,
        112.5263,
      ),
    ),
    HotelModel(
      id: '1',
      title: 'title',
      location: 'location',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpg',
        'assets/images/hotel_02.jpg',
        'assets/images/hotel_03.jpg'
      ],
      price: 456,
      coordinate: const LatLng(
        -7.8712,
        112.5263,
      ),
    ),
    HotelModel(
      id: '1',
      title: 'title',
      location: 'location',
      address: 'address',
      description: 'description',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpg',
        'assets/images/hotel_02.jpg',
        'assets/images/hotel_03.jpg'
      ],
      price: 456,
      coordinate: const LatLng(
        -7.8712,
        112.5263,
      ),
    ),
  ];
}