import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkedln_ornek/pages/signin_page/signin_screen.dart';
import 'package:linkedln_ornek/pages/signup_page.dart/signup_screen2.dart';
import 'package:linkedln_ornek/widgets/constants.dart';



class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

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
                      Text("Linkedln'e Katıl",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text("ya da",
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(left: 5),
                            child: InkWell(
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(builder:
                                    (context) => SignInScreen() ));
                              },
                              child: Text("Katıl",
                                  style:TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  )
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Email ya da telefon numarası",
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 15,),
                    Text ("By clicking & Agree Join or Continue, you agree to the LinkedIn "
                        " User Agreement, Privacy Policy, and Cookie Policy, "
                        "For phone number signups we will send you a verification code via SMS",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                        ),
                    SizedBox(height: 25),
                    SizedBox(
                      width: 400,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignupScreen2(),
                              ));
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
                              "Onayla & Katıl",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),),
                Row(
                    children: <Widget>[
                      Expanded(child: Divider()),
                      Text("ya da",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      Expanded(child: Divider())
                    ]
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 400,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.push(
                            //    context,
                            //    MaterialPageRoute(
                            //      builder: (context) => SignUpScreen2,
                            //    )),
                          },
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/Logo-google.png',
                                width: 23,
                                height: 23,
                              ),
                              SizedBox(width: 10),
                              Text(
                                "Google ile devam et",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        width: 400,
                        height: 55,
                        child: ElevatedButton(
                          onPressed: () {
                            //Navigator.push(
                            //    context,
                            //    MaterialPageRoute(
                            //      builder: (context) => SignUpScreen2,
                            //    )),
                          },
                          style: ButtonStyle(
                            backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(color: Colors.black),
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'images/facebook_logo.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 6),
                              Text(
                                "Facebook ile devam et",
                                style: TextStyle(
                                  color: Colors.black,
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
