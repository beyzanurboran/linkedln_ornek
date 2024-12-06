import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:linkedln_ornek/pages/home_screen.dart';
import 'package:linkedln_ornek/pages/signup_page.dart/signup_screen3.dart';
import '../../widgets/constants.dart';


class SignupScreen4 extends StatefulWidget {
  const SignupScreen4({super.key});

  @override
  State<SignupScreen4> createState() => _SignupScreen4State();
}

class _SignupScreen4State extends State<SignupScreen4> {
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 1,),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Image.asset('images/logo_yeni.jpg',
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Şifreni ayarla",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 40),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email ya da telefon numarası*",
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "Şifre*",
                            ),
                          ),
                          SizedBox(height: 20),
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
                          SizedBox(height: 15,),
                          SizedBox(
                            width: double.infinity,
                            height: 55,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
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
                                "Devam et",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
