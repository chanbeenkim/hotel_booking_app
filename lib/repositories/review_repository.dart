import 'package:booking_app/models/review_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:firebase_core/firebase_core.dart'; // Add this import statement

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'review_repository.g.dart';

@riverpod
ReviewRepository reviewRepository(ReviewRepositoryRef ref) =>
    ReviewRepository();

class ReviewRepository {
  final reviewCollection = FirebaseFirestore.instance.collection('users');

  Future<List<ReviewModel>> getReviews() async {
    await Firebase.initializeApp(); // Initialize Firebase app

    QuerySnapshot querySnapshot = await reviewCollection.get();

    return querySnapshot.docs
        .map((doc) => ReviewModel.fromJson(doc.data() as Map<String, dynamic>))
        .toList();
  }
}
