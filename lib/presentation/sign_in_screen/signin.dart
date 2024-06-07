import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ontrack/presentation/dashboard/dashboard.dart';
import 'package:ontrack/presentation/sign_up_screen/signup.dart';


class signin extends StatefulWidget {
  signin({super.key});

  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),
                child: Column(
                  children: [
                    Image.asset("assets/images/logoblack.png"),
                    Text(
                      "Welcome Back",
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Sign In",
                      style: GoogleFonts.poppins(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff175D9A)),
                    )
                  ],
                ),
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
                height: 10,
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
                        hintText: "password",
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
                height: 5,
              ),
              Text(
                "Forget Password?",
                style: TextStyle(color: Color(0xff175D9A), fontSize: 10),
              ),
              SizedBox(
                height: 10,
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
                        "Sign In",
                        style: TextStyle(color: Colors.white),
                      ))),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "don't have an account?",
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
                              builder: (context) => signup(),
                            ));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Color(0xff175D9A),
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black12,
                thickness: 2,
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Sign In with",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
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
