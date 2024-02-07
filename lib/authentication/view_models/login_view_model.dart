import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../screens/home_screen.dart';
import '../repo/authentication_repo.dart';

class LoginViewModel extends AsyncNotifier<void> {
  late final AuthenticationRepository _repository;
  @override
  FutureOr<void> build() {
    _repository = ref.read(authRepo);
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => _repository.signIn(
        email,
        password,
      ),
    );
    if (state.hasError) {
      final snack = SnackBar(
        showCloseIcon: true,
        content: Text((state.error as FirebaseException).message ?? "Err"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snack);
    } else {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    }
  }
}

final loginProvider = AsyncNotifierProvider<LoginViewModel, void>(
  () => LoginViewModel(),
);
