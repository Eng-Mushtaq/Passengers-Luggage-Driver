import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:luggage_delivery/Customer/SignupScreen.dart';
import 'package:luggage_delivery/user_type_screen.dart';

import 'Driver/SignupScreen.dart';
import 'custom_widgets/custom_textformfield.dart';
import 'onboarding/constant.dart';

class UserTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailPassword = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFf1f1f1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
              screenSize.width * 0.05), // Dynamic padding based on screen width
          child: ConstrainedBox(
            constraints: BoxConstraints(
                // minHeight: screenSize.height,
                ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // SizedBox(height: screenSize.height * 0.02),

                  Padding(
                    padding: EdgeInsets.only(top: screenSize.height * 0.10),
                    // padding: EdgeInsets.only(top: screenSize.height * 0.35),
                    child: Image.asset(
                      'assets/images/logo.png',
                      height: screenSize.height * 0.35,
                    ),
                  ), // Replace with your logo image path
                  // SizedBox(
                  //     height: screenSize.height *
                  //         0.01), // Dynamic spacing based on screen height
                  const Text(
                    'Welcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: screenSize.height *
                          0.01), // Dynamic spacing based on screen height
                  const Text(
                    'Join Us As ',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black54),
                  ),
                  SizedBox(height: screenSize.height * 0.04),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(CustomerSignupScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightgreenshede1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius as needed
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.02),

                      // Dynamic padding based on screen height
                    ),
                    child: Text(
                      'Customer',
                      style: TextStyle(fontSize: 18, color: primarygreen),
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.04),
                  ElevatedButton(
                    onPressed: () {
                      Get.to(DriverSignupScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius as needed
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: screenSize.height * 0.02),

                      // Dynamic padding based on screen height
                    ),
                    child: const Text(
                      'Driver',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ), // Dynamic spacing based on screen height
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
