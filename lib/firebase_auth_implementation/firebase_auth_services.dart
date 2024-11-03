import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Sign up with email and password
  Future<UserCredential?> signUpWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // Create user with email and password
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Save user data to Firestore
      await _firestore.collection('popsmo').doc(userCredential.user!.uid).set({
        'email': email,
        // 'password': password, // Do not store passwords in Firestore
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code} - ${e.message}');
      throw Exception('Error during sign up: ${e.code} - ${e.message}');
    } catch (e) {
      print('Exception: $e');
      throw Exception('Unknown error during sign up: $e');
    }
  }

  // Sign in with email and password
  Future<UserCredential?> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      // Sign in user
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Optionally retrieve user data
      DocumentSnapshot userDoc = await _firestore.collection('popsmo').doc(userCredential.user!.uid).get();
      if (userDoc.exists) {
        print('User Data: ${userDoc.data()}');
      } else {
        print('No additional user data found in Firestore.');
      }

      return userCredential;
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code} - ${e.message}');
      throw Exception('Error during sign in: ${e.code} - ${e.message}');
    } catch (e) {
      print('Exception: $e');
      throw Exception('Unknown error during sign in: $e');
    }
  }

  // Sign out
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print('Exception during sign out: $e');
      throw Exception('Error signing out: $e');
    }
  }

  // Get current user
  User? get currentUser => _auth.currentUser;

  // Reset password
  Future<void> sendPasswordResetEmail({required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on FirebaseAuthException catch (e) {
      print('FirebaseAuthException: ${e.code} - ${e.message}');
      throw Exception('Error sending password reset email: ${e.code} - ${e.message}');
    } catch (e) {
      print('Exception: $e');
      throw Exception('Unknown error during password reset: $e');
    }
  }
}
