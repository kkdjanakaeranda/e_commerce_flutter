import 'package:flutter/material.dart';
import 'package:newecommerce/core/extensions/context_extensions.dart';
import 'package:newecommerce/core/services/navigation_service.dart';
import 'package:newecommerce/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateNext();
  }

  Future<void> _navigateNext() async {
    await Future<void>.delayed(const Duration(seconds: 5));
    if (!mounted) return;
    //NavigationService.instance.pushReplacementNamed(AppRoutes.onboarding);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.primary,
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/images/png/app_icon_foreground.png'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushNamed(AppRoutes.onboarding),
            child: const Text('Proceed'),
          )
        ],
      ),
    );
  }
}