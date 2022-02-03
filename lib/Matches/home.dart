import 'package:flutter/material.dart';

class Matches extends StatefulWidget {
  const Matches({Key? key}) : super(key: key);

  @override
  _MatchesState createState() => _MatchesState();
}

class _MatchesState extends State<Matches> {
  DefaultTabController tabController = DefaultTabController(
    child: Text('data'),
    length: 2,
  );
  @override
  Widget build(BuildContext context) {
    return TabBar(
      tabs: [
        Tab(
          child: Text('data'),
        ),
        Tab(
          child: Text('d'),
        )
      ],
    );
  }
}
