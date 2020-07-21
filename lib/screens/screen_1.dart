import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  final json = [
    {
      "header": "section 2",
      "items": [
        "1",
        "2",
        "3",
        "4",
        "5",
      ]
    },
    {
      "header": "section 3",
      "items": [
        "6",
        "7",
        "8",
        "9",
        "10",
      ]
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView.builder(
            itemCount: json.length,
            itemBuilder: (context, index) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 30,
                      color: Colors.blue,
                      child: Text(json[index]["header"]),
                    ),
                    // GridView.builder(
                    //     shrinkWrap: true,
                    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    //         crossAxisCount: 3),
                    //     itemBuilder: (context, ind) {
                    //       List<String> values =
                    //           json[index]["items"] as List<String>;
                    //       return Card(
                    //         child: Text(values[ind]),
                    //       );
                    //     })
                  ],
                )),
      ),
    );
  }
}
