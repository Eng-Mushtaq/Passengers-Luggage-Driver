import 'package:flutter/material.dart';
import 'package:luggage_delivery/onboarding/constant.dart';

import 'custom_widgets/custom_textformfield.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController companyController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController houseNumberController = TextEditingController();
  final TextEditingController streetNameController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController postcodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf1f1f1),
      // appBar: AppBar(
      //   title: Text('Signup'),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(),
                  IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back,
                        color: blue,
                      )),
                ],
              ),
              Text(
                'Signup',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 24, color: blue),
              ),
              const SizedBox(height: 20),
              const Text(
                'Enter Personal details to continue',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),
              CustomTextFormField(
                labelText: 'Company Name',
                controller: companyController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormField(
                      labelText: 'First Name',
                      controller: firstNameController,
                      textInputType: TextInputType.name,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: CustomTextFormField(
                      labelText: 'Last Name',
                      controller: lastNameController,
                      textInputType: TextInputType.name,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Email',
                controller: emailController,
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Mobile Number',
                controller: mobileNumberController,
                textInputType: TextInputType.phone,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Password',
                controller: passwordController,
                isObsecure: true,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Confirm Password',
                controller: confirmPasswordController,
                isObsecure: true,
              ),
              const SizedBox(height: 20),
              const Text('Enter Address details to continue'),
              const SizedBox(height: 10),
              CustomTextFormField(
                labelText: 'House Number',
                controller: houseNumberController,
                textInputType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Street Name',
                controller: streetNameController,
                textInputType: TextInputType.streetAddress,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'City',
                controller: cityController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'State',
                controller: stateController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Postcode',
                controller: postcodeController,
                textInputType: TextInputType.number,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                labelText: 'Country',
                controller: countryController,
                textInputType: TextInputType.text,
              ),
              const SizedBox(height: 20),
              SizedBox(
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      // Implement login logic
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8.0), // Adjust the radius as needed
                      ),
                      //   padding: EdgeInsets.symmetric(
                      //       vertical: screenSize.height * 0.02),
                      //
                      //   // Dynamic padding based on screen height
                      // ),
                    ),
                    child: const Text(
                      'REGISTER',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
