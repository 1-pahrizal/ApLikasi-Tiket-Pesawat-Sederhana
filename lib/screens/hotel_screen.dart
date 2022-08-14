import 'dart:ffi';

import 'package:aplikasi_tiketpesawat/utils/app_layout.dart';
import 'package:aplikasi_tiketpesawat/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('HOtel Price is ${hotel['harga']}');
    final Size = AppLayout.getSize(context);
    return Container(
      width: Size.width * 0.6,
      height: 350,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
          color: Styles.primaryColor,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              blurRadius: 20,
              spreadRadius: 1,
            )
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Styles.primaryColor,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/${hotel['image']}'),
            ),
          ),
        ),
        const Gap(18),
        Text(
          hotel['Place'],
          style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
        ),
        const Gap(3),
        Text(
          hotel['Destinasi'],
          style: Styles.headLineStyle3.copyWith(color: Colors.white),
        ),
        const Gap(3),
        Text(
          '\$${hotel['harga']}/Semalam',
          style: Styles.headLineStyle.copyWith(color: Styles.kakiColor),
        ),
      ]),
    );
  }
}
