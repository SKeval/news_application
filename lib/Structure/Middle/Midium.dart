// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/FilterPage.dart';

class MiddleMid extends StatefulWidget {
  const MiddleMid({super.key});

  @override
  State<MiddleMid> createState() => _MiddleMidState();
}

class _MiddleMidState extends State<MiddleMid> {
  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FilterPage(),
                      ));
                }
                setState(() {});
                selected = index;
              },
              child: Container(
                padding: EdgeInsets.all(10),
                height: 30,
                decoration: BoxDecoration(
                    color: index == selected ? primary : Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Center(
                    child: txts(
                  title: category1[index],
                  color: index == selected ? Colors.white : Colors.black,
                )),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: category1.length),
    );
  }
}
