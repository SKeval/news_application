// ignore_for_file: must_be_immutable, file_names, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
import 'package:news_application/Common/Icon_Image.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/Page3.dart';

class MiddleUp extends StatefulWidget {
  MiddleUp({super.key});

  @override
  State<MiddleUp> createState() => _MiddleUpState();
}

class _MiddleUpState extends State<MiddleUp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 15, top: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              txts(
                title: "Latest News",
                weight: FontWeight.bold,
                size: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  txts(
                    title: "See All    ",
                    color: Colors.blue,
                    size: 14,
                    weight: FontWeight.w500,
                  ),
                  IconImage(
                    icon: Icons.arrow_forward,
                    color: Colors.blue,
                  )
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8, top: 8.0),
          child: SizedBox(
            height: 290,
            width: double.infinity,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => Page3(index: index),
                      ));
                    },
                    child: Stack(
                      children: [
                        Container(
                          width: 340,
                          height: 270,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                    data[index].image!,
                                  ))),
                        ),
                        Container(
                            width: 340,
                            height: 270,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(104, 127, 127, 127),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            )),
                        Positioned(
                            top: 90,
                            left: 20,
                            child: Column(
                              children: [
                                txts(
                                  title: data[index].author!,
                                  color: Colors.white,
                                  weight: FontWeight.bold,
                                  size: 12,
                                ),
                              ],
                            )),
                        Positioned(
                            top: 110,
                            left: 20,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 290,
                                  child: txts(
                                    title: data[index].title!,
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: 19,
                                  ),
                                ),
                              ],
                            )),
                        Positioned(
                            top: 210,
                            left: 20,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 300,
                                  child: txts(
                                    title: data[index].content!,
                                    weight: FontWeight.bold,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    size: 11,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    width: 20,
                  );
                },
                itemCount: data.length),
          ),
        ),
      ],
    );
  }
}
