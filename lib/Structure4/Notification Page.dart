// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:news_application/Common/DataLists.dart';
import 'package:news_application/Common/texts.dart';
import 'package:news_application/HomePage.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8, top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      child: const Icon(Icons.arrow_back_ios_new_rounded)),
                  txts(
                    title: "Hot Updates",
                    color: Colors.red,
                    weight: FontWeight.bold,
                    size: 19,
                  ),
                  const SizedBox()
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 15,
                      );
                    },
                    itemCount: notification.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 160,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    notification[index].image!,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      txts(title: notification[index].date!),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                              width: 370,
                                              child: txts(
                                                title:
                                                    notification[index].title!,
                                                weight: FontWeight.bold,
                                                size: 17,
                                              )),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        children: [
                                          SizedBox(
                                              width: 365,
                                              child: RichText(
                                                  text: TextSpan(
                                                      text: notification[index]
                                                          .content!,
                                                      style: TextStyle(
                                                          fontSize: 15.5,
                                                          color: Colors.black),
                                                      children: const [
                                                    TextSpan(
                                                        text: "Read More",
                                                        style: TextStyle(
                                                            fontSize: 15.5,
                                                            color: Colors.blue))
                                                  ]))),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Row(
                                    children: [
                                      txts(
                                        title: notification[index].author!,
                                        size: 15,
                                        weight: FontWeight.bold,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
