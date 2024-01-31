import 'dart:convert';

import 'package:booking_app/models/review_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 코드 생성이 작동하는 데 필요합니다.
part 'provider.g.dart';

/// 그러면 `activityProvider`라는 이름의 provider가 생성됩니다.
/// 이 함수의 결과를 캐시하는 공급자를 생성합니다.
@riverpod
Future<ReviewModel> reviewmodel(reviewmodelRef ref) async {
  final json = jsonDecode(response.body) as Map<String, dynamic>;
  // 마지막으로 맵을 Activity 인스턴스로 변환합니다.
  return ReviewModel.fromJson(json);
}
