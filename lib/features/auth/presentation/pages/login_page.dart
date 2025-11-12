import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../../../../core/routing/app_routes.dart';
import '../widgets/login_logo_widget.dart';
import '../widgets/welcome_header_widget.dart';
import '../widgets/email_phone_input_field.dart';
import '../widgets/password_input_field.dart';
import '../widgets/login_button_widget.dart';
import '../widgets/google_sign_in_button.dart';
import '../widgets/sign_up_link_widget.dart';
import '../widgets/forgot_password_link_widget.dart';

/// Login page demonstrating the architecture
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.signInRequested(
          email: _emailController.text.trim(),
          password: _passwordController.text,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.when(
            initial: () {},
            loading: () {},
            authenticated: (user) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Welcome ${user.name ?? user.email}!'),
                  backgroundColor: Colors.green,
                ),
              );
              // Navigate to home using GoRouter
              context.go(AppRoutes.home);
            },
            unauthenticated: () {},
            error: (message) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message), backgroundColor: Colors.red),
              );
            },
          );
        },
        builder: (context, state) {
          final isLoading = state.maybeWhen(
            loading: () => true,
            orElse: () => false,
          );

          return SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 40.h),
                    const LoginLogoWidget(),
                    const WelcomeHeaderWidget(),
                    SizedBox(height: 32.h),
                    EmailPhoneInputField(controller: _emailController),
                    SizedBox(height: 16.h),
                    PasswordInputField(controller: _passwordController),
                    SizedBox(height: 28.h),
                    Center(
                      child: LoginButtonWidget(
                        onPressed: _submit,
                        isLoading: isLoading,
                      ),
                    ),
                    SizedBox(height: 16.h),
                    GoogleSignInButton(
                      onPressed: isLoading
                          ? null
                          : () {
                              // Handle Google sign in
                            },
                    ),
                    SizedBox(height: 24.h),
                    const SignUpLinkWidget(),
                    SizedBox(height: 16.h),
                    const ForgotPasswordLinkWidget(),
                    SizedBox(height: 32.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
