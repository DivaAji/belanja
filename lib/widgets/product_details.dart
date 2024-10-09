import 'package:flutter/material.dart';
import '../models/item.dart';

class ProductDetails extends StatelessWidget {
  final Item item;

  const ProductDetails({required this.item});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'product-image-${item.name}',
          child: Image.asset(
            item.imageUrl,
            height: 200,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 16),
        Text(
          item.name,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Rp ${item.price}',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
        Text(
          'Stok: ${item.stock}',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < item.rating ? Icons.star : Icons.star_border,
              color: Colors.amber,
              size: 24,
            );
          }),
        ),
        SizedBox(height: 16),
        Text('Deskripsi produk atau informasi tambahan di sini...'),
      ],
    );
  }
}
