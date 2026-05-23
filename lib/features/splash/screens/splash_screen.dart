import 'package:flutter/material.dart';
import 'package:newecommerce/core/extensions/context_extensions.dart';
import 'package:newecommerce/routes/app_routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  NavigatorState? get navigator => navigatorKey.currentState;

  @override
  void initState(){
    super.initState();
    _navigateNext();
  }
  Future<void> _navigateNext() async{
    await Future<void>.delayed(Duration(seconds: 5));
    navigator?.push(AppRoutes).onboarding as Route
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor, // Fixed color access
      body: Column(
        children: [
          Center(
            child: Image.asset('assets/images/png/app_icon_foreground.png'),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed(AppRoutes.onboarding),
              child: Text('Proceed'),
            ),
          ),
        ],
      ),
    );
  }
