import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ontrack/presentation/dashboard/dashboard.dart';
import 'package:ontrack/presentation/home_screen/homepage.dart';
import 'package:ontrack/presentation/splash_screen/firstpage.dart';
import 'package:shared_preferences/shared_preferences.dart';


class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkFirstSeen();
  }
  Future<void>  _checkFirstSeen() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    bool _seen= (prefs.getBool('seen')??false);
    if(_seen){
      print(_seen);
      _home();
    }
    else{
      await prefs.setBool('seen', true);
      _starttimer();
    }
  }
  void _starttimer(){
    Timer(
      Duration(seconds: 5),
          () => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => onboard(),
      )),
    );
  }
 void _home(){
    Timer(
      Duration(seconds: 3),
        ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => dashboard(),
        )),
    );

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/image.jpg'),
                fit: BoxFit.fill)),
        child: Center(
          child: Image(
            image: AssetImage('assets/images/logo.png'),
            width: 300,
          ),
        ),
      ),
    );
  }
}
