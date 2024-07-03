// import 'package:dars_8/services/authationhttp_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  // final AuthenticationService _authenticationService = AuthenticationService();

  Future<void> signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error signing in: $e");
    }
  }

  Future<void> register(String email, String password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      print("Error registering: $e");
    }
  }
}
