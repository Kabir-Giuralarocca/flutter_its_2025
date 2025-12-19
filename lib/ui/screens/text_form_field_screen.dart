import 'package:flutter/material.dart';
import 'package:flutter_its_2025/ui/widgets/form_input.dart';
import 'package:form_validation/form_validation.dart';

class TextFormFieldScreen extends StatelessWidget {
  const TextFormFieldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = .new();
    final TextEditingController usernameController = .new();
    final GlobalKey<FormState> formKey = .new();
    return Scaffold(
      appBar: AppBar(title: const Text('TextFormFieldScreen')),
      body: SingleChildScrollView(
        padding: const .all(24),
        child: Form(
          key: formKey,
          child: Column(
            spacing: 24,
            children: [
              FormInput(
                label: 'Email',
                hint: 'Enter your email',
                icon: Icons.email,
                controller: emailController,
                validators: const [RequiredValidator(), EmailValidator()],
              ),
              FormInput(
                label: 'Username',
                hint: 'Enter your username',
                icon: Icons.person,
                controller: usernameController,
                validators: const [RequiredValidator()],
              ),
              FilledButton(
                onPressed: () {
                  if (formKey.currentState?.validate() ?? false) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Column(
                      children: [
                        Text(emailController.text),
                        Text(usernameController.text),
                      ],
                    )));
                    formKey.currentState?.reset();
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
