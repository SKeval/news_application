// ignore_for_file: unnecessary_const, file_names, unused_import

import 'package:flutter/material.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/Structure%20Page2/Header.dart';
import 'package:news_application/Structure%20Page2/Middle/MiddleUp.dart';
import 'package:news_application/Structure%20Page2/Middle/middlemedium.dart';
import 'package:news_application/Structure/Middle/Midium.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 8, top: 0, left: 8.0),
          child: Column(
            children: [
              const HeaderPage2(),
              const SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 12.0),
                  child: Row(
                    children: [
                      MiddleMidPage2(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 8.0, bottom: 5),
                child: Row(
                  children: [
                    RichText(
                        text: const TextSpan(
                            text: "About 11,130,000 results for ",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                            children: [
                          TextSpan(
                            text: "COVID New Variant",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )
                        ])),
                  ],
                ),
              ),
              const MiddleMedium()
            ],
          ),
        ),
      ),
    );
  }
}
