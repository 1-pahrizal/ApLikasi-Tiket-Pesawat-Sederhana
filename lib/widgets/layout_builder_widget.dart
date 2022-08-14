import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppLayoutBuiderWidget extends StatelessWidget {
  final bool? iscolor;
  final int sections;
  final double width;
  const AppLayoutBuiderWidget(
      {Key? key, required this.iscolor, required this.sections, this.width = 3})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        print('The width is ${constraints.constrainWidth()}');
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
            (constraints.constrainWidth() / sections).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: iscolor == null
                          ? Colors.white
                          : Colors.grey.shade300)),
            ),
          ),
        );
      },
    );
  }
}
