import 'package:flutter/material.dart';
import 'profile.dart';
import 'chatbot.dart';
//import 'signup.dart';
import 'weather.dart';

class AgroConnectScreen extends StatefulWidget {
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
        MaterialPageRoute(builder: (context) => AgroConnectScreen()),
      );
    }
    if (index == 1) {
      // Navigate to ProfilePage when Profile icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ChatBotScreen()),
      );
    }
    if (index == 2) {
      // Navigate to ProfilePage when Profile icon is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => WeatherScreen()),
      );
    }
    // Add more conditions for other indices if navigation is needed
  }
  void _navigateChatbotSequence(BuildContext context) {
// Adjust the pages and their sequence as per your actual app pages
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ChatBotScreen()), // Replace with the first page you want to open
    ).then((_) {
      // Add subsequent navigations if needed
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'AgroConnect',
          style: TextStyle(
            fontSize: 20, // Match font size with Plantix app
            color: Colors.white, // Match AppBar color style
          ),
        ),
        automaticallyImplyLeading: false, // Prevents the back arrow
        backgroundColor: const Color(0xFF07480E),
        actions: [
          IconButton(
            icon: const Icon(Icons.language, color: Colors.white),
            onPressed: () {
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
              const Center(
                child: Text(
                  'WELCOME!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                    color: Color(0xFFFFFFFF),
                    fontFamily: 'Playfair Display',
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Action for weather card tap
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => WeatherScreen()),
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
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Today, Mumbai',
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Thunderstorm, 4mm Rainfall',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.air,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            '16 km/h',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Icon(
                                            Icons.water_drop,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Humidity: 80%',
                                            style: TextStyle(
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
                                      Icon(
                                        Icons.cloud,
                                        size: 50,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '24°C',
                                        style: TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 20),
                              Divider(color: Colors.black26, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.sunny,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '6:30 AM',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Sunrise',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.nights_stay,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        '6:45 PM',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Sunset',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.north,
                                        color: Colors.black54,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'NE',
                                        style: TextStyle(color: Colors.black54),
                                      ),
                                      Text(
                                        'Wind Dir.',
                                        style: TextStyle(color: Colors.black54),
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
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Disease Detection',
                                        style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.camera_alt,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Capture',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          SizedBox(width: 20),
                                          Icon(
                                            Icons.upload,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          SizedBox(width: 5),
                                          Text(
                                            'Upload',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Column(
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
                              SizedBox(height: 20),
                              Divider(color: Colors.white30, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.warning,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Detect',
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.local_hospital,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Treat',
                                        style: TextStyle(color: Colors.white70),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        Icons.info,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Learn',
                                        style: TextStyle(color: Colors.white70),
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
                    Align(
                      alignment: Alignment.centerRight, // Aligns the button to the right
                      child: ElevatedButton(
                        onPressed: () => _navigateChatbotSequence(context), // Correct function call
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(15), // Ensures the button looks square
                          backgroundColor: const Color(0xFF07480E), // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded corners
                          ),
                          minimumSize: const Size(50, 50), // Square shape with rounded edges
                        ),
                        child: const Icon(Icons.chat, color: Colors.white), // Icon for the button
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
                    'Home',
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
                    'Chat',
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
                    'Weather',
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
                    'Profile',
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