import 'package:flutter/material.dart';
import 'package:new_flutter_mobile_app/constants.dart';

class UnderPart extends StatelessWidget {
  const UnderPart(
      {Key? key,
        required this.title,
        required this.navigatorText,
        required this.onTap})
      : super(key: key);
  final String title;
  final String navigatorText;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontFamily: 'IndieFlower',
              fontSize: 13,
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
        const SizedBox(
          width: 20,
        ),
        InkWell(
          onTap: () {
            onTap();
          },
          child: Text(
            navigatorText,
            style: const TextStyle(
                color: Colors.pink,
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontFamily: 'IndieFlower'),
          ),
        )
      ],
    );
  }
}