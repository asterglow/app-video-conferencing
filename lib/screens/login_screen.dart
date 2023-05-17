import 'package:app_video_conferencing/resources/auth_methods.dart';
import 'package:app_video_conferencing/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMethods = AuthMethods();
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(18.0),
            child: Text(
              'Start or Join a Meeting',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30.0),
            child: Image.asset('assets/images/onboarding.jpeg'),
          ),
          CustomButton(text: 'Sign In using Google', onPressed: () async {
            bool result = await _authMethods.signInGoogle(context);
            if (result) {
              Navigator.pushNamed(context, '/home');
            }
          },)
        ],
      ),
    );
  }
}
