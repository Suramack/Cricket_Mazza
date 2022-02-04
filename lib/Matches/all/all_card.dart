import 'package:cricket_mazza/Home/components/method.dart';
import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Home/components/time_table.dart';
import 'package:cricket_mazza/Matches/all/style.dart';
import 'package:flutter/material.dart';

class MatchCards extends StatefulWidget {
  const MatchCards({Key? key}) : super(key: key);

  @override
  _MatchCardsState createState() => _MatchCardsState();
}

class _MatchCardsState extends State<MatchCards> {
  ListOfIplTeam listOfIplTeam = ListOfIplTeam();
  ListOfTeams listOfTeams = ListOfTeams();
  TimeTable timeTable = TimeTable();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Container(
          height: 180,
          width: screenSize.width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Colors.black12,
              )
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'images/all_match_background.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 0,
                top: 0,
                right: 0,
                bottom: 0,
                child: InkWell(
                  onTap: () {
                    bottomSheet(context, 1);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Type of match title
                      index == 1
                          ? Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'ODI',
                                style: matchTypeTextStyle(),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(
                                'IPL T20',
                                style: matchTypeTextStyle(),
                              ),
                            ),
                      //Matchers logo ROW
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: index == 1
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'icons/flags/png/' +
                                            listOfTeams.denoted[index] +
                                            '.png',
                                        package: 'country_icons',
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Image.asset(
                                      listOfIplTeam.iplTeamLogoList[index],
                                    ),
                            ),
                            SizedBox(
                              height: 60,
                              child: Image.asset(
                                'images/vs_logo.png',
                                color: Colors.blue.shade400,
                              ),
                            ),
                            SizedBox(
                              height: 100,
                              width: 100,
                              child: index == 1
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(100),
                                      child: Image.asset(
                                        'icons/flags/png/' +
                                            listOfTeams.denoted[index + 1] +
                                            '.png',
                                        package: 'country_icons',
                                        fit: BoxFit.cover,
                                      ),
                                    )
                                  : Image.asset(
                                      listOfIplTeam.iplTeamLogoList[index + 1],
                                    ),
                            ),
                          ],
                        ),
                      ),
                      //Time and date of match
                      Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(20)),
                          color: Colors.blue.shade700,
                        ),
                        child: Center(
                          child: Text(
                            timeTable.matchTime[0].toString().substring(0, 11) +
                                ' | ' +
                                timeTable.matchTime[0]
                                    .toString()
                                    .substring(12, 16),
                            style: timeAndDateTextStyle(),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
