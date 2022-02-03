import 'package:cricket_mazza/Home/components/title.dart';
import 'package:cricket_mazza/Home/home/home.dart';
import 'package:cricket_mazza/Home/recent_matches/recent_matches.dart';
import 'package:cricket_mazza/Matches/home.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Titles titles = Titles();
  int bottomNavigationbarActiveIndex = 1;
  List<Widget> bodyContent = const [
    // Text('Home'),
    // RecentMatches(),
    Home(),
    Matches(),
    // Text('Matches'),
    Text('Live'),
    Text('Settings'),
    Text('Profile'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titles.appBarTitle[bottomNavigationbarActiveIndex]),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.search,
              size: 22,
            ),
          )
        ],
      ),
      drawer: const Drawer(),
      body: bodyContent[bottomNavigationbarActiveIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bottomNavigationbarActiveIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (value) {
          setState(() {
            bottomNavigationbarActiveIndex = value;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.home,
            ),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.baseballBall,
            ),
            activeIcon: Icon(
              FontAwesomeIcons.basketballBall,
            ),
            label: 'Matches',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              FontAwesomeIcons.stream,
            ),
            activeIcon: Transform.rotate(
              angle: 180 * 3.14 / 180,
              child: const Icon(
                FontAwesomeIcons.stream,
              ),
            ),
            label: 'Live',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings,
            ),
            activeIcon: Transform.rotate(
              angle: 180,
              child: const Icon(
                Icons.settings,
              ),
            ),
            label: 'Setting',
          ),
          const BottomNavigationBarItem(
            activeIcon: Icon(
              FontAwesomeIcons.userAlt,
            ),
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
