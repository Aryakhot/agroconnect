import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile.dart';
import 'chatbot.dart';
//import 'signup.dart';
import 'weather.dart';

class AgroConnectScreen extends StatefulWidget {
  const AgroConnectScreen({super.key});

  @override
  _AgroConnectScreenState createState() => _AgroConnectScreenState();
}

class _AgroConnectScreenState extends State<AgroConnectScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigation logic based on index
    if (index == 3) {
      // Navigate to ProfilePage when Profile icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProfilePage()),
      );
    }
    if (index == 0) {
      // Replace the current AgroConnectScreen to avoid showing the back button
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AgroConnectScreen()),
      );
    }
    if (index == 1) {
      // Navigate to ProfilePage when Profile icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatBotScreen()),
      );
    }
    if (index == 2) {
      // Navigate to ProfilePage when Profile icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const WeatherScreen()),
      );
    }
    // Add more conditions for other indices if navigation is needed
  }
  void _navigateChatbotSequence(BuildContext context) {
// Adjust the pages and their sequence as per your actual app pages
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const ChatBotScreen()), // Replace with the first page you want to open
    ).then((_) {
      // Add subsequent navigations if needed
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.eco, // Adds an icon related to agriculture
              color: Colors.white,
            ),
            SizedBox(width: 10), // Adds spacing between icon and text
            Text(
              'AgroConnect',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        automaticallyImplyLeading: true, // Adds back arrow if applicable
        backgroundColor: const Color(0xFF2BCD3D),
        actions: [
          IconButton(
            icon: const Icon(Icons.language, color: Colors.white),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('change Language'.tr),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: const Text('English'),
                          onTap: () {
                            var locale = const Locale('en', 'US');
                            Get.updateLocale(locale); // Switch to English
                            Get.back(); // Close the dialog
                          },
                        ),
                        ListTile(
                          title: const Text('हिन्दी'),
                          onTap: () {
                            var locale = const Locale('hi', 'IN');
                            Get.updateLocale(locale); // Switch to Spanish
                            Get.back(); // Close the dialog
                          },
                        ),
                        ListTile(
                          title: const Text('मराठी'),
                          onTap: () {
                            var locale = const Locale('mr', 'IN');
                            Get.updateLocale(locale); // Switch to Spanish
                            Get.back(); // Close the dialog
                          },
                        ),
                        ListTile(
                          title: const Text('ಕನ್ನಡ'),
                          onTap: () {
                            var locale = const Locale('kn', 'IN');
                            Get.updateLocale(locale); // Switch to Spanish
                            Get.back(); // Close the dialog
                          },
                        ),
                        // Add more languages as needed
                      ],
                    ),
                  );
                },
              );

              // Action for language selection
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/bgimagee.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Center(
                child: Text(
                  'WELCOME!'.tr,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Playfair Display',
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Action for weather card tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const WeatherScreen()),
                          );

                        },
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFF74EBD5), Color(0xFFACB6E5)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Today, Mumbai'.tr,
                                        style: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Thunderstorm, 4mm Rainfall'.tr,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.air,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            '16 km/h'.tr,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          const Icon(
                                            Icons.water_drop,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            'Humidity: 80%'.tr,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Icon(
                                        Icons.cloud,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '24°C'.tr,
                                        style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              const Divider(color: Colors.black26, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.sunny,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '6:30 AM'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Sunrise'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.nights_stay,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        '6:45 PM'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Sunset'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.north,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'NE'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Wind Dir.'.tr,
                                        style: const TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Updated Disease Detection Card
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Action for disease detection tap
                        },
                        child: Container(
                          padding: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFFCB69F), Color(0xFF8B5E3C)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child:  Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Disease Detection'.tr,
                                        style: const TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 70),
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.camera_alt,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          const SizedBox(width: 10),
                                          Text(
                                            'Capture'.tr,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          const Icon(
                                            Icons.upload,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          const SizedBox(width: 5),
                                          Text(
                                            'Upload'.tr,
                                            style: const TextStyle(
                                              fontSize: 24,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Icon(
                                        Icons.medical_services,
                                        size: 50,
                                        color: Colors.white54,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              const Divider(color: Colors.white30, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.warning,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Detect'.tr,
                                        style: const TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.local_hospital,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Treat'.tr,
                                        style: const TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      const Icon(
                                        Icons.info,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        'Learn'.tr,
                                        style: const TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                      ],
                    ),
              ),
                ],
              ),
        ),
          ),

      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 35,
                    color: _selectedIndex == 0
                        ? const Color(0xFF07480E)
                        : Colors.grey,
                  ),
                  Text(
                    'Home'.tr,
                    style: TextStyle(
                      color: _selectedIndex == 0
                          ? const Color(0xFF07480E)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat,
                    size: 35,
                    color: _selectedIndex == 1
                        ? const Color(0xFF07480E)
                        : Colors.grey,
                  ),
                  Text(
                    'Chat'.tr,
                    style: TextStyle(
                      color: _selectedIndex == 1
                          ? const Color(0xFF07480E)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud,
                    size: 35,
                    color: _selectedIndex == 2
                        ? const Color(0xFF07480E)
                        : Colors.grey,
                  ),
                  Text(
                    'Weather'.tr,
                    style: TextStyle(
                      color: _selectedIndex == 2
                          ? const Color(0xFF07480E)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(3), // This will trigger the navigation
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 35,
                    color: _selectedIndex == 3
                        ? const Color(0xFF07480E)
                        : Colors.grey,
                  ),
                  Text(
                    'Profile'.tr,
                    style: TextStyle(
                      color: _selectedIndex == 3
                          ? const Color(0xFF07480E)
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}