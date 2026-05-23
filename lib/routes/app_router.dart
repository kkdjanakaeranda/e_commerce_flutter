import 'package:flutter/material.dart';
import 'package:newecommerce/features/main/screens/main_screen.dart';
import '../core/constants/constants.dart';
import '../core/extensions/context_extensions.dart';
import '../features/onboarding/screens/on_boarding_screen.dart';
import '../features/splash/screens/splash_screen.dart'; // Add this import
import 'app_routes.dart';

class AppRouter {
  AppRouter._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.initial:
        return _buildRoute(settings, const SplashScreen());
      case AppRoutes.onboarding:
        return _buildRoute(settings, const OnBoardingScreen());
      case AppRoutes.main:
        return _buildRoute(settings, const MainScreen());
      default:
        return _buildRoute(settings, const _RouteNotFoundScreen());
    }
  }

  static MaterialPageRoute<dynamic> _buildRoute(
      RouteSettings settings,
      Widget page,
      ) {
    return MaterialPageRoute<dynamic>(settings: settings, builder: (_) => page);
  }
}

class _RouteNotFoundScreen extends StatelessWidget {
  const _RouteNotFoundScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Route Not Found')),
      body: const Center(child: Text(AppStrings.somethingWentWrong)),
    );
  }
}