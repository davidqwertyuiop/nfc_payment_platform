
import 'package:flutter/material.dart';


class MyPasswordField extends StatefulWidget {
  const MyPasswordField({
    super.key,
    required this.textEditingController, required bool isPasswordVisible, required Null Function() onTap,
  });

  final TextEditingController textEditingController;

  @override
  // ignore: library_private_types_in_public_api
  _MyPasswordFieldState createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        controller: widget.textEditingController,
        style: const TextStyle(
          color: Colors.black,
        ),
        obscureText: !isPasswordVisible,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: IconButton(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onPressed: togglePasswordVisibility,
              icon: Icon(
                isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                color: Colors.grey,
              ),
            ),
          ),
          contentPadding: const EdgeInsets.all(20),
          hintText: "password",
          hintStyle: const TextStyle(color: Colors.black54),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 27, 26, 26),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.black54,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
