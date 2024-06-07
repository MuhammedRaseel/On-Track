import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:ontrack/presentation/dashboard/controller/dashboadcontrol.dart';



class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  final controller= Get.put(dashcontrol());

  void _onItemTapped(int index) {
    setState(() {
      controller.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: controller.screens[controller.selectedIndex],
        bottomNavigationBar: ConvexAppBar(
          height: 47,
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.chat, title: 'chat'),
            TabItem(icon: Icons.store, title: 'My store'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          onTap: _onItemTapped,
        ));
  }
}
