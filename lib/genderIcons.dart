import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GenderIcons extends StatelessWidget {
  GenderIcons(
      {required this.icon_label,
      this.sizedBoxheight,
      this.icon_color,
      this.icon_text_color});

  String icon_label = "male";
  double? sizedBoxheight = 15;
  Color? icon_color = Colors.redAccent;
  Color? icon_text_color = Color(0XFF4E555B);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon_label == "male" ? FontAwesomeIcons.mars : FontAwesomeIcons.venus,
          size: 80,
          color: icon_color,
        ),
        SizedBox(
          height: sizedBoxheight,
        ),
        Text(
          icon_label,
          style: TextStyle(
              fontSize: 18,
              color: icon_text_color,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
