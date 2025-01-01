import 'package:flutter/material.dart';
import 'package:tumbal/utils/auth_service.dart';
import 'package:tumbal/screens/seller/seller_dashboard.dart';
import 'package:tumbal/screens/buyer/buyer_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    String? role = AuthService.login(
      _usernameController.text,
      _passwordController.text,
    );

    if (role == 'seller') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const SellerDashboard()),
      );
    } else if (role == 'buyer') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const BuyerDashboard()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Invalid credentials')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Password'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _login,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}