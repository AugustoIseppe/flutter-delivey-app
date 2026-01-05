import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  // get instance of firebase auth
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // get current user
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }

  // sign in
  Future<UserCredential> signIn(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception('Erro ao entrar: ${e.message}');
    }
  }

  // register
  Future<UserCredential> register(
    String email,
    String password,
  ) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
      return userCredential;
    } on FirebaseAuthException catch (e) {
      throw Exception('Erro ao registrar: ${e.message}');
    }
  }

  // sign out
  Future<void> signOut() async {
    return await _firebaseAuth.signOut();
  }
}
