import 'package:flutter/material.dart';
import 'package:test_app/widgets/app_bar.dart';
import 'package:test_app/widgets/bottom_navbar.dart';
import 'package:test_app/widgets/date_picker_widget.dart';
import 'package:test_app/widgets/time_tabs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const AppBarWidget(),
        bottomNavigationBar: _bottomNavbar(),
        body: _bodyContent());
  }

  Widget _bottomNavbar() {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Colors.black,
            spreadRadius: 10,
            blurRadius: 20,
            offset: Offset(0, 22))
      ]),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 13.0),
      child: const ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        child: BottomNavbar(),
      ),
    );
  }

  Widget _bodyContent() {
    return Container(
      padding: const EdgeInsets.only(left: 14.0, right: 14.0, top: 14.0),
      child: const SingleChildScrollView(
          child: Column(
        children: [DatePickerWidget(), SizedBox(height: 15.0), TimeTabs()],
      )),
    );
  }
}
