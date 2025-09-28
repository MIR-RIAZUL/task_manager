import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:task_manager/UI/screen/reset_password_screen.dart';
import 'package:task_manager/UI/widgets/screen_backround.dart';

class ForgotPasswordVerifyOTPScreen extends StatefulWidget {
  const ForgotPasswordVerifyOTPScreen({super.key});

  @override
  State<ForgotPasswordVerifyOTPScreen> createState() =>
      _ForgotPasswordVerifyOTPScreenState();
}

class _ForgotPasswordVerifyOTPScreenState
    extends State<ForgotPasswordVerifyOTPScreen> {
  final TextEditingController _OTOcontroller = TextEditingController();
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
                    "Enter your OTP",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "A 6 digit OTP has been sent to your email address",
                    style: Theme.of(
                      context,
                    ).textTheme.bodyLarge?.copyWith(color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 40,
                      activeFillColor: Colors.white,
                    ),
                    animationDuration: Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,

                    // enableActiveFill: true,
                    controller: _OTOcontroller,

                    appContext: context,
                  ),
                  const SizedBox(height: 10),

                  const SizedBox(height: 20),
                  FilledButton(
                    onPressed: _onTapverifyButton,
                    child: Text('verify'),
                  ),
                  const SizedBox(height: 36),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                        text: "Already have an account? ",
                        children: [
                          TextSpan(
                            text: "Login",
                            style: TextStyle(color: Colors.green),
                            recognizer: TapGestureRecognizer()
                              ..onTap = _onTapSignUpButton,
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

  void _onTapSignUpButton() {
    // Navigate to the Sign Up screen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPasswordScreen(),
      ), // Replace with actual SignUpScreen
      (predicate) => false,
    );
  }

  void _onTapverifyButton() {
    // Navigate to the Sign Up screen
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => ResetPasswordScreen(),
      ), // Replace with actual SignUpScreen
      (predicate) => false,
    );
  }

  @override
  void dispose() {
    _OTOcontroller.dispose();
    super.dispose();
  }
}
