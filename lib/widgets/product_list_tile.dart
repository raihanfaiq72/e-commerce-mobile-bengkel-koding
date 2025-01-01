import 'package:flutter/material.dart';
import 'package:tumbal/models/product_model.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  final VoidCallback onTap;

  const ProductListTile({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('Rp ${product.price.toStringAsFixed(2)}'),
      onTap: onTap,
    );
  }
}
