import 'package:flutter/material.dart';
import'package:google_fonts/google_fonts.dart';

class Commontextfield extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool readOnly;
  final bool isPassword;
  final Icon? suffixIcon;
  int? maxlines;
  Commontextfield({
    super.key,
    required this.label,
    required this.controller,
    this.readOnly = false,
    this.isPassword = false,
    this.suffixIcon,
    this.maxlines,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        
        readOnly: readOnly,
        obscureText: isPassword,
        maxLines: maxlines,
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF5F7FA),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 14,
          ),
          hintStyle: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
         ),
      
          label: Text(label, style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}
