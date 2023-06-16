// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class IconImage extends StatefulWidget {
  IconData? icon;
  String? image;
  double height;
  double width;
  double size;
  Color color;

  IconImage(
      {super.key,
      this.icon,
      this.image,
      this.height = 20,
      this.width = 20,
      this.size = 20,
      this.color = Colors.black});

  @override
  State<IconImage> createState() => _IconImageState();
}

class _IconImageState extends State<IconImage> {
  @override
  Widget build(BuildContext context) {
    return widget.icon == null
        ? Image.asset(
            widget.image!,
            height: widget.height,
            width: widget.width,
          )
        : Icon(
            widget.icon,
            size: widget.size,
            color: widget.color,
          );
  }
}
