import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class TextFieldScreen extends StatefulWidget {
  const TextFieldScreen({super.key});

  @override
  State<TextFieldScreen> createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  bool _obscureText = true;
  final TextEditingController _dateController = TextEditingController(text: '01/01/2025');
  final DateFormat _formatter = DateFormat.yMd();

  void _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = _formatter.format(picked);
      });
    }
  }

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
            TextField(
              keyboardType: TextInputType.datetime,
              controller: _dateController,
              decoration: InputDecoration(
                labelText: 'Date',
                hintText: 'DD/MM/YYYY',
                filled: true,
                fillColor: Colors.blueGrey.shade100,
                contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(32), gapPadding: 2),
                suffixIcon: IconButton(
                  onPressed: _selectDate,
                  icon: const Icon(Icons.calendar_today),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}