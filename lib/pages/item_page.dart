import 'package:flutter/material.dart';
import '../models/item.dart';
import '../widgets/product_details.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Item itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: Text(itemArgs.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ProductDetails(item: itemArgs),
      ),
    );
  }
}
