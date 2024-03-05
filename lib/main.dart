import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luggage_delivery/onboarding/onboard.dart';

import 'LoginScreen.dart';
import 'Customer/SignupScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Luggage Delivery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: OnboardScreen(),
    );
  }
}
