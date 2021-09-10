import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarship_africa/util/constants.dart';
import 'package:scholarship_africa/util/spacer.dart';
import 'package:scholarship_africa/util/swiper.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 50, bottom: 50),
      child: SizedBox(
        // color: Colors.blueAccent,
        height: S.rh(.65, context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: SwiperCard(
                swipeUp: false,
                swipeDown: false,
                orientation: AmassOrientation.top,
                totalNum: 10,
                stackNum: 2,
                swipeEdge: 2.0,
                // swipeEdgeVertical: 10,
                maxWidth: MediaQuery.of(context).size.width * 0.9,
                maxHeight: S.rh(.60, context),
                minWidth: MediaQuery.of(context).size.width * 0.8,
                minHeight: S.rh(.50, context),
                cardBuilder: (context, index) => ScholarshipCard(
                  index: index,
                ),
                cardController: CardController(),
                swipeUpdateCallback:
                    (DragUpdateDetails details, Alignment align) {
                  /// Get swiping card's alignment
                  if (align.x < 0) {
                    //Card is LEFT swiping
                    log('LEFT');
                  } else if (align.x > 0) {
                    //Card is RIGHT swiping
                    log('RIGHT');
                  }
                },
                allowVerticalMovement: false,
                swipeCompleteCallback:
                    (CardSwipeOrientation orientation, int index) {
                  /// Get orientation & index of swiped card!
                  log('message');
                },
              ),
            ),
            S.h(2),
            Text(
              'Swipe',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 10,
                  fontWeight: FontWeight.w700),
            ),
            S.h(5),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(
            //       Icons.keyboard_arrow_left_rounded,
            //       size: 15,
            //       color: Colors.grey.shade500,
            //     ),
            //     Icon(
            //       Icons.keyboard_arrow_right_rounded,
            //       size: 15,
            //       color: Colors.grey.shade500,
            //     )
            //   ],
            // ),
            SvgPicture.asset(
              "assets/img/swipe.svg",
              // size: 25,
              // color: Colors.grey.shade500,
            ),
          ],
        ),
      ),
    );
  }
}

class ScholarshipCard extends StatelessWidget {
  final int? index;
  const ScholarshipCard({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: S.rh(.55, context),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.cyan.shade50.withOpacity(.5),
            blurRadius: 2.0,
            spreadRadius: 3,
            offset: const Offset(3.0, 8.0), // shadow direction: bottom right
          )
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: S.rh(.42, context),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://picsum.photos/800?dd=$index')),
              // color: Colors.amber,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // SingleChildScrollView.
                Positioned(
                  right: 10,
                  top: 10,
                  child: Wrap(
                    children: List.generate(
                      3,
                      (index) => Card(
                          elevation: 0,
                          color: Colors.indigo.shade900.withOpacity(.1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Text("SCIENCE",
                                style: TextStyle(
                                    color: Colors.blueGrey,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w600)),
                          )),
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 30,
                  left: 20,
                  right: 0,
                  child: Text(
                    'University of Cape Town Masters Scholarship.',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -25,
                  // left: 0,
                  right: 20,
                  child: Card(
                    color: Colors.white,
                    elevation: 5,
                    shape: const CircleBorder(),
                    // radius: 25,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        "assets/img/love.svg",
                        // color: Colors.grey.shade500,
                        width: 25,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Scholarship Amount',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  S.h(10),
                  Text(
                    '\$800',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: primaryColor,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
