import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ontrack/presentation/sign_in_screen/signin.dart';
import 'package:ontrack/presentation/sign_up_screen/signup.dart';

class onboard extends StatelessWidget {
  const onboard({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logoblack.png",
              height: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Shift into a new era of convenienceand control with our automobile app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      Size(150, 40)), // Set width and height
                  backgroundColor: MaterialStateProperty.all(Color(0xff175D9A)),
                ),
                onPressed: () {
                  Get.to(signin());
                  // Get.toNamed(page)
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => signin(),
                  //     ));
                },
                child: Text("Sign In",
                    style: TextStyle(color: Colors.white, fontSize: 20))),
            SizedBox(
              height: 10,
            ),
            TextButton(
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      Size(150, 40)), // Set width and height
                  backgroundColor: MaterialStateProperty.all(Color(0xff175D9A)),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => signup(),
                      ));
                },
                child: Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
