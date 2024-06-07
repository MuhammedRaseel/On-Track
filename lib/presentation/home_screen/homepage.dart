import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ontrack/presentation/home_screen/taps/Buy&sell.dart';
import 'package:ontrack/presentation/home_screen/taps/Rentshop.dart';
import 'package:ontrack/presentation/home_screen/taps/Workshop.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.settings,
            color: Colors.black,
            size: 30,
          ),
          title: Center(child: Image.asset("assets/images/logoblack.png")),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            TabBar(
              indicatorColor: Color(0xff175D9A),
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "Buy&Sell",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Rent shop",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Tab(
                  child: Text(
                    "Workshop",
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [buysell(), rent(), workshop()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
