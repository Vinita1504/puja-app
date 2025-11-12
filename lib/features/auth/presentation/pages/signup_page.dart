import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../bloc/auth_bloc.dart';
import '../bloc/auth_event.dart';
import '../bloc/auth_state.dart';
import '../../../../core/routing/app_routes.dart';
import '../widgets/login_logo_widget.dart';
import '../widgets/signup_widgets/signup_header_widget.dart';
import '../widgets/signup_widgets/name_input_field.dart';
import '../widgets/signup_widgets/email_input_field.dart';
import '../widgets/signup_widgets/mobile_number_input_field.dart';
import '../widgets/signup_widgets/signup_password_input_field.dart';
import '../widgets/signup_widgets/signup_button_widget.dart';
import '../widgets/signup_widgets/signin_link_widget.dart';

/// Sign up page
///
/// Allows users to create a new account with name, email, mobile number,
/// and password. Follows Clean Architecture pattern with BLoC state management.
class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _mobileNumberController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      context.read<AuthBloc>().add(
        AuthEvent.signUpRequested(
          email: _emailController.text.trim(),
          password: _passwordController.text,
          name: _nameController.text.trim().isNotEmpty
              ? _nameController.text.trim()
              : null,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            context.go(AppRoutes.login);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
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
                    const LoginLogoWidget(),
                    const SignUpHeaderWidget(),
                    SizedBox(height: 20.h),
                    NameInputField(controller: _nameController),
                    SizedBox(height: 16.h),
                    EmailInputField(controller: _emailController),
                    SizedBox(height: 16.h),
                    MobileNumberInputField(controller: _mobileNumberController),
                    SizedBox(height: 16.h),
                    SignUpPasswordInputField(controller: _passwordController),
                    SizedBox(height: 24.h),
                    Center(
                      child: SignUpButtonWidget(
                        onPressed: _submit,
                        isLoading: isLoading,
                      ),
                    ),
                    SizedBox(height: 24.h),
                    const SignInLinkWidget(),
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
