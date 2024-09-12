import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 3; // Set to 3 to highlight the Profile tab

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Example navigation logic (adjust according to your app's navigation structure)
    if (index == 0) {
      Navigator.pop(context); // Navigate back to Home Page
    } else if (index == 1) {
      // Navigate to Chat Page
      // Navigator.push(context, MaterialPageRoute(builder: (context) => ChatPage()));
    } else if (index == 2) {
      // Navigate to Weather Page
      // Navigator.push(context, MaterialPageRoute(builder: (context) => WeatherPage()));
    }
    // For index 3 (Profile), we stay on the same page
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AgroConnect'),
        backgroundColor: const Color(0xFF07480E),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Information',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey.shade300,
                child: const Icon(
                  Icons.person,
                  size: 70,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Center(
              child: Text(
                'User ID: 123456',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const ProfileInfoField(label: 'Name', value: 'John Doe'),
            const ProfileInfoField(label: 'Age', value: '30'),
            const ProfileInfoField(label: 'Gender', value: 'Male'),
            const ProfileInfoField(label: 'Address', value: '123 Agro Street, Farmville'),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Update info action
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15), // Adjusted padding
                  backgroundColor: const Color(0xFF07480E), // Same color as the app bar
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Consistent with the Sign Up button
                  ),
                ),
                child: const Text(
                  'Update Info',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const Spacer(),
            const Center(
              child: Text(
                'AgroConnect',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () => _onItemTapped(0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home,
                    size: 35,
                    color: _selectedIndex == 0 ? const Color(0xFF07480E) : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: _selectedIndex == 0 ? const Color(0xFF07480E) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat,
                    size: 35,
                    color: _selectedIndex == 1 ? const Color(0xFF07480E) : Colors.grey,
                  ),
                  Text(
                    'Chat',
                    style: TextStyle(
                      color: _selectedIndex == 1 ? const Color(0xFF07480E) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(2),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.cloud,
                    size: 35,
                    color: _selectedIndex == 2 ? const Color(0xFF07480E) : Colors.grey,
                  ),
                  Text(
                    'Weather',
                    style: TextStyle(
                      color: _selectedIndex == 2 ? const Color(0xFF07480E) : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => _onItemTapped(3), // Profile Page (current page)
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person,
                    size: 35,
                    color: _selectedIndex == 3 ? const Color(0xFF07480E) : Colors.grey,
                  ),
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: _selectedIndex == 3 ? const Color(0xFF07480E) : Colors.grey,
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

class ProfileInfoField extends StatelessWidget {
  final String label;
  final String value;

  const ProfileInfoField({
    required this.label,
    required this.value,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '$label:',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}



