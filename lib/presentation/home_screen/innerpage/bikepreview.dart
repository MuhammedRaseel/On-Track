import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class bikepreview extends StatefulWidget {
  final String images;
  final String name;
  final String price;
  final String postedby;
  final String profile;
  const bikepreview(
      {super.key,
      required this.images,
      required this.name,
      required this.price,
      required this.postedby,
      required this.profile});

  @override
  State<bikepreview> createState() => _bikepreviewState();
}

class _bikepreviewState extends State<bikepreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        actions: [
          Icon(Icons.favorite),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Icon(Icons.share),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: Container(
                    width: 250,
                    height: 200,
                    child: Image.asset(
                      widget.images,
                      fit: BoxFit.fill,
                    ))),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  color: Color(0xffF6EAEA)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.price,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.key,
                              size: 16,
                            ),
                            Text(
                              "First owner",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_pin,
                              size: 16,
                            ),
                            Text(
                              "Kozhikode",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.calendar_month,
                              size: 16,
                            ),
                            Text(
                              "Posted on \n 01/02/2022",
                              style: TextStyle(fontSize: 10),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10
                      ,
                    ),
                    Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(100),
                              ),
                              child: Image.asset(
                                widget.profile,
                                width: 60,
                                height: 60,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Posted by",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                                Text(
                                  widget.postedby,
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Posted On : 01/10/2022",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                                SizedBox(
                                  height: 20,
                                  child: TextButton(
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 0, vertical: 0),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        "See Profile",
                                        style: TextStyle(fontSize: 11),
                                      )),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Technical Report",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Engine Condition :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          " Working Fine",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Oil Leakage :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          " No",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Clutch Condition :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          " Working Fine",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Insurance and Loan status",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Insurance :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          " Active",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Loan :",
                          style: TextStyle(fontSize: 12),
                        ),
                        Text(
                          " No Active Loan",
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Location",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                size: 48,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Feroke,Kozhikode,\n Kerala,India,673632"),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar:
      Container(
        // decoration: BoxDecoration(
        //     borderRadius: BorderRadius.only(
        //   topRight: Radius.circular(10),
        //   topLeft: Radius.circular(10),
        // )),
        height: 55,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: Color(0xff91B2CF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 130,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff175D9A)),
                  onPressed: () {},
                  child: Text("Chat", style: TextStyle(color: Colors.white))),
            ),
            SizedBox(
              width: 130,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff175D9A)),
                  onPressed: () {},
                  child: Text(
                    "Call Now",
                    style: TextStyle(color: Colors.white),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
