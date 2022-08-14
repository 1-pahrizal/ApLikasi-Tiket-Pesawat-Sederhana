import 'package:aplikasi_tiketpesawat/utils/app_layout.dart';
import 'package:aplikasi_tiketpesawat/utils/app_style.dart';
import 'package:aplikasi_tiketpesawat/widgets/icon_text_widgets.dart';
import 'package:aplikasi_tiketpesawat/widgets/ticket_tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

import '../widgets/double_text_widgets.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text(
              'Apa yang \nKamu Cari ?',
              style: Styles.headLineStyle
                  .copyWith(fontSize: AppLayout.getWidth(35)),
            ),
            Gap(AppLayout.getHeight(20)),
            AppTicketTabs(firstTab: 'Tikets Pesawat', secondTab: 'Hotels'),
            Gap(AppLayout.getHeight(25)),
            const AppIconText(
                icon: Icons.flight_takeoff_rounded, text: 'Penerbangan'),
            Gap(AppLayout.getHeight(20)),
            const AppIconText(
                icon: Icons.flight_land_rounded, text: 'Penurunan'),
            Gap(AppLayout.getHeight(25)),
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getWidth(18)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(15)),
                  color: Color(0xd91130ce)),
              child: Center(
                child: Text(
                  'Ambil Tiket',
                  style: Styles.textStyle.copyWith(color: Colors.white),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            const AppDoubleTextWidget(
                bixText: 'Penerbangan\nMendatang', smallText: 'Liat Semua'),
            Gap(AppLayout.getHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: AppLayout.getHeight(425),
                  width: size.width * 0.42,
                  padding: EdgeInsets.symmetric(
                      horizontal: AppLayout.getHeight(15),
                      vertical: AppLayout.getWidth(15)),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 1,
                          spreadRadius: 1,
                        )
                      ]),
                  child: Column(
                    children: [
                      Container(
                        height: AppLayout.getHeight(190),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(20)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/da.jpg'))),
                      ),
                      Gap(AppLayout.getHeight(5)),
                      Text(
                        'Diskon 20% Jika Memesan Sekarang. Tunggu Apa lagi Silakan Checkout.',
                        style: Styles.headLineStyle2,
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: AppLayout.getHeight(225),
                          decoration: BoxDecoration(
                            color: Color(0xff3ab8b8),
                            borderRadius:
                                BorderRadius.circular(AppLayout.getHeight(18)),
                          ),
                          padding: EdgeInsets.symmetric(
                              vertical: AppLayout.getHeight(15),
                              horizontal: AppLayout.getHeight(15)),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Discont\nforsurvey",
                                  style: Styles.headLineStyle.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.yellow),
                                ),
                                Gap(AppLayout.getHeight(7)),
                                Text(
                                  "Cepat Ambil Discon Mu Sebelum KeHabisan Dan Juga Msa Tenggang",
                                  style: Styles.headLineStyle2.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white,
                                      fontSize: 18),
                                ),
                              ]),
                        ),
                        Positioned(
                            right: -45,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(AppLayout.getHeight(30)),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    width: 18, color: Color(0xff189999)),
                                color: Colors.transparent,
                              ),
                            ))
                      ],
                    ),
                    Gap(AppLayout.getHeight(15)),
                    Container(
                      width: size.width * 0.44,
                      height: AppLayout.getHeight(210),
                      padding: EdgeInsets.symmetric(
                          horizontal: AppLayout.getWidth(16),
                          vertical: AppLayout.getHeight(16)),
                      decoration: BoxDecoration(
                        color: Color(0xffec6545),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(18)),
                      ),
                      child: Column(children: [
                        Text(
                          'Tetep Senyum',
                          style: Styles.headLineStyle2.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Gap(AppLayout.getHeight(5)),
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                            text: '🥰',
                            style: TextStyle(fontSize: 30),
                          ),
                          TextSpan(
                            text: '😅',
                            style: TextStyle(fontSize: 40),
                          ),
                          TextSpan(
                            text: '🤣',
                            style: TextStyle(fontSize: 30),
                          )
                        ]))
                      ]),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}
