import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 5000),
    Item(name: 'Salt', price: 2000),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home Page',
          style: TextStyle(color: Colors.white), // Tulisan putih
        ),
        backgroundColor: Colors.blue, // Latar belakang biru
      ),
      body: Container(
        padding: EdgeInsets.all(8), // Padding di sekitar ListView
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index]; // Ambil item berdasarkan index
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/item', arguments: item);
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8), // Margin dalam Card
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name ?? 'Tidak Ada Nama')),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                          textAlign: TextAlign.end, // Rata kanan
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
