import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Live_Line/live/batsman_table.dart';
import 'package:cricket_mazza/Live_Line/live/components.dart/style.dart';
import 'package:flutter/material.dart';

class LiveMatchScore extends StatefulWidget {
  const LiveMatchScore({Key? key}) : super(key: key);

  @override
  _LiveMatchScoreState createState() => _LiveMatchScoreState();
}

class _LiveMatchScoreState extends State<LiveMatchScore> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    ListOfTeams listOfTeams = ListOfTeams();
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: Column(
        children: [
// Live Score Card
          Container(
            width: screenSize.width,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.black12,
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
//Title and live
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3rd Match, ODI',
                        style: matchTypetextStyle(),
                      ),
                      Container(
                        width: 100,
                        height: 35,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 30,
                              child: Image.asset(
                                'images/live_icond.png',
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'Live',
                              style: liveTextStyle(),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
//Team logo and points
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
//Left Team Logo
                      Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'icons/flags/png/' +
                                    listOfTeams.denoted[0] +
                                    '.png',
                                package: 'country_icons',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              listOfTeams.listOfTeams[0],
                              style: countryNameTextStyle(),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '150/10',
                                style: scoreAndWicketTextStyle(),
                              ),
                              Text(
                                '(20 Over)',
                                style: noOfOverTextStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
//VS
                      SizedBox(
                        height: 50,
                        child: Image.asset(
                          'images/vs_logo.png',
                          color: Colors.blue.shade600,
                        ),
                      ),
//Right team Logo
                      Column(
                        children: [
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                'icons/flags/png/' +
                                    listOfTeams.denoted[1] +
                                    '.png',
                                package: 'country_icons',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              listOfTeams.listOfTeams[1],
                              style: countryNameTextStyle(),
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                '72/2',
                                style: scoreAndWicketTextStyle(),
                              ),
                              Text(
                                '(10.5 Over)',
                                style: noOfOverTextStyle(),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
//CRR, Over and Extra
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            'CRR : ',
                            style: crrTextStyle(),
                          ),
                          Text(
                            '3.39',
                            style: crrDataTextStyle(),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Over : ',
                            style: overBottomTxetStyle(),
                          ),
                          SizedBox(
                            width: 100,
                            height: 20,
                            child: ListView.builder(
                              itemCount: 6,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Container(
                                margin: EdgeInsets.only(left: 4),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: index == 2
                                      ? Colors.red
                                      : Colors.blue.shade600,
                                ),
                                child: Center(
                                  child: Text(
                                    index == 2 ? 'W' : index.toString(),
                                    style: scoreofEachBallTextStyle(),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Extra : ',
                            style: extraTextStyle(),
                          ),
                          Text(
                            '5',
                            style: extraDataTextStyle(),
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
//Batsman Score Table
          BatsmanTable(),
        ],
      ),
    );
  }
}
