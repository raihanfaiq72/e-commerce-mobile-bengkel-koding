import 'package:flutter/material.dart';
import 'package:tumbal/models/cart_model.dart';

class CartItemTile extends StatelessWidget {
  final CartItem cartItem;
  final VoidCallback onRemove;

  const CartItemTile({
    super.key,
    required this.cartItem,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(cartItem.name),
      subtitle: Text('${cartItem.quantity} x Rp ${cartItem.price.toStringAsFixed(2)}'),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: onRemove,
      ),
    );
  }
}
