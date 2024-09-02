import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Onboarding'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/sign_in');
            },
            child: Text('Skip'),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingPage(title: 'Bienvenido', description: 'Descripción 1'),
          OnboardingPage(
              title: 'Características', description: 'Descripción 2'),
          OnboardingPage(title: 'Comienza', description: 'Descripción 3'),
        ],
      ),
      bottomSheet: Container(
        color: Colors.white,
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign_in');
          },
          child: Text('Get Started'),
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  OnboardingPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        SizedBox(height: 20),
        Text(description, textAlign: TextAlign.center),
      ],
    );
  }
}
