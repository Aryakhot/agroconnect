import 'package:agroconnect/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'homepage.dart';
import 'language_selection_page.dart';
import 'locale_string.dart';
import 'LoginPage.dart';
import 'signup.dart';
import 'profile.dart'; // Import your protected ProfilePage
import 'AuthMiddleware.dart'; // Import AuthMiddleware

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: LocalString(),
      locale: const Locale('en', 'US'), // Default locale
      fallbackLocale: const Locale('en', 'US'), // Fallback locale
      title: 'AgroConnect',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFFFF),
        fontFamily: 'Roboto',
      ),
      initialRoute: '/language', // Set the initial route to the language selection page
      getPages: [
        GetPage(name: '/language', page: () => const LanguageSelectionPage()),
        GetPage(name: '/signUp', page: () => const SignUpPage()),
        GetPage(name: '/login', page: () => const LoginPage()),
        GetPage(name: '/homepage', page: () => const AgroConnectScreen()),

        // Protect ProfilePage with AuthMiddleware
        GetPage(
          name: '/profile',
          page: () => const ProfilePage(),
          middlewares: [AuthMiddleware()], // Apply AuthMiddleware here
        ),
      ],
    );
  }
}
