import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:scholarship_africa/util/spacer.dart';

class TitleHeader extends StatelessWidget {
  const TitleHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Explore',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        S.w(10),
        Row(
          children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                color: Colors.black,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.white,
                  ),
                )),
            S.w(5),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset('assets/img/filter.svg'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
