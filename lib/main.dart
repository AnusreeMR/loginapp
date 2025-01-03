import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/add_note_screen.dart';
import 'package:flutter_application_1/firebase_options.dart';
import 'package:flutter_application_1/login.dart';
import 'package:flutter_application_1/registration.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MaterialApp(home: LoginPage(),));
}
