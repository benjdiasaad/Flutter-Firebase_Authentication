import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(AuthApp());
}

class AuthApp extends StatefulWidget {
  //const AuthApp({ Key? key }) : super(key: key);

  @override
  _AuthAppState createState() => _AuthAppState();
}

class _AuthAppState extends State<AuthApp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Auth User')),
        body: Center(
          child: Column(
            children: [
              TextField(controller: emailController),
              TextField(
                controller: passwordController,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Sign Up')),
                  ElevatedButton(onPressed: () {}, child: Text('Sign In')),
                  ElevatedButton(onPressed: () {}, child: Text('Log Out')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
