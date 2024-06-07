import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class rent extends StatelessWidget {
  const rent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Color(0xffE5E5E5)),
                  width: 250,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "search cars, bikes, scooters .....",
                        suffixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(fontSize: 10)),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color(0xff175D9A),
                  ),
                  width: 60,
                  height: 45,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Cars",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View more>",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    // color: Color(0xffB8D7FF),
                    width: 170,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffB8D7FF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50)),
                          child: Image.asset(
                            "assets/images/image.jpg",
                            width: 180,
                            height: 130,
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Maruthi Alto 800",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\u20B9 1300/Day",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff175D9A)),
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Posted By",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                      Text(
                                        "Raseel P",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Icon(Icons.share)
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Bikes",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "View more>",
                  style: TextStyle(fontSize: 10),
                )
              ],
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    // color: Color(0xffB8D7FF),
                    width: 150,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                        color: Color(0xffB8D7FF),
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50)),
                          child: Image.asset(
                            "assets/images/activa.jpg",
                            width: 150,
                            height: 110,
                            fit: BoxFit.cover, // Adjust the fit as needed
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Activa 5G",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "\u20B9 800/Day",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff175D9A)),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Posted By",
                                        style: TextStyle(fontSize: 8),
                                      ),
                                      Text(
                                        "Raseel P",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Icon(
                                    Icons.share,
                                    size: 16,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
