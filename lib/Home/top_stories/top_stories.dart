import 'package:cricket_mazza/Home/components/method.dart';
import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Home/top_stories/style.dart';
import 'package:flutter/material.dart';

class TopStories extends StatefulWidget {
  const TopStories({Key? key}) : super(key: key);

  @override
  _TopStoriesState createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  ListOfIplTeam listOfIplTeam = ListOfIplTeam();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Top Stories',
                style: topStoriesTextStyle,
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'View More',
                  style: viewMoreButtonTitleStyle,
                ),
              )
            ],
          ),
          SizedBox(
            width: screenSize.width,
            height: 200,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        bottomSheet(context, 1);
                      },
                      child: Image.asset(
                        'images/ipl_top_stories.png',
                        fit: BoxFit.fill,
                        width: screenSize.width,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    width: screenSize.width,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(
                        colors: [
                          Colors.black,
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Text(
                    listOfIplTeam.denoted[0] +
                        ' beat ' +
                        listOfIplTeam.denoted[1] +
                        ' in the IPL 2021',
                    style: wonTitleStyle,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
