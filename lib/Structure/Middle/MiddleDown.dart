// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/Common/DataLists.dart';

class MiddleDown extends StatefulWidget {
  const MiddleDown({super.key});

  @override
  State<MiddleDown> createState() => _MiddleDownState();
}

class _MiddleDownState extends State<MiddleDown> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          top: 10,
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            downdata[index].image!,
                          ),
                        )),
                  ),
                  Container(
                      width: double.infinity,
                      height: 150,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(104, 127, 127, 127),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                  Positioned(
                      top: 120,
                      left: 20,
                      child: txts(
                        title: downdata[index].author!,
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 12,
                      )),
                  Positioned(
                      top: 120,
                      left: 250,
                      child: txts(
                        title: downdata[index].date!,
                        color: Colors.white,
                        weight: FontWeight.bold,
                        size: 12,
                      )),
                  Positioned(
                      top: 20,
                      left: 20,
                      child: Column(
                        children: [
                          SizedBox(
                            width: 350,
                            child: txts(
                              title: downdata[index].title!,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              weight: FontWeight.bold,
                              size: 17,
                            ),
                          ),
                        ],
                      ))
                ],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 10,
              );
            },
            itemCount: downdata.length),
      ),
    );
  }
}
