import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:ontrack/presentation/chat_creen/controler/chatcantroller.dart';

class buying_chat extends StatefulWidget {
  const buying_chat({super.key});

  @override
  State<buying_chat> createState() => _buying_chatState();
}

class _buying_chatState extends State<buying_chat> {
  final datacontroller = Get.put(chatcontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 500,
        child: ListView.builder(
          itemCount: datacontroller.chat.length,
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
                          datacontroller.chat[index].image,
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
                              datacontroller.chat[index].profile,
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
                      children: [
                        Text(
                          datacontroller.chat[index].profilename,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        Text(datacontroller.chat[index].product,
                            style: TextStyle(fontSize: 14)),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              datacontroller.chat[index].message,
                              style: TextStyle(fontSize: 10),
                            ),
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
    );
  }
}
