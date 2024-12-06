import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:linkedln_ornek/pages/forgot_password/forgot_screen.dart';
import 'package:linkedln_ornek/pages/home_screen.dart';
import 'package:linkedln_ornek/pages/signup_page.dart/signup_screen.dart';
import 'package:linkedln_ornek/widgets/constants.dart';


class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool remember = false;
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
                Padding(padding: EdgeInsets.all(35),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Giriş yap",
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
                                  (context) => SignUpScreen() ));
                            },
                            child: Text("LinkedIn'e katıl",
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
                  ],
                ),
                ),
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
                                    "Google ile giriş yap",
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
                                    "Facebook ile giriş yap",
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
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email ya da telefon numarası",
                            ),
                          ),
                          SizedBox(height: 15),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: "Şifre",
                              suffixIcon: Icon(Icons.remove_red_eye_sharp,
                              size: 30),
                            ),
                          ),
                          SizedBox(height: 15),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                  value: remember,
                                  activeColor: Colors.green[900],
                                  onChanged: (value){
                                    setState(() {
                                      remember = value!;
                                    });

                                  }),
                              Text("Beni Hatırla.",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                ),),
                              SizedBox(width: 10,),
                              Text("Daha fazla öğren",
                                style: TextStyle(
                                  color: kPrimaryColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: (){
                              Navigator.push(context,MaterialPageRoute(builder:
                                  (context) => ForgotScreen() ));
                            },
                            child: Text("Şifremi unuttum",
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ),
                          SizedBox(height: 15),
                          SizedBox(
                            width: 400,
                            height: 55,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
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
                                    "Devam et",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
              ],
            ),
          ),
        ));
  }
}
