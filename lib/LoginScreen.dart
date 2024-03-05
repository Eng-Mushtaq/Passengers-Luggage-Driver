import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:luggage_delivery/Customer/SignupScreen.dart';

import 'Driver/SignupScreen.dart';
import 'custom_widgets/custom_textformfield.dart';
import 'onboarding/constant.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;
    TextEditingController passwordController = TextEditingController();
    TextEditingController emailPassword = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
              screenSize.width * 0.05), // Dynamic padding based on screen width
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: screenSize.height,
            ),
            child: IntrinsicHeight(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // SizedBox(height: screenSize.height * 0.02),

                  Image.asset(
                    'assets/images/logo.png',
                    height: screenSize.height * 0.35,
                  ), // Replace with your logo image path
                  // SizedBox(
                  //     height: screenSize.height *
                  //         0.01), // Dynamic spacing based on screen height
                  const Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: screenSize.height *
                          0.01), // Dynamic spacing based on screen height
                  const Text(
                    'Enter Login Credentials',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  SizedBox(
                      height: screenSize.height *
                          0.04), // Dynamic spacing based on screen height
                  CustomTextFormField(
                    labelText: 'Email',
                    isObsecure: false,
                    controller: emailPassword,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: screenSize.height * 0.03),
                  CustomTextFormField(
                    labelText: 'Password',
                    isObsecure: true,
                    controller: passwordController,
                    textInputType: TextInputType.visiblePassword,
                  ), // Dynamic spacing based on screen height

                  SizedBox(height: screenSize.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(),
                      TextButton(
                        child: const Text('Forgot Password?'),
                        onPressed: () {
                          // Implement forgot password logic
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * 0.01),
// Dynamic spacing based on screen height
                  SizedBox(
                    height: 55,
                    child: ElevatedButton(
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      onPressed: () {
                        // Implement login logic
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
                    ),
                  ),
                  // const Spacer(),
                  // Use Spacer to push the content up when the keyboard appears
                  SizedBox(height: screenSize.height * 0.02),
                  Center(
                    child: Wrap(
                      children: <Widget>[
                        const Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Get.to(DriverSignupScreen());
                            // Implement sign up navigation
                          },
                          child: const Text(
                            'Sign Up Here',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
