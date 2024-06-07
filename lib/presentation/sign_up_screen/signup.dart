import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontrack/presentation/dashboard/dashboard.dart';
import 'package:ontrack/presentation/sign_in_screen/signin.dart';


class signup extends StatefulWidget {
  signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/logoblack.png"),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Sign Up",
                  style: GoogleFonts.poppins(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff175D9A)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE5E5E5)),
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "username",
                        suffixIcon: Icon(Icons.person)),
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE5E5E5)),
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Phone number",
                        suffixIcon: Icon(Icons.phone)),
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE5E5E5)),
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Email",
                        suffixIcon: Icon(Icons.email)),
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE5E5E5)),
                  width: 300,
                  child: TextField(
                    obscureText: password,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Create password",
                        suffixIcon: password
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    onTap: () {
                      setState(() {
                        password = !password;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffE5E5E5)),
                  width: 300,
                  child: TextField(
                    obscureText: password,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        hintText: "Conform password",
                        suffixIcon: password
                            ? Icon(Icons.visibility)
                            : Icon(Icons.visibility_off)),
                    onTap: () {
                      setState(() {
                        password = !password;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Center(
                  child: TextButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all(
                            Size(150, 40)), // Set width and height
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xff175D9A)),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => dashboard(),
                            ));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ))),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "already have an account?",
                      style: TextStyle(
                        fontSize: 10,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => signin(),
                            ));
                      },
                      child: Text(
                        "Sign In",
                        style: TextStyle(
                            color: Color(0xff175D9A),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.black12,
                thickness: 2,
              ),
              Center(
                child: Text(
                  "Sign In with",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                        elevation: 4,
                        child: Image.asset(
                          "assets/icons/google (1).png",
                          height: 40,
                        )),
                    Card(
                        elevation: 4,
                        child: Image.asset(
                          "assets/icons/facebook (1).png",
                          height: 40,
                        )),
                    Card(
                        elevation: 4,
                        child: Image.asset(
                          "assets/icons/instagram (3).png",
                          height: 40,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
