import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:handinhandup/features/view/login_screen.dart';
import 'package:handinhandup/features/view/splash_screen.dart';
import 'package:handinhandup/firebase_options.dart';

import 'exam.dart';
import 'features/view/signup_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:{
        '/':(context)=>const SplashScreen(),
        '/home':(context) => const LoginScreen()
      } ,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: const LoginScreen(),
    );
  }
}

