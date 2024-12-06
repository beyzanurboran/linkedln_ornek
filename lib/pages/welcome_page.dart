import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedln_ornek/pages/signin_page/signin_screen.dart';
import 'package:linkedln_ornek/widgets/constants.dart';
import 'package:linkedln_ornek/pages/signup_page.dart/signup_screen2.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Center(
              child: Column(
            children: [
              Image.asset(
                'images/logo_yeni.jpg',
                width: 180,
                height: 180,
              ),
              SizedBox(height: 0.5),
              Text(
                "Join a trusted community of 800M\n professionals",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "By clicking Agree & Join or Continue, you agree to the LinkedIn User "
                "Agreement, Privacy Policy , and Cookie Policy",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen2(),
                        )
                    );
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
                  child: Text(
                    "Onayla & Katıl",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
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
                width: double.infinity,
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
          SizedBox(height: 0.1),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.push(
                context,
                    MaterialPageRoute(
                     builder: (context) => SignInScreen(),
                    ));
              },
              child: Text(
                "Giriş Yap",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ]),
      ),
    ));
  }
}
