import 'package:flutter/material.dart';

class ManageProductsScreen extends StatefulWidget {
  const ManageProductsScreen({super.key});

  @override
  _ManageProductsScreenState createState() => _ManageProductsScreenState();
}

class _ManageProductsScreenState extends State<ManageProductsScreen> {
  final List<String> products = []; // Menyimpan daftar produk sementara
  final TextEditingController _controller = TextEditingController(); // Controller untuk input

  void _addProduct() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        products.add(_controller.text);
      });
      _controller.clear(); // Clear input setelah produk ditambahkan
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Products'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Form input untuk menambah produk
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Product Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _addProduct,
              child: const Text('Add Product'),
            ),
            const SizedBox(height: 16),
            // Menampilkan daftar produk
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(products[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
