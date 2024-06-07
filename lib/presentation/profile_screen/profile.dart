import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ontrack/presentation/home_screen/controller/getxcontroller.dart';
import 'package:ontrack/presentation/profile_screen/whishlist.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        centerTitle: true,
        title: Text("Profile",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      "assets/images/profile.jpg",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "Muhammed Raseel P",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Feroke,Kozhikode,Kerala",
                        style: TextStyle(fontSize: 15),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff175D9A),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            minimumSize: Size(70, 20),
                          ),
                          onPressed: () {},
                          child: Text(
                            "Edit profile",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ))
                    ],
                  )
                ],
              ),
              Divider(
                height: 2,
                color: Colors.grey,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My ads",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff175D9A)),
                  ),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
              SizedBox(
                height: 130,
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        width: 250,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Posted on:05/05/2022",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  Icon(
                                    Icons.delete,
                                    size: 18,
                                  ),
                                  Icon(
                                    Icons.more_vert,
                                    size: 18,
                                  )
                                ],
                              ),
                              Divider(
                                height: 1,
                                color: Colors.black,
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    "assets/images/activa.jpg",
                                    height: 80,
                                    width: 70,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        "Activa 3G",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text("\u20B9 130000"),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.remove_red_eye_outlined,
                                            size: 14,
                                          ),
                                          Text(
                                            "30",
                                            style: TextStyle(fontSize: 10),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 14,
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(fontSize: 10),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 75,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 0),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "Mrak as sold",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xff175D9A)),
                                            )),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      SizedBox(
                                        height: 20,
                                        width: 75,
                                        child: OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 0),
                                            ),
                                            onPressed: () {},
                                            child: Text(
                                              "boost ad",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  color: Color(0xff175D9A)),
                                            )),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.workspace_premium, size: 30),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Buy premium Package ",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Sell faster, Reach more ,More facilities",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: () {
                  navigator?.push(MaterialPageRoute(
                    builder: (context) => whishlist(),
                  ));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.shopping_cart_outlined, size: 30),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "My Orders & appoinments",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              overflow: TextOverflow.ellipsis,
                              "Whishlist, workshop appointments, my orders",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 30),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.settings, size: 30),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Settings",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "logout, account settings",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.wallet, size: 30),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Payment methode",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Add bank details, address, etc",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.support_agent, size: 30),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Help & Support",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Help center, legal terms",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.language, size: 30),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Language",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "English",
                            style: TextStyle(fontSize: 10),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
