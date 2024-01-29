import 'package:flutter/material.dart';
import 'package:admin_app_website/views/admin_view.dart';
import 'package:admin_app_website/views/user_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin App',
      theme: ThemeData.light().copyWith(
        primaryColor: const Color(0xFF1E90FF), // Dodger Blue
        scaffoldBackgroundColor: const Color(0xFFF0F8FF), // Sky Blue background
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/admin': (context) => AdminView(),
        '/user': (context) => UserView(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin App'),
        backgroundColor: const Color(0xFF1E90FF), // Dodger Blue app bar color
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/admin');
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1E90FF), // Dodger Blue button color
              ),
              child: const Text('Admin View'),
            ),
            SizedBox(height: 20), // Adding some spacing between buttons
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/user');
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFF1E90FF), // Dodger Blue button color
              ),
              child: const Text('User View'),
            ),
          ],
        ),
      ),
    );
  }
}
