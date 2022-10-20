import 'package:flutter/material.dart';

Widget widgetGroupItem(
    {required List<Widget> items, required String nameOfGroup}) {
  return Container(
    margin: const EdgeInsets.all(20),
    padding: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      boxShadow: [
        BoxShadow(
          spreadRadius: 5,
          blurRadius: 6,
          color: Colors.grey.shade300,
          offset: const Offset(1, 3),
        ),
      ],
    ),
    child: Column(
      children: [
        Text(nameOfGroup),
        ...items,
      ],
    ),
  );
}