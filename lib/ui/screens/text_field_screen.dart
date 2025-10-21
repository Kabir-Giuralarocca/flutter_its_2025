import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextFieldScreen')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          spacing: 24,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Label',
                hintText: 'Hint',
                helperText: 'Helper',
                counterText: 'Counter',
                icon: Icon(Icons.person),
                iconColor: Colors.amber,
                prefixIcon: Icon(Icons.star),
                prefixIconColor: Colors.green,
                suffixIcon: Icon(Icons.check),
                suffixIconColor: Colors.red,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: UnderlineInputBorder(),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your password',
                prefixIcon: const Icon(Icons.lock),
                contentPadding: const EdgeInsets.all(32),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 6),
                ),
                suffix: IconButton(
                  onPressed: () => setState(() => _obscureText = !_obscureText),
                  icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                ),
              ),
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              obscureText: _obscureText,
              obscuringCharacter: '*',
            ),
          ],
        ),
      ),
    );
  }
}
