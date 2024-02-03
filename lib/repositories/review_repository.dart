import 'package:booking_app/models/review.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_repository.g.dart';

@riverpod
ReviewRepository reviewRepository(ReviewRepositoryRef ref) =>
    ReviewRepository();

class ReviewRepository {
  final CollectionReference _reviewCollecion =
      FirebaseFirestore.instance.collection('users');

  Future<List<Review>> getReviews() async {
    QuerySnapshot querySnapshot = await _reviewCollecion.get();
    return querySnapshot.docs
        .map((doc) => Review.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
