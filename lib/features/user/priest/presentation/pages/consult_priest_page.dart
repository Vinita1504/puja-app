import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/extensions/context_extension.dart';
import '../bloc/consult_priest_calendar/consult_priest_calendar_bloc.dart';
import '../widgets/consult_priest_calendar_widget.dart';
import '../widgets/consult_priest_form_widgets.dart';
import '../widgets/consult_priest_submit_button_widget.dart';

/// Consult priest page
///
/// Displays a form for booking a priest consultation with calendar date picker,
/// name, phone, email, and comments fields.
class ConsultPriestPage extends StatefulWidget {
  const ConsultPriestPage({super.key});

  @override
  State<ConsultPriestPage> createState() => _ConsultPriestPageState();
}

class _ConsultPriestPageState extends State<ConsultPriestPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _commentsController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Initialize calendar when page loads
    context.read<ConsultPriestCalendarBloc>().add(
          const ConsultPriestCalendarEvent.calendarInitialized(),
        );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _commentsController.dispose();
    super.dispose();
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Handle form submission
      // For now, just show a snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Form submitted successfully'),
        ),
      );
    }
  }

  String? _validateName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: context.colorScheme.onSurface,
          ),
          onPressed: () => context.pop(),
        ),
        title: Text(
          'Puja Karo',
          style: context.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.colorScheme.onSurface,
          ),
        ),
        centerTitle: true,
        backgroundColor: context.colorScheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: context.colorScheme.onSurface,
            ),
            onPressed: () {
              // Navigate to cart - using default values for now
              // TODO: Replace with actual cart state management when available
              context.push('/pujaCart/default/default');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Calendar widget
              const ConsultPriestCalendarWidget(),
              SizedBox(height: 24.h),
              // Name input
              ConsultPriestNameInputWidget(
                controller: _nameController,
                validator: _validateName,
              ),
              SizedBox(height: 16.h),
              // Phone input
              ConsultPriestPhoneInputWidget(
                controller: _phoneController,
              ),
              SizedBox(height: 16.h),
              // Email input
              ConsultPriestEmailInputWidget(
                controller: _emailController,
              ),
              SizedBox(height: 16.h),
              // Comments input
              ConsultPriestCommentsInputWidget(
                controller: _commentsController,
              ),
              SizedBox(height: 24.h),
              // Submit button
              ConsultPriestSubmitButtonWidget(
                onPressed: _onSubmit,
              ),
              SizedBox(height: 32.h),
            ],
          ),
        ),
      ),
    );
  }
}

