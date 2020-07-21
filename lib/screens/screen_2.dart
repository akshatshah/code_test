import 'package:flutter/material.dart';

class ScreenTwo extends StatelessWidget {
  final json = [
    {"product_name": "product 1", "tag": "Organic", "price": 123},
    {"product_name": "Product 2", "tag": "In Organic", "price": 199.50},
    {"product_name": "Product 3", "tag": "notag", "price": 240.50}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: json.length,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: 30,
                        color: Colors.blue,
                        child: Text(json[index]["product_name"]),
                      ),
                    )),
          ],
        ),
      ),
    );
  }
}
