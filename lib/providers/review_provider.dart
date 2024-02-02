import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../models/review_model.dart';
import '../repositories/review_repository.dart';

part 'review_provider.g.dart';

@riverpod
Future<List<ReviewModel>> review(ReviewRef ref) async {
  final ReviewRepository reviewRepository = ref.read(reviewRepositoryProvider);
  return reviewRepository.getReviews();
}
