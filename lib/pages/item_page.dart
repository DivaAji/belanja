import 'package:flutter/material.dart';
import '../models/item.dart'; // Pastikan untuk mengimpor model Item

import 'package:flutter/material.dart';
import '../models/item.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mengambil argumen yang diterima
    final Item? item = ModalRoute.of(context)?.settings.arguments as Item?;

    // Jika item null, tampilkan pesan kesalahan
    if (item == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
          backgroundColor: Colors.blue, // Latar belakang biru
        ),
        body: Center(
          child: Text('Item tidak ditemukan'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          item.name ?? 'Tidak ada item',
          style: TextStyle(color: Colors.white), // Tulisan putih
        ),
        backgroundColor: Colors.blue, // Latar belakang biru
      ),
      body: Center(
        child: Text(
          '${item.name} with ${item.price}', // Menampilkan nama dan harga item
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
