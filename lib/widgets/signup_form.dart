// lib/widgets/signup_form.dart
import 'package:flutter/material.dart';
import 'package:admin_app_website/models/signup_entry.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  // Form key for validation
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Form data
  late String _startupName;
  late String _ownerName;
  late String _nationalIdImageUrl;
  late String _commercialRecordImageUrl;
  late String _taxCardImageUrl;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Startup Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the startup name';
                  }
                  return null;
                },
                onSaved: (value) => _startupName = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Owner Name'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the owner name';
                  }
                  return null;
                },
                onSaved: (value) => _ownerName = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'National ID Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the national ID image URL';
                  }
                  return null;
                },
                onSaved: (value) => _nationalIdImageUrl = value!,
              ),
              TextFormField(
                decoration:
                    InputDecoration(labelText: 'Commercial Record Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the commercial record image URL';
                  }
                  return null;
                },
                onSaved: (value) => _commercialRecordImageUrl = value!,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Tax Card Image URL'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the tax card image URL';
                  }
                  return null;
                },
                onSaved: (value) => _taxCardImageUrl = value!,
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      _formKey.currentState?.save();

      // Create a SignupEntry object with the form data
      SignupEntry newEntry = SignupEntry(
        startupName: _startupName,
        ownerName: _ownerName,
        nationalIdImageUrl: _nationalIdImageUrl,
        commercialRecordImageUrl: _commercialRecordImageUrl,
        taxCardImageUrl: _taxCardImageUrl,
      );

      // You can now save the newEntry to a database or perform other actions
      // For simplicity, let's print the details for demonstration
      print('New Signup Entry: $newEntry');
    }
  }
}
