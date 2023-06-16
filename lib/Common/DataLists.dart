// ignore_for_file: file_names, unused_import
import 'package:flutter/material.dart';
import 'package:news_application/Common/Model.dart';

List category1 = [
  "Filter",
  "Healthy",
  "Technology",
  "Finance",
  "Arts",
  "Sports",
  "Economy"
];
List<notify> notification = [
  notify(
      'assets/common/notify1.png',
      'Monday, 10 May 2021',
      'Published by Berkeley Lovelace Jr.',
      'WHO classifies triple-mutant Covid variant from India as global health risk',
      'A World Health Organization official said Monday it is reclassifying the highly contagious triple-mutant Covid variant spreading in India as a “variant of concern,” indicating that it’s become a...'),
  notify(
      'assets/common/notify2.png',
      'Sunday, 9 May 2021',
      'Published by Kristen Rogers',
      'What to do if you\'re planning or attending a wedding during the pandemic',
      'They had the artsy, rustic venue, the tailored dress and a guest list including about 150 of their closest friends and family. But the pandemic had other plans, forcing Carly Chalmers and Mitchell Gauvin to make a difficult decision about their wedding...'),
];
List filter = ["Recommanded", "Latest", "Most Viewed", "Channel", "Following"];
List<Model> data = [
  Model(
      'assets/common/image1.png',
      '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
      'by Ryan Browne',
      'Crypto investors should be prepared to lose all their money, BOE governor says',
      "Sunday, 9 May 2021"),
  Model(
      'assets/common/image2.png',
      'Stock markets in Asia-Pacific were broadly higher on Monday following “a big miss” in the April U.S. jobs report, while oil futures advanced.',
      'by Ryan Browne',
      'Asia-Pacific markets trade broadly higher, oil prices climb',
      "Sunday, 9 May 2021"),
];

List<Category2> downdata = [
  Category2('assets/DownData/image1.png', "Sunday, 9 May 2021", 'Matt Villano',
      "5 things to know about the 'conundrum' of lupus"),
  Category2('assets/DownData/image4.png', "Sunday, 9 May 2021", 'Matt Villano',
      "Doctors on digital front lines help fight India’s Covid surge"),
  Category2('assets/DownData/image2.png', "Sunday, 9 May 2021",
      'Zain Korsgaard', "4 ways families can ease anxiety together"),
  Category2(
      'assets/DownData/image3.png',
      "Sunday, 9 May 2021",
      'Zain Korsgaard',
      "What to do if you're planning or attending a wedding during the pandemic"),
];
