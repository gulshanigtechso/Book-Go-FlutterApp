import 'package:flutter/material.dart';

class TimeButton extends StatelessWidget {
  const TimeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero)),
      child: const Text("7:00 am"),
    );
  }
}
