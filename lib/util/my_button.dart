import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Text(text,
          style: GoogleFonts.montserrat(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          )),
      color: Theme.of(context).primaryColor,
    );
  }
}
