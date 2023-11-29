import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
        backgroundColor: const Color(0xFF7553F6),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _buildProfilePicture(),
            const SizedBox(height: 16),
            _buildUserInfo(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    // Placeholder profile picture, you can replace it with an actual user's profile picture
    return const CircleAvatar(
      radius: 60,
      backgroundImage: AssetImage('assets/avatars/Avatar 7.jpg'),
    );
  }

  Widget _buildUserInfo() {
    // Placeholder user data, replace it with actual user data
    String userName = 'Firli Setiani';
    String userBio = 'Student';
    String userEmail =
        'virlisetia16@example.com'; // Replace with actual user's total collections

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          userName,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        Text(
          userBio,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
        const SizedBox(height: 16),
        _buildUserDetails('Email', userEmail),
        _buildUserDetailsInContainer('Total Collections', '29'),
        _buildUserDetailsInContainer('Favorites Collection', '10'),
        // Add more user details as needed
      ],
    );
  }

  Widget _buildUserDetails(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(width: 8),
        Text(
          value,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget _buildUserDetailsInContainer(String label, String value) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            Icons.favorite,
            color: Colors.white,
          ),
          const SizedBox(width: 8),
          Text(
            '$label: $value',
            style: const TextStyle(fontSize: 18, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: UserScreen(),
  ));
}
