import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class mystore extends StatelessWidget {
  const mystore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("My store",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            automaticallyImplyLeading: false,
          ),
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  child: Text(
                    "Sell",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
                Tab(
                  child: Text(
                    "Rent",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                )
              ]),
              Expanded(child: TabBarView(children: [Container(), Container()]))
            ],
          ),
        ));
  }
}
