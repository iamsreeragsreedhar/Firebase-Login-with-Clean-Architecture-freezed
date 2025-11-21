import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Comonbutton extends StatelessWidget {
  final void Function()? onPressed;
  final String txt;
  final double h;
  final double w;
  final Color? color;
  const Comonbutton({
    super.key,
    this.onPressed,
    required this.txt,
    required this.h,
    required this.w,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),

        color: color,
      ),
      height: h,
      width: w,
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          txt,
          style: GoogleFonts.poppins(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
