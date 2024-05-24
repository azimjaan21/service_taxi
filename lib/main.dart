import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'providers/map_provider.dart';
import 'providers/user_provider.dart';
import 'screens/map_screen.dart';
import 'screens/login_signup_screen.dart';

import 'screens/splash_screen.dart';
import 'screens/trips_screen.dart';
import 'theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: 'AIzaSyBf4es4wWv_b0y8f3SqoWAbIb7dqqnnDUE',
    appId: '1:459013782247:android:81bf6fad945aa9bc5f0042',
    messagingSenderId: '459013782247',
    projectId: 'taxi-app-30eb3',
    storageBucket: 'taxi-app-30eb3.appspot.com',
  ));
  runApp(const TaxiApp());
}

class TaxiApp extends StatelessWidget {
  const TaxiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserProvider.initialize()),
        ChangeNotifierProvider.value(value: MapProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Service Taxi',
        theme: theme,
        initialRoute: SplashScreen.route,
        routes: {
          MapScreen.route: (_) => const MapScreen(),
          SplashScreen.route: (_) => const SplashScreen(),
          LoginSignupScreen.route: (_) => const LoginSignupScreen(),
          TripsScreen.route: (_) => const TripsScreen(),
        },
      ),
    );
  }
}
