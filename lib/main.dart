import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontrack/presentation/sample/sample.dart';
import 'package:ontrack/presentation/splash_screen/splashscreen.dart';
import 'package:ontrack/routes/app_pages.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ontrack',
      theme: ThemeData(
        primaryColor: Color(0xff175D9A),
        fontFamily: GoogleFonts.poppins().fontFamily,
      ),
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      // initialRoute: Routes.DASH,
      home: splashscreen(),
    );
  }
}
