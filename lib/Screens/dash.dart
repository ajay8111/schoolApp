import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/admin.png'), // Add the path to your avatar image
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            _buildDashboardItem(
              context,
              Icons.remove_red_eye,
              'Teacher',
              Colors.white,
              Colors.black,
            ),
            _buildDashboardItem(
              context,
              Icons.edit,
              'Duties',
              Colors.red,
              Colors.white,
            ),
            _buildDashboardItem(
              context,
              Icons.message,
              'Notices',
              Colors.yellow,
              Colors.black,
            ),
            _buildDashboardItem(
              context,
              Icons.assignment,
              'Attendance',
              Colors.blue,
              Colors.white,
            ),
            _buildDashboardItem(
              context,
              Icons.payment,
              'Payment',
              Colors.green,
              Colors.white,
            ),
            _buildDashboardItem(
              context,
              Icons.school,
              'Student',
              Colors.purple,
              Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDashboardItem(BuildContext context, IconData icon, String label,
      Color backgroundColor, Color iconColor) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50.0,
            color: iconColor,
          ),
          SizedBox(height: 8.0),
          Text(
            label,
            style: TextStyle(
              color: iconColor,
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
