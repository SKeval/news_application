// ignore_for_file: must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class txts extends StatefulWidget {
  String title;
  double size;
  FontWeight weight;
  Color color;

  txts(
      {super.key,
      required this.title,
      this.size = 15,
      this.weight = FontWeight.normal,
      this.color = Colors.black});

  @override
  State<txts> createState() => _txtsState();
}

class _txtsState extends State<txts> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.title,
      style:

          // GoogleFonts.montserrat().copyWith(
          //     fontSize: widget.size,
          //     fontWeight: widget.weight,
          //     color: widget.color)

          TextStyle(
              fontFamily: 'times',
              fontSize: widget.size,
              fontWeight: widget.weight,
              color: widget.color),
    );
  }
}
