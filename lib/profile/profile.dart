import 'package:flutter/material.dart';

import '../services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Sign Out'),
          onPressed: () async {
            await AuthService().signOut();
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
            //when the button is pressed, it signs out the user using the AuthService,
            //and then navigates to the '/' route, removing all previous routes from
            //the stack.
          },
        ),
      ),
    );
  }
}
