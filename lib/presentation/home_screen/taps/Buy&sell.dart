import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ontrack/presentation/home_screen/controller/getxcontroller.dart';
import 'package:ontrack/presentation/home_screen/innerpage/bikepreview.dart';
import 'package:ontrack/presentation/home_screen/innerpage/cartview.dart';
import 'package:ontrack/routes/app_routes.dart';

class buysell extends StatefulWidget {
  const buysell({super.key});

  @override
  State<buysell> createState() => _buysellState();
}
class _buysellState extends State<buysell> {
  final dataController = Get.put(DataController());
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
                itemCount: dataController.cars.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                       Get.toNamed(Routes.CART,arguments: {
                         "images": dataController.cars[index].imagePath,
                         "name":  dataController.cars[index].name,
                         "price": '\u20B9 ${dataController.cars[index].price.toString()}',
                         "postedby":dataController.cars[index].postedBy,
                         "profile": dataController.cars[index].profile,
                         "index": index,

                       }) ;

                    //     Navigator.push(
                    //
                    //
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => innerview(
                    //       index: index,
                    //       images: dataController.cars[index].imagePath,
                    //       name: dataController.cars[index].name,
                    //       price: '\u20B9 ${dataController.cars[index].price.toString()}',
                    //       postedby: dataController.cars[index].postedBy,
                    //       profile: dataController.cars[index].profile,
                    //
                    //     ),
                    //   ),
                    // );

                    },

                    child: Container(
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
                              dataController.cars[index].imagePath,
                              width: 180,
                              height: 130,
                              fit: BoxFit.fill, // Adjust the fit as needed
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dataController.cars[index].name,
                                  style: TextStyle(
                                      fontSize: 16,
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\u20B9 ${dataController.cars[index].price.toString()}",
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
                                          dataController.cars[index].postedBy,
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
                itemCount: dataController.bike.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => bikepreview(
                              images: dataController.bike[index].bikeimage,
                              name: dataController.bike[index].bikename,
                              price: '\u20B9 ${dataController.bike[index].bikeprice.toString()}',
                              postedby: dataController.bike[index].postedby,
                              profile: dataController.bike[index].profilebike
                            ),
                        )),
                    child: Container(
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
                              dataController.bike[index].bikeimage,
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
                                  dataController.bike[index].bikename,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "\u20B9 ${dataController.bike[index].bikeprice.toString()}",
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
                                          dataController.bike[index].postedby,
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
