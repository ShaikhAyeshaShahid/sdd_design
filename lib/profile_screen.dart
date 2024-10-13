import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[900],
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.teal[900],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          // Profile section
          Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/profile_avatar.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(height: 40),
          // Profile options list
          Expanded(
            child: ListView(
              children: [
                buildProfileOption('Your Disease', Icons.local_hospital),
                buildProfileOption('Prescription', Icons.description),
                buildProfileOption('Language', Icons.language),
                buildProfileOption('Location', Icons.location_on),
                buildProfileOption('Accuracy', Icons.location_searching),
              ],
            ),
          ),
          // Log out button
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey[800],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
              ),
              onPressed: () {},
              child: Text(
                'LOG OUT',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build each profile option
  Widget buildProfileOption(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
