import 'dart:ui';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:share_a_book/screens/Signup.dart';

import '../utils/app_colors.dart';
import '../widgets/button_widget.dart';
import 'Login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          width: width,
          height: height,
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/homescreen.jpg"))),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: width,
                  height: height / 10,
                ),
                SizedBox(
                    width: double.maxFinite,
                    height: height / 8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: width / 3.5,
                            height: height / 8,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: width / 3.5,
                                  height: height / 16,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              AssetImage("assets/logo.png"))),
                                ),
                                RichText(
                                    text: const TextSpan(
                                        text: 'Share a Book',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: 'Combo')))
                              ],
                            )),
                        TextButton(
                            onPressed: () {
                              Get.to(() => const Login(),
                                  transition: Transition.leftToRightWithFade,
                                  duration: const Duration(milliseconds: 500));
                            },
                            child: Container(
                              width: 80,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)),
                              child: const Center(
                                child: Text(
                                  "login",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ),
                            ))
                      ],
                    )),
                SizedBox(
                  width: width,
                  height: height / 10,
                ),
                SizedBox(
                  width: width,
                  height: height - height / 8 - height / 10 - height / 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RichText(
                          text: const TextSpan(
                              text:
                                  'Share Your thoughts on your favourit books with others',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 40,
                                  fontFamily: 'Pacifico'))),
                      TextButton(
                          onPressed: () {
                            Get.to(() => const Signup(),
                                transition: Transition.leftToRightWithFade,
                                duration: const Duration(milliseconds: 500));
                          },
                          child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black, width: 3)),
                            child: const Center(
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.black,
                                    fontFamily: 'Pacifico'),
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
