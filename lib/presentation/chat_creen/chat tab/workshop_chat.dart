import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class workshopchat extends StatelessWidget {
  const workshopchat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: 5,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 1)),
                        child: Image.asset(
                          "assets/images/alto.jpg",
                          width: 80,
                          height: 80,
                        ),
                      ),
                      Positioned(
                          bottom: -10,
                          right: -10,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                            child: Image.asset(
                              'assets/images/logowork.jpg',
                              width: 50,
                              height: 50,
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Text("Auto Care,kozhikode",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                        Text("Aito 800",style: TextStyle(fontSize: 14)),
                        Container(
                          decoration: BoxDecoration(border: Border.all(color: Colors.grey,width: 1),borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text("Your car is ready to pick up",style: TextStyle(fontSize: 10),),
                          ),
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
    );;
  }
}
