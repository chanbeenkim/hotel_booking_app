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
      title: "Shilla Stay Mapo",
      location: 'Seoul',
      address: '서울특별시 마포구 마포대로 83',
      description: '신라스테이 마포',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_01.jpeg',
      ],
      price: 99,
      coordinate: const LatLng(
        37.5428732,
        126.9496986,
      ),
      ratingScore: 4.9,
    ),
    HotelModel(
      id: '2',
      title: 'Hamilton Hotel',
      location: 'Seoul',
      address: '서울특별시 용산구 이태원로 179',
      description: '해밀톤호텔',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_02.jpeg',
      ],
      price: 86,
      coordinate: const LatLng(
        37.5347906,
        126.9935937,
      ),
      ratingScore: 3.6,
      totalReview: 143,
    ),
    HotelModel(
      id: '3',
      title: 'Riverside Hotel',
      location: 'Seoul',
      address: '서울특별시 서초구 잠원동 6-1',
      description: '리버사이드호텔',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_03.jpg',
      ],
      price: 76,
      coordinate: const LatLng(
        37.518566,
        127.0181364,
      ),
      ratingScore: 3.7,
    ),
    HotelModel(
      id: '4',
      title: 'GLAD Yeouido',
      location: 'Seoul',
      address: '서울특별시 영등포구 의사당대로 16',
      description: '글래드 여의도',
      thumbnailPath: 'thumbnailPath',
      imagesPaths: [
        'assets/images/hotel_04.jpeg',
      ],
      price: 104,
      coordinate: const LatLng(
        37.5274045,
        126.9172764,
      ),
      ratingScore: 4.2,
    ),
  ];
}
