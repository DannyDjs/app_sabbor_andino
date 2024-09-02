import 'package:flutter/material.dart';
import 'screens/splash.dart';
import 'screens/sign_in.dart';
import 'screens/onboarding.dart';
import 'screens/dashboard.dart';
import 'screens/dish_detail.dart';
import 'screens/restaurant_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF43A047, {
        50: Color(0xFFE8F5E9),
        100: Color(0xFFC8E6C9),
        200: Color(0xFFA5D6A7),
        300: Color(0xFF81C784),
        400: Color(0xFF66BB6A),
        500: Color(0xFF43A047), // Aquí está tu color
        600: Color(0xFF388E3C),
        700: Color(0xFF2C6C2F),
        800: Color(0xFF1B5E20),
        900: Color(0xFF0D3C19),
      })),
      title: 'Sabbor Andino',
      initialRoute: '/signin',
      routes: {
        '/': (context) => SplashScreen(),
        '/signin': (context) => const SignInScreen(
              title: 'iniciar sesion',
            ),
        '/onboarding': (context) => OnboardingScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/dish_detail': (context) => DishDetailScreen(),
        '/restaurant_detail': (context) => RestaurantDetailScreen(),
      },
    );
  }
}
