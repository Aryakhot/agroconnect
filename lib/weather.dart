  import 'package:flutter/material.dart';
  import 'profile.dart';
  import 'chatbot.dart';
  import 'homepage.dart';

  class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

    @override
    _WeatherScreenState createState() => _WeatherScreenState();
  }

  class _WeatherScreenState extends State<WeatherScreen> {
    int _selectedIndex = 2; // Default selected index for the weather screen

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });

      // Navigate based on the selected index
      switch (index) {
        case 0:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const AgroConnectScreen()),
          );
          break;
        case 1:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ChatBotScreen()),
          );
          break;
        case 2:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const WeatherScreen()),
          );
          break;
        case 3:
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const ProfilePage()),
          );
          break;
        default:
          break;
      }
    }

    void _navigateChatbotSequence(BuildContext context) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ChatBotScreen()),
      );
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Mumbai, 13 Sep'),
          backgroundColor: const Color(0xFF07480E),
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '27°C',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
          Column(
                    children: [
                      Text(
                        '29°C / 25°C',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 4),
                      Text('Sunset 6:41 PM'),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.cloud, color: Colors.grey[600], size: 40),
                  const SizedBox(width: 10),
                  const Text(
                    '100% Humidity',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Spraying time 🌾',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Moderate spraying conditions'),
                        Icon(Icons.warning_amber_rounded, color: Colors.orange),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildSprayCondition('12 AM', Colors.orange),
                        _buildSprayCondition('1 AM', Colors.red),
                        _buildSprayCondition('2 AM', Colors.red),
                        _buildSprayCondition('3 AM', Colors.orange),
                        _buildSprayCondition('4 AM', Colors.orange),
                        _buildSprayCondition('5 AM', Colors.pink),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Optimal'),
                        Text('Moderate'),
                        Text('Unfavourable'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Next 6 days',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildDayForecast('Sat', '29°C'),
                    _buildDayForecast('Sun', '30°C'),
                    _buildDayForecast('Mon', '29°C'),
                    _buildDayForecast('Tue', '29°C'),
                    _buildDayForecast('Wed', '28°C'),
                  ],
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: ElevatedButton(
          onPressed: () => _navigateChatbotSequence(context),
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(15),
            backgroundColor: const Color(0xFF07480E),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            minimumSize: const Size(50, 50),
          ),
          child: const Icon(Icons.chat, color: Colors.white),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildNavItem(Icons.home, 'Home', 0),
              _buildNavItem(Icons.chat, 'Chat', 1),
              _buildNavItem(Icons.cloud, 'Weather', 2),
              _buildNavItem(Icons.person, 'Profile', 3),
            ],
          ),
        ),
      );
    }

    Widget _buildSprayCondition(String time, Color color) {
      return Column(
        children: [
          Icon(Icons.circle, color: color, size: 20),
          const SizedBox(height: 5),
          Text(time),
        ],
      );
    }

    Widget _buildDayForecast(String day, String temp) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(day, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 10),
            const Icon(Icons.cloud, size: 30, color: Colors.grey),
            const SizedBox(height: 10),
            Text(temp, style: const TextStyle(fontSize: 16)),
          ],
        ),
      );
    }

    Widget _buildNavItem(IconData icon, String label, int index) {
      return GestureDetector(
        onTap: () => _onItemTapped(index),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 35,
              color: _selectedIndex == index
                  ? const Color(0xFF07480E)
                  : Colors.grey,
            ),
            Text(
              label,
              style: TextStyle(
                color: _selectedIndex == index
                    ? const Color(0xFF07480E)
                    : Colors.grey,
              ),
            ),
          ],
        ),
      );
    }
  }

