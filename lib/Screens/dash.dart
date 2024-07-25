import 'dart:ui';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        title: Text('Dashboard'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                  'assets/avatar.png'), // Add the path to your avatar image
            ),
          ),
        ],
      ),
      drawer: BlurredDrawer(),
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

class BlurredDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          color: Colors.white.withOpacity(0.8),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              _createDrawerItem(
                context,
                'List1',
                () {
                  Navigator.pop(context);
                  // Handle item tap if needed
                },
              ),
              _createDrawerItem(
                context,
                'List2',
                () {
                  Navigator.pop(context);
                  // Handle item tap if needed
                },
              ),
              _createDrawerItem(
                context,
                'List3',
                () {
                  Navigator.pop(context);
                  // Handle item tap if needed
                },
              ),
              _createDrawerItem(
                context,
                'List4',
                () {
                  Navigator.pop(context);
                  // Handle item tap if needed
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createDrawerItem(
      BuildContext context, String text, VoidCallback onTap) {
    return ListTile(
      title: Text(text),
      onTap: onTap,
    );
  }
}
