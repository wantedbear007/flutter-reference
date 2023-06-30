import 'package:flutter/material.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.item});

  final Item item;

  @override
  Widget build(BuildContext context) {
    final String imageUrl =
        "https://toptensofrandomthings.files.wordpress.com/2013/09/screen-shot-2013-09-30-at-12-05-18-am.png";

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        // color: Colors.black.withOpacity(0.2),

        elevation: 0,
        child: ListTile(
          onTap: () {
            print(item.name);
          },
          leading: Image.network(item.imgUrl),
          title: Text(
            item.name,
            style: TextStyle(color: Colors.orange),
          ),
          subtitle: Text(item.desc),
          // trailing: Text("\$" + item.price.toString()),
          trailing: Text(
            "\$${item.price.toString()}",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
