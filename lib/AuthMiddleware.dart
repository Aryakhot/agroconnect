import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'LoginPage.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    // Check if user is signed in
    if (FirebaseAuth.instance.currentUser == null) {
      // Redirect to LoginPage if not signed in
      return const RouteSettings(name: '/login');
    }
    return null; // No redirection if user is signed in
  }
}
