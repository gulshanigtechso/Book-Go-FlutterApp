import 'package:flutter/material.dart';
import 'package:test_app/widgets/court_book.dart';
import 'package:test_app/widgets/time_button.dart';

class BookingBox extends StatelessWidget {
  const BookingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color(0xfff2f2f2)),
      child: Column(
        children: [
          _topText(),
          const SizedBox(height: 10.0),
          _timeButton(),
          const SizedBox(height: 8.0),
          _courtBook()
          // const CourtBook(),
          // const Divider()
        ],
      ),
    );
  }

  Widget _topText() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Berlin",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
              fontFamily: 'DINNextStencilRust'),
        ),
        Text("2.1 km")
      ],
    );
  }

  Widget _timeButton() {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Wrap(
        alignment: WrapAlignment.start,
        runAlignment: WrapAlignment.start,
        spacing: 8.0,
        runSpacing: 0.0,
        children: List.generate(11, (int index) => const TimeButton()),
      ),
    );
  }

  Widget _courtBook() {
    return const Column(
      children: [
        CourtBook(),
        Divider(thickness: 0.4),
        CourtBook(),
        Divider(thickness: 0.4),
        CourtBook()
      ],
    );
  }
}
