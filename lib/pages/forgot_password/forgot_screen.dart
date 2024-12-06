import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkedln_ornek/pages/signin_page/signin_screen.dart';
import 'package:linkedln_ornek/pages/signup_page.dart/signup_screen2.dart';
import 'package:linkedln_ornek/widgets/constants.dart';



class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 2),
                      Padding(padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Image.asset("images/logo_yeni.jpg",
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(height: 2),
                      Padding(padding: EdgeInsets.all(8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Forgot Screen",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 40),
                            TextFormField(
                              decoration: InputDecoration(
                                labelText: "Email or Phone",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            SizedBox(height: 15,),
                            Text ("We'll send a verification code to this email or phone number if"
                                "it matches an existing Linked account",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 30),
                            SizedBox(
                              width: 400,
                              height: 55,
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                  MaterialStateProperty.all<Color>(kPrimaryColor),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25),
                                      side: BorderSide(color: kPrimaryColor),
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(width: 6),
                                    Text(
                                      "Reset Password",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ]),
                      ),
                    ]))

        ));}
}
