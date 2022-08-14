import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_style.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bixText;
  final String smallText;
  const AppDoubleTextWidget({
    Key? key,
    required this.bixText,
    required this.smallText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bixText,
          style: Styles.headLineStyle2,
        ),
        InkWell(
          onTap: () {
            print("Kamu Punya tipe");
          },
          child: Text(
            smallText,
            style: Styles.textStyle.copyWith(color: Styles.primaryColor),
          ),
        ),
      ],
    );
  }
}
