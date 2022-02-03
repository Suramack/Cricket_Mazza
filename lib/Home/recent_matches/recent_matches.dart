import 'package:cricket_mazza/Home/components/method.dart';
import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Home/recent_matches/style.dart';
import 'package:flutter/material.dart';

class RecentMatches extends StatefulWidget {
  const RecentMatches({Key? key}) : super(key: key);

  @override
  _RecentMatchesState createState() => _RecentMatchesState();
}

class _RecentMatchesState extends State<RecentMatches> {
  ListOfTeams listOfTeams = ListOfTeams();
  NoOfMatches noOfMatches = NoOfMatches();
  TypesOfMatch typesOfMatch = TypesOfMatch();
  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            'Recent Matches',
            style: recentMatchTextStyle(),
          ),
        ),
        SizedBox(
          width: screenSize.width,
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 3,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () {
                  bottomSheet(context, 0);
                },
                child: Container(
                  width: 380,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Colors.grey.shade300,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          noOfMatches.matchNumber[2] +
                              ' Match, ' +
                              typesOfMatch.typesOfMatches[1] +
                              ' - ' +
                              listOfTeams.listOfTeams[index] +
                              ' tour of ' +
                              listOfTeams.listOfTeams[index + 1] +
                              ', ' +
                              date.year.toString(),
                          style: noOfMatchTextStyle(),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                              'icons/flags/png/' +
                                                  listOfTeams.denoted[index] +
                                                  '.png',
                                              package: 'country_icons',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '150/10',
                                            style: scoreAndWicketTextStyle,
                                          ),
                                          Text(
                                            '20.4 Ov.',
                                            style: overTextStyle,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Text(
                                    listOfTeams.listOfTeams[index],
                                    style: countryTextStyle,
                                  ),
                                ],
                              ),
                            ),
                            //VS TAG
                            SizedBox(
                              height: 55,
                              child: Image.asset(
                                'images/vs_logo.png',
                                color: Colors.blue.shade600,
                              ),
                            ),
                            //right side of card
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '157/7',
                                            style: scoreAndWicketTextStyle,
                                          ),
                                          Text(
                                            '19.3 Ov.',
                                            style: overTextStyle,
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Container(
                                          width: 70,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            child: Image.asset(
                                              'icons/flags/png/' +
                                                  listOfTeams
                                                      .denoted[index + 1] +
                                                  '.png',
                                              package: 'country_icons',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    listOfTeams.listOfTeams[index + 1],
                                    style: countryTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Text(
                          listOfTeams.denoted[index + 1].toUpperCase() +
                              ' Won by 3 Wickets(DLS)',
                          style: wonTextStyle,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
