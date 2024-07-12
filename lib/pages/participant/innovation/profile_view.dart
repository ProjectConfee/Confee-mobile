// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';

class ProfileViewPage extends StatefulWidget {
  const ProfileViewPage({Key? key}) : super(key: key);

  @override
  _ProfileViewPageState createState() => _ProfileViewPageState();
}

class _ProfileViewPageState extends State<ProfileViewPage> {
  bool _isEditing = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController _firstNameController = TextEditingController(text: 'John');
  TextEditingController _lastNameController = TextEditingController(text: 'Doe');
  TextEditingController _fullNameController = TextEditingController(text: 'John Doe');
  TextEditingController _ageController = TextEditingController(text: '30');
  TextEditingController _addressController = TextEditingController(text: '123 Main St, Springfield');
  TextEditingController _genderController = TextEditingController(text: 'Male');
  TextEditingController _phoneNumberController = TextEditingController(text: '123-456-7890');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blue,
                  child: Icon(Icons.person, size: 50, color: Colors.white),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3,
                    children: [
                      _buildTextField('First Name', _firstNameController),
                      _buildTextField('Last Name', _lastNameController),
                      _buildTextField('Full Name', _fullNameController),
                      _buildTextField('Age', _ageController),
                      _buildTextField('Address', _addressController),
                      _buildTextField('Gender', _genderController),
                      _buildTextField('Phone Number', _phoneNumberController),
                    ],
                  ),
                ),
                _isEditing
                    ? ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            setState(() {
                              _isEditing = false;
                            });
                          }
                        },
                        child: Text('Save'),
                      )
                    : ElevatedButton(
                        
                        onPressed: () {
                          setState(() {
                            _isEditing = true;
                          });
                        },
                        child: Text('Edit Profile'),
                      ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: 'Packages'),

          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        controller: controller,
        enabled: _isEditing,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(
            color: Colors.blue, // Label color
            fontWeight: FontWeight.bold,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.blue, // Border color when focused
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return '$label cannot be empty';
          }
          return null;
        },
      ),
    );
  }
}
