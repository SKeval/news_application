// ignore_for_file: unused_import, file_names

import 'package:flutter/material.dart';
import 'package:news_application/Common/Icon_Image.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/Structure/Head/Header.dart';
import 'package:news_application/Structure/Middle/MiddleDown.dart';
import 'package:news_application/Structure/Middle/MiddleUp.dart';
import 'package:news_application/Structure/Middle/Midium.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int seleceted = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60.0, left: 10),
            child: Column(
              children: [
                const Header(),
                MiddleUp(),
                const SizedBox(
                    height: 45,
                    child: Row(
                      children: [
                        MiddleMid(),
                      ],
                    )),
                const MiddleDown(),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                width: 300,
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.only(top: 23.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            seleceted = 1;
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icon/home.png",
                              color: seleceted == 1 ? primary : Colors.grey,
                            ),
                            txts(
                              title: "Home",
                              size: 12,
                              color: seleceted == 1 ? primary : Colors.black,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            seleceted = 2;
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icon/heart.png",
                              color: seleceted == 2 ? primary : Colors.grey,
                            ),
                            txts(
                              title: "Favourite",
                              size: 12,
                              color: seleceted == 2 ? primary : Colors.black,
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            seleceted = 3;
                          });
                        },
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/icon/profile.png",
                              color: seleceted == 3 ? primary : Colors.grey,
                            ),
                            txts(
                              title: "Profile",
                              size: 12,
                              color: seleceted == 3 ? primary : Colors.black,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
