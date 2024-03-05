import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luggage_delivery/LoginScreen.dart';
import 'package:luggage_delivery/user_type_screen.dart';

import 'constant.dart';
import 'model/allinonboardscreen.dart';

class OnboardScreen extends StatefulWidget {
  OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int currentIndex = 0;

  List<AllinOnboardModel> allinonboardlist = [
    AllinOnboardModel(
        "assets/images/onboarding2.png",
        "Welcome to the ultimate convenience in travel! Say goodbye to lugging heavy bags and enjoy the freedom of moving light. Our service seamlessly transfers your luggage from your hotel to the airport, ensuring a stress-free journey to your destination.",
        "Hassle-Free Travel"),
    AllinOnboardModel(
        "assets/images/onboarding2.webp",
        "We prioritize the safety of your luggage with our secure transfer service. Track your bags in real-time and arrive at the airport with the peace of mind that everything is waiting for you, safe and sound.",
        " Secure & Reliable "),
    AllinOnboardModel(
        "assets/images/onboarding1.png",
        "With just a few taps, schedule a pick-up, and we’ll handle the rest. Experience the simplicity of efficient travel with our dedicated luggage transfer service.",
        " Swift & Simple"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              itemCount: allinonboardlist.length,
              itemBuilder: (context, index) {
                return PageBuilderWidget(
                  title: allinonboardlist[currentIndex].titlestr,
                  description: allinonboardlist[currentIndex].description,
                  imgurl: allinonboardlist[currentIndex].imgStr,
                );
              }),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.3,
            left: MediaQuery.of(context).size.width * 0.44,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                allinonboardlist.length,
                (index) => buildDot(index: index),
              ),
            ),
          ),
          currentIndex < allinonboardlist.length - 1
              ? Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.2,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Get.to(LoginPage());
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: lightgreenshede1,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0))),
                        ),
                        child: Text(
                          "Previous",
                          style: TextStyle(fontSize: 18, color: primarygreen),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            currentIndex++; // Move to the next page
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: lightgreenshede1,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.0),
                                  bottomLeft: Radius.circular(20.0))),
                        ),
                        child: Text(
                          "Next",
                          style: TextStyle(fontSize: 18, color: primarygreen),
                        ),
                      )
                    ],
                  ),
                )
              : Positioned(
                  bottom: MediaQuery.of(context).size.height * 0.2,
                  left: MediaQuery.of(context).size.width * 0.33,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(LoginPage());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: lightgreenshede1,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)),
                    ),
                    child: Text(
                      "Get Started",
                      style: TextStyle(fontSize: 18, color: primarygreen),
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}

class PageBuilderWidget extends StatelessWidget {
  String title;
  String description;
  String imgurl;
  PageBuilderWidget(
      {Key? key,
      required this.title,
      required this.description,
      required this.imgurl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: Image.asset(imgurl),
          ),
          const SizedBox(
            height: 20,
          ),
          //Tite Text
          Text(title,
              style: TextStyle(
                  color: primarygreen,
                  fontSize: 24,
                  fontWeight: FontWeight.w700)),
          const SizedBox(
            height: 20,
          ),
          //discription
          Text(
            description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              color: primarygreen,
              fontSize: 14,
            ),
          )
        ],
      ),
    );
  }
}
