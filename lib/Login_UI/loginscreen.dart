// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';
import 'forgot_password_page.dart';
import 'my_password_field.dart';
import 'my_text_Field.dart';
import 'my_text_button.dart';
import 'registerpage.dart';
class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool isPasswordVisible = true;
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 91, 153, 105),
        elevation: 0,
      ),
      body: Center(
        child: SafeArea(
          child: CustomScrollView(
            reverse: true,
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/image.png',
                        height: 200,
                      ),
                      const SizedBox(height: 40),
                      MyTextField(
                            textEditingController:_email,
                            hintText: "Enter your email address",
                            inputType: TextInputType.emailAddress,
                          ),
                      const SizedBox(height: 20),
                      MyPasswordField(
                        textEditingController: _password,
                        isPasswordVisible: isPasswordVisible,
                        onTap: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                      ),
                      const SizedBox(height: 10),
                      Align(
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ForgotPasswordPage(),),
                            );
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyTextButton(
                        buttonName: "Sign in",
                        onTap: () {},
                        bgColor: const Color.fromARGB(255, 63, 57, 57),
                        textColor: Colors.black87,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => const HomeScreen())),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            style:TextStyle(color:Color.fromARGB(255, 62, 53, 53), ) ,
                            "Don't have an account ? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                CupertinoPageRoute(
                                  builder: (context) => const RegisterPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle( fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 62, 53, 53),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
