// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_application/Common/Icon_Image.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/Structure4/Notification%20Page.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 320,
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
                    title: "Dogecoin to the Moon...",
                    color: Colors.black38,
                    size: 12,
                  ),
                  IconImage(
                    icon: Icons.search_rounded,
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: primary,
                  borderRadius: const BorderRadius.all(Radius.circular(50))),
              child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => const NotificationPage()));
                  },
                  child: Image.asset('assets/icon/notify.png')),
            ),
          )
        ],
      ),
    );
  }
}
