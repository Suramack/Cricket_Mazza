import 'package:cricket_mazza/Live_Line/components/style.dart';
import 'package:cricket_mazza/Live_Line/live/live_match_score.dart';
import 'package:flutter/material.dart';

class LiveMatch extends StatefulWidget {
  const LiveMatch({Key? key}) : super(key: key);

  @override
  _LiveMatchState createState() => _LiveMatchState();
}

class _LiveMatchState extends State<LiveMatch>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  List<Tab> tabs = const [
    Tab(
      child: SizedBox(width: 100, child: Center(child: Text('Live'))),
    ),
    Tab(
      child: SizedBox(width: 150, child: Center(child: Text('Score Card'))),
    ),
    Tab(
      child: SizedBox(width: 100, child: Center(child: Text('Points'))),
    ),
    Tab(
      child: SizedBox(width: 100, child: Center(child: Text('Info'))),
    ),
    Tab(
      child: SizedBox(width: 100, child: Center(child: Text('Ball'))),
    ),
    Tab(
      child: SizedBox(width: 100, child: Center(child: Text('Bat'))),
    ),
  ];
  @override
  void initState() {
    tabController =
        TabController(length: tabs.length, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TabBar(
          isScrollable: true,
          unselectedLabelColor: Colors.grey.shade400,
          labelColor: Colors.blue.shade600,
          labelStyle: tabBarLabelStyel(),
          controller: tabController,
          labelPadding: EdgeInsets.only(top: 10),
          tabs: tabs,
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            LiveMatchScore(),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
            Text('data'),
          ],
        ));
  }
}
