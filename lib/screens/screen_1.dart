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
                    GridWidget(
                      items: json[index]["items"] as List<String>,
                    )
                  ],
                )),
      ),
    );
  }
}

class GridWidget extends StatelessWidget {
  GridWidget({
    Key key,
    this.items,
  }) : super(key: key);

  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      shrinkWrap: true,
      children: items.map((value) {
        return Card(
          child: Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text(value),
          ),
        );
      }).toList(),
    );
  }
}
