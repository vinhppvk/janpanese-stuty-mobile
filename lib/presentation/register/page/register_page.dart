import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../app/widget/app_bar/custom_app_bar.dart';
import 'register_step_1.dart';
import 'register_step_2.dart';
import 'register_step_3.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  int _currentStep = 0;
  late String _email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: const Text('Sign Up'),
        onBackPressed: () => context.pop(),
      ),
      body: _getStep(),
    );
  }

  Widget _getStep() {
    return switch (_currentStep) {
      0 => RegisterStep1(onContinue: (String email) {
          _updateCounter(onUpdateCounter: () => _email = email);
        }),
      1 => RegisterStep2(
          onContinue: _updateCounter,
          email: _email,
        ),
      2 => RegisterStep3(onContinue: _updateCounter),
      _ => const SizedBox(),
    };
  }

  void _updateCounter({VoidCallback? onUpdateCounter}) {
    setState(() {
      onUpdateCounter?.call();
      if (_currentStep >= 2) {
        // Go back to login page
      } else {
        _currentStep++;
      }
    });
  }
}