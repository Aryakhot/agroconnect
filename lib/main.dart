import 'package:flutter/material.dart';
import 'signup.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgroConnect',
      theme: ThemeData(
        primaryColor: const Color(0xFFFFFFFF),
        fontFamily: 'Roboto',
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgroConnect'),
        backgroundColor: const Color(0xFF07480E),
        actions: [  // Correctly placed actions property
        IconButton(
          icon: const Icon(Icons.language, color: Colors.white),
          onPressed: () {
            // Action for language selection
            // Add your language selection logic here
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
                    // Updated Weather Card with more icons and data
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          // Action for weather card tap
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
                                      const Text(
                                        'Thunderstorm, 4mm Rainfall',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.air,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            '16 km/h',
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Icon(
                                            Icons.water_drop,
                                            size: 18,
                                            color: Colors.black54,
                                          ),
                                          SizedBox(width: 5),
                                          const Text(
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
                                      const SizedBox(height: 5),
                                      const Text(
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
                              const SizedBox(height: 20),
                              const Divider(color: Colors.black26, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: const [
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
                                    children: const [
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
                                    children: const [
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
                    // Updated Disease Detection Card with gradient and icons
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
                                      const Text(
                                        'Disease Detection',
                                        style: TextStyle(
                                          fontSize: 26,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.camera_alt,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
                                            'Capture',
                                            style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.white70,
                                            ),
                                          ),
                                          const SizedBox(width: 20),
                                          Icon(
                                            Icons.upload,
                                            size: 22,
                                            color: Colors.white70,
                                          ),
                                          const SizedBox(width: 5),
                                          const Text(
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
                              const SizedBox(height: 20),
                              const Divider(color: Colors.white30, thickness: 1),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: const [
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
                                    children: const [
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
                                    children: const [
                                      Icon(
                                        Icons.info,
                                        color: Colors.white70,
                                        size: 30,
                                      ),
                                      SizedBox(height: 5),
                                      Text(
                                        'Consult',
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
              onTap: () => _onItemTapped(3),
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
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
        ),
        body: Center(
            child: ElevatedButton(
              child: Text('Go to Sign Up'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignUpPage()),  // Navigate to SignUpPage
                );
              },
            ),
        ),
       );
    }
}





