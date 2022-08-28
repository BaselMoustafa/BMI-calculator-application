import 'package:flutter/material.dart';

void navigateTo(context,widget){
  Navigator.push(
    context,
    MaterialPageRoute(
      builder:(contextOfDes) =>widget,
    ),
  );
}