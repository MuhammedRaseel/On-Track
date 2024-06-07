import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:ontrack/presentation/chat_creen/chat.dart';
import 'package:ontrack/presentation/home_screen/homepage.dart';
import 'package:ontrack/presentation/mystore_screen/mystore.dart';
import 'package:ontrack/presentation/profile_screen/profile.dart';

class dashcontrol extends GetxController{
  int selectedIndex = 0;
  final List<Widget> screens = [
    homepage(),
    chat(),
    mystore(),
    profile(),
  ];
}