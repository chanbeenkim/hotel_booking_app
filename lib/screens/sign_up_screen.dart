import 'package:booking_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../authentication/view_models/sign_up_view_model.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({super.key});

  @override
  ConsumerState<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends ConsumerState<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _email = "";
  String _password = "";

  @override
  void initState() {
    super.initState();
    _emailController.addListener(() {
      setState(() {
        _email = _emailController.text;
      });
    });
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _isEmailValid() {
    if (_email.isEmpty) return null;
    final regExp = RegExp(
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if (!regExp.hasMatch(_email)) {
      return "Email not valid";
    }
    return null;
  }

  void _onSubmit() {
    if (_email.isEmpty || _isEmailValid() != null) return;
    ref.read(signUpForm.notifier).state = {
      "email": _email,
      "password": _password
    };
    ref.read(signUpProvider.notifier).signUp();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: Column(
          children: [
            const Text(
              "Create an account",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              onEditingComplete: _onSubmit,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                errorText: _isEmailValid(),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            TextField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              onEditingComplete: _onSubmit,
              autocorrect: false,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.black,
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: _onSubmit,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
              ),
              child: const Text("Login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: _onSubmit,
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
