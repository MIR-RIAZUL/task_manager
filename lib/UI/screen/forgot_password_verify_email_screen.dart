import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/UI/widgets/screen_backround.dart';

import 'Sign_up_screen.dart';
import 'fotgot_password_verify_OTP_screen.dart';

class ForgotPasswordVerifyEmailScreen extends StatefulWidget {
  const ForgotPasswordVerifyEmailScreen({super.key});

  @override
  State<ForgotPasswordVerifyEmailScreen> createState() =>
      _ForgotPasswordVerifyEmailScreenState();
}

class _ForgotPasswordVerifyEmailScreenState
    extends State<ForgotPasswordVerifyEmailScreen> {
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackround(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 90),
                  Text(
                    "Enter your email Address",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "A 6 digit OTP will be sent to your email address",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    controller: _emailController,

                    decoration: InputDecoration(hintText: "Email"),
                  ),

                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: _onNextButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  const SizedBox(height: 36),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        text:
                            ""
                            "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: Colors.green),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onLoginUpButton,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onLoginUpButton() {
    Navigator.pop(context);
  }

  void _onNextButton() {
    // Navigate to the Sign Up screen
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ForgotPasswordVerifyOTPScreen(),
      ), // Replace with actual SignUpScreen
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
