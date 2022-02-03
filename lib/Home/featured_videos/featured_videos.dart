import 'package:cricket_mazza/Home/components/team_data.dart';
import 'package:cricket_mazza/Home/components/method.dart';
import 'package:cricket_mazza/Home/featured_videos/style.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FeaturedVideos extends StatefulWidget {
  const FeaturedVideos({Key? key}) : super(key: key);

  @override
  _FeaturedVideosState createState() => _FeaturedVideosState();
}

class _FeaturedVideosState extends State<FeaturedVideos> {
  FeaturedVideoDetails featuredVideoDetails = FeaturedVideoDetails();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
              top: 15,
              right: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Videos',
                  style: featuredVideosTextStyle,
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
          ),
          Row(
            children: [
              SizedBox(
                width: screenSize.width,
                height: 220,
                child: ListView.builder(
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(1),
                    child: TextButton(
                      onPressed: () {
                        bottomSheet(context, 2);
                      },
                      child: Container(
                        width: 180,
                        height: 220,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 3,
                                color: Colors.grey.shade500,
                              ),
                            ]),
                        child: Column(
                          children: [
                            //stack
                            SizedBox(
                              width: 180,
                              height: 110,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(10),
                                      ),
                                      child: Image.asset(
                                        featuredVideoDetails.thumbnail[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    child: Center(
                                      child: Container(
                                        width: 180,
                                        height: 110,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              const BorderRadius.vertical(
                                                  top: Radius.circular(10)),
                                          color: Colors.black.withOpacity(0.5),
                                        ),
                                        child: const Icon(
                                          FontAwesomeIcons.playCircle,
                                          color: Colors.white,
                                          size: 30,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),

                            //details
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                featuredVideoDetails.featuredVideoTitle[index],
                                style: featuredVideoTitleStyle,
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Text(
                                featuredVideoDetails
                                    .featuredVideoDescription[index],
                                style: featuredVideoDecsriptionStyle,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
