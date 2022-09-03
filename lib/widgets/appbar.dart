import 'package:flutter/material.dart';
import 'package:practice/constants/constants.dart';

PreferredSizeWidget AppB() {
  return AppBar(
    backgroundColor: ambercolor,
        title: Text(
          'Truth/Dare',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: blackcolor,
          ),
        ),
  );
}
