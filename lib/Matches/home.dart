import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Matches/all/all_card.dart';
import 'package:cricket_mazza/Matches/components/style.dart';
import 'package:flutter/material.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<Tab> tabs = const [
    Tab(
      child: SizedBox(width: 60, child: Center(child: Text('All'))),
    ),
    Tab(
      child: SizedBox(width: 60, child: Center(child: Text('ODI'))),
    ),
    Tab(
      child: SizedBox(width: 60, child: Center(child: Text('T20'))),
    ),
    Tab(
      child: SizedBox(width: 60, child: Center(child: Text('Test'))),
    ),
    Tab(
      child: SizedBox(width: 60, child: Center(child: Text('WC'))),
    ),
  ];
  @override
  void initState() {
    tabController = TabController(
      length: tabs.length,
      vsync: this,
      initialIndex: 0,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        controller: tabController,
        isScrollable: true,
        labelColor: Colors.blue.shade600,
        unselectedLabelColor: Colors.grey.shade400,
        labelStyle: tabbarLabelStyle(),
        padding: const EdgeInsets.only(top: 20),
        indicatorSize: TabBarIndicatorSize.tab,
        tabs: tabs,
      ),
      body: TabBarView(
        controller: tabController,
        children: const [
          // Text('data'),
          MatchCards(),
          Center(child: Text('Loading ODI Data')),
          Center(child: Text('Loading T20 Data')),
          Center(child: Text('Loading Test Data')),
          Center(child: Text('Loading WC Data')),
        ],
      ),
    );
  }
}
