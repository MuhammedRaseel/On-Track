import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class workshop extends StatelessWidget {
  const workshop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xffE5E5E5)),
                width: 300,
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      hintText: "search Workshops..",
                      suffixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(fontSize: 10)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff175D9A), // Set border color here
                        width: 2, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/map.png",
                          height: 100,
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0x80175D9A),
                        ),
                        Text(
                          "Find near by workshops",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff175D9A), // Set border color here
                        width: 2, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/tow.png",
                          height: 100,
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0x80175D9A),
                        ),
                        Text(
                          "Call Tow truck or service van",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff175D9A), // Set border color here
                        width: 2, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/appoinment.jpg",
                          height: 100,
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0x80175D9A),
                        ),
                        Text(
                          "Take appoinments ",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 170,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xff175D9A), // Set border color here
                        width: 2, // Set border width here
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/machanic.png",
                          height: 100,
                        ),
                        Divider(
                          thickness: 2,
                          color: Color(0x80175D9A),
                        ),
                        Text(
                          "Track service",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
