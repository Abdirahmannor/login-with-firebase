// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Icon(
                      Icons.android,
                      size: 100,
                    ),
                  ),
                ),
                SizedBox(
                  height: 45,
                ),

                Text('HELLO AGAIN!',
                    style: GoogleFonts.bebasNeue(fontSize: 52)),
                SizedBox(height: 5),
                Text(
                  "welcome back, you've been missed!",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffe9edc9),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      toolbarOptions: ToolbarOptions(
                          cut: false, copy: true, paste: true, selectAll: true),
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter your Email",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            // backgroundColor: Colors.white,
                            color: Colors.black12),
                        hintText: 'Email',
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                // Password
                //
                //
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Color(0xffe9edc9),
                      border: Border.all(
                        color: Colors.black,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      obscureText: true,
                      toolbarOptions: ToolbarOptions(
                        paste: true,
                      ),
                      enableSuggestions: false,
                      autocorrect: false,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        labelText: "Enter your password",
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            // backgroundColor: Colors.white,
                            color: Colors.black12),
                        hintText: 'Password',
                        prefixIcon: Icon(Icons.password_outlined,
                            color: Colors.black38
                            // ),
                            // focusedBorder: OutlineInputBorder(
                            //   borderSide: new BorderSide(color: Colors.deepOrange),
                            //   borderRadius: new BorderRadius.circular(25.7),
                            ),
                        // filled: true,
                        // fillColor: Color(0xffe9edc9),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0, right: 12),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 60,
                    width: 500,
                    child: Center(
                        child: Text(
                      'Sing In',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Not a Memeber?',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      '  Register now',
                      style: TextStyle(
                          color: Color(0xff48cae4),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
