import 'package:flutter/material.dart';
import 'package:test_app/widgets/booking_box.dart';

class TimeTabs extends StatefulWidget {
  const TimeTabs({super.key});

  @override
  _TimeTabsState createState() => _TimeTabsState();
}

class _TimeTabsState extends State<TimeTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // TimeTabs(),
        Container(
          clipBehavior: Clip.hardEdge,
          margin: const EdgeInsets.only(bottom: 20.0),
          padding: const EdgeInsets.all(5.3),
          decoration: BoxDecoration(
            color: const Color(0xfff2f2f2),
            borderRadius: BorderRadius.circular(20.0),
          ),
          height: 42.0,
          child: TabBar(
            controller: _tabController,
            labelColor: Colors.black,
            dividerHeight: 0.0,
            indicator: BoxDecoration(
                color: const Color(0xfffad70b),
                borderRadius: BorderRadius.circular(20.0)),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: const [
              Tab(text: "60 min"),
              Tab(text: "90 min"),
              Tab(text: "120 min"),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              _bookingBox(),
              _bookingBox(),
              _bookingBox(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _bookingBox() {
    return const Column(
      children: [
        BookingBox(),
        SizedBox(
          height: 18.0,
        ),
        BookingBox()
      ],
    );
  }
}
