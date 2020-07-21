import 'package:flutter/material.dart';

class ScreenThree extends StatelessWidget {
  final json = [
    {
      "emp_name": "emp 1",
      "age": 23,
    },
    {
      "emp_name": "emp 2",
      "age": 24,
    },
    {
      "emp_name": "emp 3",
      "age": 25,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DropdownButton(items: [
            ...json.map((e) => DropdownMenuItem(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(e["emp_name"]),
                      Text(e["age"].toString()),
                    ],
                  ),
                ))
          ], onChanged: (value) {})
        ],
      ),
    );
  }
}
