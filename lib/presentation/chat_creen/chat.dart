import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ontrack/presentation/chat_creen/chat%20tab/buying_chat.dart';
import 'package:ontrack/presentation/chat_creen/chat%20tab/selling_chat.dart';
import 'package:ontrack/presentation/chat_creen/chat%20tab/workshop_chat.dart';


class chat extends StatelessWidget {
  const chat({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Chat",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            TabBar(
                indicatorColor: Color(0xff175D9A),
                indicatorSize: TabBarIndicatorSize.tab,
                tabs: [
                  Tab(
                    child: Text(
                      "Buying",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "Selling",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "workshop",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ]),
            Expanded(
                child: TabBarView(
                    children: [buying_chat(), saleschat(), workshopchat()]))
          ],
        ),
      ),
    );
  }
}
