
import 'package:flutter/material.dart';


class MyTextButton extends StatelessWidget {
  const MyTextButton({super.key, 
     required this.buttonName, required this.onPressed, required this.bgColor, required this.textColor, required Null Function() onTap,
  });
  final String buttonName;
  final void Function()? onPressed;
  final Color bgColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 60,
    width: double.infinity,
    decoration: BoxDecoration(color: bgColor,
    borderRadius: BorderRadius.circular(18),),
    child: TextButton(
      style: ButtonStyle(overlayColor: WidgetStateProperty.resolveWith((states) => Colors.black12),),
      onPressed: onPressed,
      child:
      Text(buttonName, style: const TextStyle(color:Colors.white70),),));
  }
}
