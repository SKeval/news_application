// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
import 'package:news_application/Common/colros.dart';
import 'package:news_application/Common/texts.dart';

String selected = "";

showmodelbox(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return Container(
        height: 310,
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 30.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  txts(
                    title: "Filter",
                    size: 22,
                    weight: FontWeight.bold,
                  ),
                  OutlinedButton(
                      onPressed: () {},
                      child: Row(
                        children: [Icon(Icons.delete), txts(title: "Reset")],
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 8.0),
                child: Row(
                  children: [txts(title: "Sort By")],
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                children: filter
                    .map((e) => Padding(
                          padding: const EdgeInsets.only(right: 6),
                          child: InkWell(
                              onTap: () {},
                              child: Chip(
                                label: txts(title: e),
                                backgroundColor:
                                    e == selected ? primary : Colors.white,
                              )),
                        ))
                    .toList(),
                //[
                // Chip(label: txts(title: '1 go !')),
                //],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  height: 55,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(40)),
                      color: primary),
                  child: Center(
                    child: txts(
                      title: "SAVE",
                      size: 18,
                      weight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
