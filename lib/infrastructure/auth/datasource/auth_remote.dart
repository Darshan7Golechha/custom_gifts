import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSource {
  Future<String> signIn(
      {required String email, required String password}) async {
    final userCredential =
        await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user!.uid;
  }

  Future<String> signUp(
      {required String email, required String password}) async {
    final userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    await FirebaseAuth.instance.currentUser!.sendEmailVerification();
    return userCredential.user!.uid;
  }

  Future<void> resetPassword({required String email}) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  Future<void> logOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
