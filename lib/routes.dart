import 'package:flutter_quiz_app/about/about.dart';
import 'package:flutter_quiz_app/home/home.dart';
import 'package:flutter_quiz_app/login/login.dart';
import 'package:flutter_quiz_app/profile/profile.dart';
import 'package:flutter_quiz_app/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  'login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};
