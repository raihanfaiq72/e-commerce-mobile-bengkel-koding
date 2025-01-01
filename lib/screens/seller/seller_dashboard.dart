import 'package:flutter/material.dart';
import 'package:tumbal/screens/seller/manage_products_screen.dart';

class SellerDashboard extends StatelessWidget {
  const SellerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Seller Dashboard'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ManageProductsScreen()),
            );
          },
          child: const Text('Manage Products'),
        ),
      ),
      
    );
  }
}