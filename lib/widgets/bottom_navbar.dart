import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      height: 70.0,
      backgroundColor: const Color(0xfff2f2f2),
      destinations: [_button1(), _button2(), _button3()],
    );
  }

  Widget _button1() {
    return TextButton(
      onPressed: () {},
      child: Text("Play & \n  Match".toUpperCase()),
    );
  }

  Widget _button2() {
    const TextStyle bookCourtTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 19.0,
      color: Colors.black,
      fontFamily: 'DINNextStencilRust',
      height: 0.9,
    );

    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xfffad70b),
          padding: const EdgeInsets.only(top: 7.0, bottom: 3.0)),
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: "Book \n".toUpperCase(), style: bookCourtTextStyle),
        TextSpan(text: "  Court".toUpperCase(), style: bookCourtTextStyle)
      ])),
    );
  }

  Widget _button3() {
    return TextButton(
        onPressed: () {},
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 12.0,
                backgroundImage: NetworkImage(
                    'https://picsum.photos/200'), // Replace with your image URL
                backgroundColor:
                    Colors.transparent, // Make background transparent
              ),
              const SizedBox(width: 6.0), // Add spacing between image and text
              Text("Profile".toUpperCase()),
            ],
          ),
        ));
    // return TextButton(onPressed: () {}, child: Text("Profile".toUpperCase()));
  }
}
