import 'package:flutter/material.dart';
import 'package:tumbal/screens/buyer/checkout_success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Checkout',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Review your order and confirm payment to complete the purchase.',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {
                  // Tampilkan animasi loading
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );

                  // Simulasi proses checkout
                  await Future.delayed(const Duration(seconds: 3));

                  // Tutup dialog loading
                  Navigator.pop(context);

                  // Navigasi ke halaman selesai
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckoutSuccessScreen(),
                    ),
                  );
                },
                child: const Text('Confirm and Pay'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
