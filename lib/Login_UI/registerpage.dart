// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../home_page.dart';
import 'my_password_field.dart';
import 'my_text_button.dart';
import 'my_text_field.dart'; // Corrected file name casing

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool passwordVisibility = true;

  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    _name.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 61, 55, 55),
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Register",
                            style: TextStyle(
                              color: Color.fromARGB(255, 23, 21, 21),
                              fontWeight: FontWeight.bold,
                              fontSize: 34,
                            ),
                          ),
                          const Text(
                            "Create new account to get started.",
                            style: TextStyle(color: Colors.grey),
                          ),
                          const Center(
                            child: SizedBox(
                              height: 50,
                            ),
                          ),
                          MyTextField(
                            hintText: "Name",
                            inputType: TextInputType.name,
                            textEditingController: _name,
                          ),
                          MyTextField(
                            hintText: "Email",
                            inputType: TextInputType.emailAddress,
                            textEditingController: _email,
                          ),
                          MyPasswordField(
                            isPasswordVisible: passwordVisibility,
                            onTap: () {
                              setState(() {
                                passwordVisibility = !passwordVisibility;
                              });
                            },
                            textEditingController: _password,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyTextButton(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())),
                        );
                      },
                      buttonName: 'Register', 
                      textColor: Colors.indigo, 
                      bgColor:const Color.fromARGB(255, 63, 57, 57), 
                      onPressed: () { Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const HomeScreen())));  } ,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
