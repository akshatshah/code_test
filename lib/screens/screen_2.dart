import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  @override
  _ScreenTwoState createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  final List<Map<String, Object>> json = [
    {"product_name": "product 1", "tag": "Organic", "price": 123},
    {"product_name": "Product 2", "tag": "In Organic", "price": 199.50},
    {"product_name": "Product 3", "tag": "notag", "price": 240.50}
  ];

  List<Map<String, Object>> search = [];

  TextEditingController controller = TextEditingController();

  String _search;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  setSearch() {
    print(_search);
    var result = json
        .where(
            (e) => e["product_name"].toString().toLowerCase().contains(_search))
        .toList();
    setState(() {
      search = result ?? [];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) {
                setState(() {
                  _search = value;
                  setSearch();
                });
              },
            ),
            SearchList(json: _search.isEmpty ? json : search),
          ],
        ),
      ),
    );
  }
}

class SearchList extends StatelessWidget {
  const SearchList({
    Key key,
    @required this.json,
  }) : super(key: key);

  final List<Map<String, Object>> json;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            ));
  }
}
