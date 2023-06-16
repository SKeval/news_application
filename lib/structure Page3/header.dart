// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
// ignore: unused_import
import 'package:news_application/Common/texts.dart';
import 'package:news_application/HomePage.dart';
import 'package:news_application/structure%20Page3/down.dart';

class HeaderPage3 extends StatefulWidget {
  int? index;
  HeaderPage3({super.key, this.index});

  @override
  State<HeaderPage3> createState() => _HeaderPage3State();
}

class _HeaderPage3State extends State<HeaderPage3> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 369,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: Image.asset(data[widget.index!].image!).image,
                      fit: BoxFit.fill)),
            ),
          ],
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
              width: double.infinity,
              height: 460,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30))),
              child: const DownPage3()),
        ),
        Positioned(
          top: 260,
          left: 35,
          child: Container(
            width: 340,
            height: 160,
            decoration: const BoxDecoration(
                color: Color.fromARGB(212, 207, 216, 220),
                borderRadius: BorderRadius.all(Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 25.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      txts(
                        title: data[widget.index!].date!,
                        size: 12,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                width: 250,
                                child: txts(
                                  size: 18,
                                  weight: FontWeight.bold,
                                  title: data[widget.index!].title!,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      children: [
                        txts(
                          title: data[widget.index!].author!,
                          size: 12,
                          weight: FontWeight.bold,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            width: 35,
            height: 35,
            child: FloatingActionButton(
              backgroundColor: Colors.blueGrey[100],
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  // ignore: prefer_const_constructors
                  builder: (context) => HomePage(),
                ));
              },
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        Positioned(
          top: 700,
          right: 20,
          child: InkWell(
            onTap: () {
              print('Liked');
            },
            child: Image.asset(
              'assets/icon/like.png',
              width: 50,
              height: 50,
            ),
          ),
        ),
      ],
    );
  }
}
