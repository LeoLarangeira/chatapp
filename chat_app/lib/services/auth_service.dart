import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // AuthService(
  //     {required this.email, required this.password, required this.name});

  // String email;
  // String password;
  // String name;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  //sign in
  Future<UserCredential> signInWithEmailPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception(e.code);
    }
  }

  //sing out
  Future<void> signOut(String email, String password, String name) async {}

  //errors
}
