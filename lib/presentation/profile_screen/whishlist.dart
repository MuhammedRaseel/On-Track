import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:ontrack/presentation/home_screen/controller/getxcontroller.dart';

class whishlist extends StatefulWidget {

  @override
  State<whishlist> createState() => _whishlistState();
}

class _whishlistState extends State<whishlist> {
  final DataController dataController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Whish List",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
        child: Column(
          children: [
            Obx(() => ListView.builder(
              itemCount: dataController.whishlist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(dataController.whishlist[index].imagePath,width:80,height: 80,),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(dataController.whishlist[index].name),
                            Text(dataController.whishlist[index].price.toString()),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                        child: Image.asset(dataController.whishlist[index].profile,width: 50,height: 50,)),
                    SizedBox(width: 4,),
                    IconButton(onPressed: () {
                      dataController.removeFromCart(index);
                      // dataController.remove(dataController.whishlist.value[index]);
                    },
                        icon: Icon(Icons.delete))
                  ],
                );
              },
            )
            )
          ],
        ),
      ),
    );
  }
}
