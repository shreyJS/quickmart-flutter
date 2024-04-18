import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:user_app/pages/login.dart';

import '../widget/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFFff5c30),
                    Color(0xFFe74b1a),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height / 3),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 60,
                left: 20,
                right: 20,
              ),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      "images/logo (1).png",
                      width: MediaQuery.of(context).size.width / 1.5,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Material(
                    elevation: 5,
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 1.7,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Sign Up",
                            style: AppWidget.HeadlineTextFieldStyle(),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Name",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: const Icon(Icons.person_outlined),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: "Email",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: const Icon(Icons.email_outlined),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Password",
                              hintStyle: AppWidget.semiBoldTextFieldStyle(),
                              prefixIcon: const Icon(Icons.password_outlined),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: Text(
                              "Forgot password? ",
                              style: AppWidget.semiBoldTextFieldStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 80,
                          ),
                          Material(
                            elevation: 5.0,
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              width: 200,
                              decoration: BoxDecoration(
                                color: const Color(0xffff5722),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Center(
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'Poppins1',
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LogIn()));
                    },
                    child: Text(
                      "Already have an account? Sign in",
                      style: AppWidget.semiBoldTextFieldStyle(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
