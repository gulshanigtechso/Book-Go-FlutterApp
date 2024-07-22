import 'package:flutter/material.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DatePicker(
      DateTime.now(),
      height: 85.0,
      width: 60.0,
      initialSelectedDate: DateTime.now(),
      selectionColor: const Color(0xfffad70b),
      selectedTextColor: Colors.black,
      dateTextStyle: const TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black54,
        fontFamily: 'DINNextStencilRust',
      ),
    );
  }
}
