import 'package:asatic_dashboard/src/core/router/router.dart';
import 'package:flutter/material.dart';

///
class HomePage extends StatelessWidget {
  ///
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () async {
            await AppRouter().router.pushNamed<bool>('/auth');
          },
          child: const Text('Home Page'),
        ),
      ),
    );
  }
}
