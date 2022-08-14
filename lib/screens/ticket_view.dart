import 'package:aplikasi_tiketpesawat/utils/app_layout.dart';
import 'package:aplikasi_tiketpesawat/utils/app_style.dart';
import 'package:aplikasi_tiketpesawat/widgets/columns_layout.dart';
import 'package:aplikasi_tiketpesawat/widgets/layout_builder_widget.dart';
import 'package:aplikasi_tiketpesawat/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class RicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? iscolor;
  const RicketView({Key? key, required this.ticket, required this.iscolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid == true ? 166 : 165),
      child: Container(
        padding: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Menampikan Biru Pada Tiket Pesawat Container
            Container(
              decoration: BoxDecoration(
                color: iscolor == null ? Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
              ),
              padding: EdgeInsets.all(AppLayout.getHeight(16)),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: iscolor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      ),
                      Expanded(child: Container()),
                      ThickContainer(
                        isColor: true,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                                height: AppLayout.getHeight(24),
                                child: const AppLayoutBuiderWidget(
                                  iscolor: null,
                                  sections: 6,
                                )),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: iscolor == null
                                      ? Colors.white
                                      : Color(0xff8accf7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const ThickContainer(
                        isColor: true,
                      ),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: iscolor == null
                            ? Styles.headLineStyle3
                                .copyWith(color: Colors.white)
                            : Styles.headLineStyle3,
                      )
                    ],
                  ),
                  const Gap(3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: SizedBox(
                          width: 100,
                          child: Text(ticket['from']['name'],
                              style: iscolor == null
                                  ? Styles.headLineStyle4
                                      .copyWith(color: Colors.white)
                                  : Styles.headLineStyle4),
                        ),
                      ),
                      Text(ticket['Jam_terbang'],
                          style: iscolor == null
                              ? Styles.headLineStyle4
                                  .copyWith(color: Colors.white)
                              : Styles.headLineStyle4),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],
                            textAlign: TextAlign.end,
                            style: iscolor == null
                                ? Styles.headLineStyle4
                                    .copyWith(color: Colors.white)
                                : Styles.headLineStyle4),
                      ),
                    ],
                  )
                ],
              ),
            )
            //Akhir Kode Biru
            //*
            //Menampikan Orange Kontainer
            ,
            Container(
              color: iscolor == null
                  ? Styles.orangeColor
                  : Colors.white, //const Color(0xfff37b67),
              child: Row(
                children: [
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: iscolor == null
                            ? Colors.grey.shade300
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
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
                      ),
                    ),
                  ),
                  SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: iscolor == null
                              ? Colors.grey.shade300
                              : Colors.white,
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20)),
                        ),
                      ))
                ],
              ),
            ),

            //Menampikan Orange Pada Tiket Pesawat Container

            Container(
              decoration: BoxDecoration(
                  color: iscolor == null ? Styles.orangeColor : Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(iscolor == null ? 21 : 0),
                      bottomRight: Radius.circular(iscolor == null ? 21 : 0))),
              padding: const EdgeInsets.all(11),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(
                        firstText: ticket['Tanggal'],
                        secondText: "Date",
                        alignment: CrossAxisAlignment.start,
                        isColor: iscolor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['dearture_time'],
                        secondText: "Jam Terbang",
                        alignment: CrossAxisAlignment.center,
                        isColor: iscolor,
                      ),
                      AppColumnLayout(
                        firstText: ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.end,
                        isColor: iscolor,
                      ),
                    ],
                  ),
                  const Gap(3),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
