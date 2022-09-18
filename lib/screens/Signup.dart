import 'dart:ui';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:blur/blur.dart';
import 'package:share_a_book/screens/HomeScreen.dart';
import 'package:share_a_book/screens/Login.dart';

import '../utils/app_colors.dart';
import '../widgets/button_widget.dart';
import '../widgets/textfield_widget.dart';

class Signup extends StatelessWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController pwController = TextEditingController();
    List images = ["g.png", "f.png"];
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        width: width,
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/homescreen.jpg"))),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: width,
                height: height * 0.05,
              ),
              SizedBox(
                  width: width,
                  height: height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                          width: width * 0.34,
                          height: height * 0.15,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: width * 0.34,
                                height: height * 0.06,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/logo.png"))),
                              ),
                              RichText(
                                  text: const TextSpan(
                                      text: 'Share a Book',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'Combo')))
                            ],
                          )),
                      IconButton(
                        onPressed: () {
                          Get.to(() => const HomeScreen(),
                              transition: Transition.leftToRightWithFade,
                              duration: const Duration(milliseconds: 500));
                        },
                        icon: const Icon(Icons.home),
                        iconSize: 30,
                        color: AppColors.mainColor,
                      ),
                    ],
                  )),
              SizedBox(
                width: width,
                height: height * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Hello, Book Lover!",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 74, 72, 72),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: width,
                height: height * 0.55,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFieldWidget(
                      textController: emailController,
                      hintText: "e-mail",
                      borderRadius: 30,
                    ),
                    SizedBox(
                      width: width,
                      height: height * 0.02,
                    ),
                    TextFieldWidget(
                      textController: pwController,
                      hintText: "Password",
                      borderRadius: 30,
                    ),
                    SizedBox(
                      width: width,
                      height: height * 0.02,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        elevation: 0,
                        primary: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: ButtonWidget(
                          backgroundcolor: AppColors.mainColor,
                          text: "Sign up",
                          textColor: Colors.white),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        const Text(
                          "don't have an account?",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 244, 218, 218),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.to(() => const Login(),
                                transition: Transition.leftToRightWithFade,
                                duration: const Duration(milliseconds: 500));
                          },
                          child: Text(
                            "Log in",
                            style: TextStyle(
                              fontSize: 15,
                              color: AppColors.smallTextColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width,
                      child: Column(
                        children: [
                          RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  text: "Sign up using following methods",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 194, 173, 173),
                                  ))),
                          Wrap(
                              children: List<Widget>.generate(2, (index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: CircleAvatar(
                                radius: width * 0.065,
                                backgroundImage:
                                    AssetImage("assets/" + images[index]),
                              ),
                            );
                          }))
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
