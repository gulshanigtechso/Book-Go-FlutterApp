import 'package:flutter/material.dart';

class CourtBook extends StatelessWidget {
  const CourtBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [_title(), _bookButton()],
    );
  }

  Widget _title() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Court 1",
            style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500)),
        Text("  Sat 17 Dec | 8:00 - 9:30 am")
      ],
    );
  }

  Widget _bookButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
        onPressed: () {},
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("Book"),
            SizedBox(width: 3.0),
            Icon(
              Icons.arrow_forward,
              size: 18.0,
            )
          ],
        ));
  }
}
