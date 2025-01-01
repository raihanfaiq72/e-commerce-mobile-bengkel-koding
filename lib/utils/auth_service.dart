class AuthService {
  static const String sellerUsername = "penjual";
  static const String sellerPassword = "penjual";
  static const String buyerUsername = "pembeli";
  static const String buyerPassword = "pembeli";

  static String? login(String username, String password) {
    if (username == sellerUsername && password == sellerPassword) {
      return 'seller';
    } else if (username == buyerUsername && password == buyerPassword) {
      return 'buyer';
    }
    return null;
  }
}