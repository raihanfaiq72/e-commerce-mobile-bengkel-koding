import 'package:flutter/material.dart';
import 'package:tumbal/screens/buyer/view_products_screen.dart';
import 'package:tumbal/screens/login_screen.dart'; // Import halaman login

class BuyerDashboard extends StatelessWidget {
  const BuyerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buyer Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, // Agar elemen tetap di tengah
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ViewProductsScreen()),
                );
              },
              child: const Text('View Products'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Warna tombol logout
              ),
              onPressed: () {
                // Navigasi kembali ke halaman login
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
