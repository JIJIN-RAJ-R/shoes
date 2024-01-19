
import 'package:flutter/material.dart';
import 'package:my_shoes/backend.dart';
// import 'package:my_shoes/services.dart';

// ... (imports)

class AddUser extends StatefulWidget {
  const AddUser({Key? key}) : super(key: key);

  @override
  State<AddUser> createState() => _AddUserScreenState();
}

class _AddUserScreenState extends State<AddUser> {
  final _userNameController = TextEditingController();
  final _userPriceController = TextEditingController();
  final _formKey = GlobalKey<FormState>(); // Add a GlobalKey for the Form
  // bool _validateName = false;
  // bool _validatePrice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ... (other properties)
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ... (other widgets)

          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text('Shoes data',
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.w700)),
                  TextFormField(
                    controller: _userNameController,
                    decoration: const InputDecoration(
                      labelText: 'Shoes Name',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Shoe Name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _userPriceController,
                    decoration: const InputDecoration(
                      labelText: 'Price',
                      fillColor: Colors.white,
                      filled: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Shoe Price';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Form is valid, proceed with adding data
                        setState(() {
                          // ignore: no_leading_underscores_for_local_identifiers
                          var _user = user();
                          _user.name = _userNameController.text;
                          _user.price = int.parse(_userPriceController.text);
                          // var result = await userService.SaveUser(_user);
                        });
                      }
                    },
                    child: const Text('Add Data'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Form is valid, proceed with adding data
                      setState(() {
                        _userNameController.text = '';
                        _userPriceController.text = '';

                        // var result = await userService.SaveUser(_user);
                      });
                    },
                    child: const Text('Clear Data'),
                  ),
                  // ... (other buttons)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
