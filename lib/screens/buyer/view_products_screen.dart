import 'package:flutter/material.dart';
import 'package:tumbal/screens/buyer/product_detail_screen.dart';

class ViewProductsScreen extends StatelessWidget {
  const ViewProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data untuk produk
    final List<Map<String, String>> products = [
      {'id': '1', 'name': 'Product 1', 'price': 'Rp10,000', 'image': 'images/iwatch.png'},
      {'id': '2', 'name': 'Product 2', 'price': 'Rp15,000', 'image': 'images/iwatch.png'},
      {'id': '3', 'name': 'Product 3', 'price': 'Rp20,000', 'image': 'images/iwatch.png'},
      {'id': '4', 'name': 'Product 4', 'price': 'Rp25,000', 'image': 'images/iwatch.png'},
      {'id': '5', 'name': 'Product 5', 'price': 'Rp30,000', 'image': 'images/iwatch.png'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('View Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              leading: Image.asset(
                product['image']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(product['name']!),
              subtitle: Text(product['price']!),
              onTap: () {
                // Navigasi ke halaman detail produk
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailScreen(
                      id: product['id']!,
                      name: product['name']!,
                      price: product['price']!,
                      image: product['image']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
