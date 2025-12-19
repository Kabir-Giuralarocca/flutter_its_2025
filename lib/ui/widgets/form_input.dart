import 'package:flutter/material.dart';
import 'package:form_validation/form_validation.dart';

class FormInput extends StatelessWidget {
  const FormInput({
    required this.label,
    required this.hint,
    required this.icon,
    required this.controller,
    required this.validators,
    super.key,
  });

  final String label;
  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final List<ValueValidator> validators;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      validator: (value) {
        final validator = Validator(validators: validators);
        return validator.validate(label: label, value: value);
      },
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: label,
        hintText: hint,
        prefixIcon: Icon(icon),
        filled: true,
      ),
    );
  }
}
