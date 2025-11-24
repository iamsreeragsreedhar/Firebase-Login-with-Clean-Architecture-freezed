import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Commontextfield extends StatefulWidget {
  final String label;
  final TextEditingController controller;
  final bool readOnly;
  final bool isPassword;
  final Icon? suffixIcon;
  int? maxlines;
  final InputBorder errorborder;
  String? errortext;
  bool isrequired;
  final void Function(String)? onChanged;
  Commontextfield({
    super.key,
    required this.label,
    required this.controller,
    this.readOnly = false,
    this.isPassword = false,
    this.suffixIcon,
    this.maxlines,
    required this.errorborder,
    this.errortext,
    this.isrequired = false,
    this.onChanged,
  });

  @override
  State<Commontextfield> createState() => _CommontextfieldState();
}

class _CommontextfieldState extends State<Commontextfield> {
  String? ErrorText;
  Validate() {
    if (widget.controller.text.isEmpty && widget.isrequired) {
      setState(() {
        ErrorText = "${widget.label} is Required......";
      });
    } else {
      setState(() {
        ErrorText = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        onChanged: (value) {
          if (widget.isrequired == true) {
            Validate();
          }
          // if (widget.onChanged != null) widget.onChanged!(value);
        },
        readOnly: widget.readOnly,
        obscureText: widget.isPassword,
        maxLines: widget.maxlines,
        controller: widget.controller,
        decoration: InputDecoration(
          errorBorder: widget.errorborder,
          errorText: ErrorText,
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
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

          label: Text(widget.label, style: TextStyle(fontSize: 15)),
        ),
      ),
    );
  }
}
