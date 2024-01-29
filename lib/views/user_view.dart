// lib/views/user_view.dart
import 'package:flutter/material.dart';
import 'package:admin_app_website/widgets/signup_form.dart';

class UserView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User View'),
      ),
      body: SignupForm(),
    );
  }
}
