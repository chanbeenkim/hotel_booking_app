import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/review.dart';
import '../repositories/review_repository.dart';

part 'review_provider.g.dart';

@riverpod
Future<List<Review>> reviews(ReviewsRef ref) async {
  final ReviewRepository reviewRepository = ref.watch(reviewRepositoryProvider);
  return reviewRepository.getReviews();
}
