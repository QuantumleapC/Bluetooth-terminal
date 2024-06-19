//This is for the logo
import 'package:flutter/material.dart';

Image logoWidget(
  String imageName,
) {
  return Image.asset(
    imageName,
    fit: BoxFit.fitWidth,
    width: 640,
    height: 640,
    // color: Colors.white,
  );
}
