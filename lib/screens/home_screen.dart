import "dart:convert";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:flutter_garbage/models/catalog.dart";
import "package:flutter_garbage/widgets/drawer.dart";
import "package:flutter_garbage/widgets/item_widget.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJSON = await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJSON);
    final decodeData = jsonDecode(catalogJSON);
    var productData = decodeData("products");

    print(productData);
  }

  @override
  Widget build(BuildContext context) {
    // To generate dummy list
    final dummyList = List.generate(50, (index) => CatalogModel.items[0]);

    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),

        title: Text(
          "Catalog App",
          // style: TextStyle(color: Colors.black),
        ),
        // leading: Text("hello"),
        // flexibleSpace: Text("hello"),
        // actions: [
        //   ElevatedButton(
        //       onPressed: () {
        //         print("Hello, world");
        //       },
        //       child: Icon(Icons.download)),
        //   ElevatedButton(
        //       onPressed: () {
        //         print("second button pressed");
        //       },
        //       child: Icon(Icons.navigate_next))
        // ],
      ),
      // body: Container(
      //   constraints: BoxConstraints(
      //     maxHeight: 200.0,
      //     maxWidth: 200.0,
      //     minWidth: 70.0,
      //     minHeight: 70.0,
      //   ),
      //   // height: 100,
      //   // width: 200,
      //   color: Colors.red,
      //   child: Container(
      //     height: 50,
      //     // width: 50,
      //     color: Colors.orange,
      //   ),
      // )
      // body: Center(
      //   child: Text(
      //     "this is the home screen",
      //     style: TextStyle(fontSize: 34),
      //   ),
      // ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            // itemCount: CatalogModel.items.length,
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              // return ItemWidget(item: CatalogModel.items[index]);
              return ItemWidget(item: dummyList[index]);
            }),
      ),
    );
  }
}
