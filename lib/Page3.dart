// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_application/structure%20Page3/header.dart';

class Page3 extends StatefulWidget {
  int? index;
  Page3({super.key, required this.index});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [HeaderPage3(index: widget.index)],
      )),
    );
  }
}
