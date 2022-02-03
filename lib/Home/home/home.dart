import 'package:cricket_mazza/Home/featured_videos/featured_videos.dart';
import 'package:cricket_mazza/Home/recent_matches/recent_matches.dart';
import 'package:cricket_mazza/Home/top_stories/top_stories.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        RecentMatches(),
        TopStories(),
        FeaturedVideos(),
      ],
    );
  }
}
