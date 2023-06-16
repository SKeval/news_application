// ignore_for_file: file_names, unused_import

import 'package:flutter/material.dart';
import 'package:news_application/Common/Icon_Image.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/texts.dart';

class HeaderPage2 extends StatefulWidget {
  const HeaderPage2({super.key});

  @override
  State<HeaderPage2> createState() => _HeaderPage2State();
}

class _HeaderPage2State extends State<HeaderPage2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 379,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.black38)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txts(
                    title: "COVID new Varient",
                    color: Colors.black,
                    size: 14,
                  ),
                  InkWell(
                    onTap: () {},
                    child: IconImage(
                      icon: Icons.close,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
