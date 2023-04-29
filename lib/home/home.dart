import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/services/auth.dart';

import 'package:flutter_quiz_app/login/login.dart';
import 'package:flutter_quiz_app/topics/topics.dart';
import 'package:flutter_quiz_app/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text('Loading...');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('error'),
          );
        } else if (snapshot.hasData) {
          return TopicsScreen();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
