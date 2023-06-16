// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/showmodelbox.dart';
import 'package:news_application/Common/texts.dart';

class MiddleMidPage2 extends StatefulWidget {
  const MiddleMidPage2({super.key});

  @override
  State<MiddleMidPage2> createState() => _MiddleMidPage2State();
}

class _MiddleMidPage2State extends State<MiddleMidPage2> {
  int selected = 0;

  selectColor(int index) {}

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                if (index == 0) {
                  showmodelbox(context);
                }
                setState(() {});
                selected = index;
              },
              child: Container(
                width: 100,
                height: 30,
                decoration: BoxDecoration(
                    color: index == selected ? primary : Colors.white,
                    border: Border.all(color: Colors.grey),
                    borderRadius: const BorderRadius.all(Radius.circular(30))),
                child: Center(
                    child: index == 0
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.filter_alt_outlined,
                                color: index == selected
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              txts(
                                title: category1[index],
                                color: index == selected
                                    ? Colors.white
                                    : Colors.black,
                              )
                            ],
                          )
                        : txts(
                            title: category1[index],
                            color:
                                index == selected ? Colors.white : Colors.black,
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
