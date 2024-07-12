import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../config.dart';
import '../../../provider/flight_detail_provider.dart';

class FlightDetailWithTimeZone extends StatelessWidget {
  const FlightDetailWithTimeZone({super.key});

  @override
  Widget build(BuildContext context) {
    return  Consumer<FlightDetailProvider>(builder: (context1, value, child) {
        return Stack(
          alignment: Alignment.centerLeft,
          children: [
            Column(children: [
              Row(
                children: [
                  Text("08:35 AM",
                      style: appCss.sfProBold11
                          .textColor(appColor(context).darkText)),
                  const HSpace(Sizes.s25),
                  Text("AMS Amesterdam Airport Schiphol t2",
                      style: appCss.sfProBold11
                          .textColor(appColor(context).darkText))
                ],
              ).paddingSymmetric(horizontal: Sizes.s8, vertical: Sizes.s16),
              Row(
                children: [
                  Row(children: [
                    Text("10 h 35 min\nDirect",
                        style: appCss.sfProMedium9
                            .textColor(appColor(context).primary),
                        textAlign: TextAlign.center),
                    const HSpace(Sizes.s25)
                  ]),
                  Expanded(
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ...appArray.sittingOption.map((e) => Text(
                                  e,
                                  style: appCss.sfProRegular11
                                      .textColor(appColor(context).darkText),
                                )
                                    .paddingSymmetric(
                                    horizontal: Sizes.s16, vertical: Sizes.s7)
                                    .decorated(
                                    color: appColor(context).whiteColor,
                                    border: Border.all(
                                        color: appColor(context).bgColor),
                                    borderRadius: BorderRadius.circular(50))
                                    .paddingOnly(right: Sizes.s4)),

                              ],
                            ),
                            Column(children: [
                              SvgPicture.asset(svgAssets.arrowDown1),
                              const VSpace(Sizes.s5),
                              SvgPicture.asset(svgAssets.arrowUp)
                            ]).padding(right: Sizes.s4),
                          ],
                        ).inkWell(onTap: ()=>value.selectFilterTap()),
                        if(value.isExpand)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              const VSpace(Sizes.s13),
                              Text("KL 551 (Royal Dutch KLM)", style: appCss.sfProRegular11
                                  .textColor(appColor(context).darkText)),
                              const VSpace(Sizes.s10),
                              Text("Check Ariline Satefy Measures", style: appCss.sfProRegular11
                                  .textColor(appColor(context).primary).italic.textDecoration(TextDecoration.underline)),
                              const VSpace(Sizes.s8),
                              Text("Airbbbus A320", style: appCss.sfProRegular11
                                  .textColor(appColor(context).darkText)),
                              const VSpace(Sizes.s8),
                              RichText(
                                  text: TextSpan(
                                      text: "Transfer time in HAM: ",
                                      style: appCss.sfProRegular11
                                          .textColor(appColor(context).darkText)
                                          .letterSpace(1.1)
                                          .textHeight(1.3),
                                      children: [
                                        TextSpan(
                                            text: "1 h 05 min",
                                            style: appCss.sfProBold11
                                                .textColor(appColor(context).darkText)),
                                      ])),
                              const VSpace(Sizes.s10),
                              RichText(
                                  text: TextSpan(
                                      text: "Time zone: ",
                                      style: appCss.sfProRegular11
                                          .textColor(appColor(context).darkText)
                                          .letterSpace(1.1)
                                          .textHeight(1.3),
                                      children: [
                                        TextSpan(
                                            text: "18:35 pm",
                                            style: appCss.sfProBold11
                                                .textColor(appColor(context).darkText)),
                                      ])),
                              const VSpace(Sizes.s10),
                              RichText(
                                  text: TextSpan(
                                      text: "Weather: ",
                                      style: appCss.sfProRegular11
                                          .textColor(appColor(context).darkText)
                                          .letterSpace(1.1)
                                          .textHeight(1.3),
                                      children: [
                                        TextSpan(
                                            text: "22 °C",
                                            style: appCss.sfProBold11
                                                .textColor(appColor(context).darkText)),
                                      ])),
                              const VSpace(Sizes.s10),
                              RichText(
                                  text: TextSpan(
                                      text: "Flight No: ",
                                      style: appCss.sfProRegular11
                                          .textColor(appColor(context).darkText)
                                          .letterSpace(1.1)
                                          .textHeight(1.3),
                                      children: [
                                        TextSpan(
                                            text: "KL1985",
                                            style: appCss.sfProBold11
                                                .textColor(appColor(context).darkText)),
                                      ])),
                            ],
                          ).paddingSymmetric(horizontal: Sizes.s16)
                      ],
                    ),
                  )
                ],
              )
                  .paddingSymmetric(
                  horizontal: Sizes.s8, vertical: Sizes.s8)
                  .decorated(
                  color: appColor(context).primary.withOpacity(.10)).inkWell(onTap: ()=>value.selectFilterTap()),
              Row(children: [
                Text("08:35 AM",
                    style: appCss.sfProBold11
                        .textColor(appColor(context).darkText)),
                const HSpace(Sizes.s25),
                Text("SMP Stockolm Airport T1",
                    style: appCss.sfProBold11
                        .textColor(appColor(context).darkText))
              ]).paddingSymmetric(horizontal: Sizes.s8, vertical: Sizes.s16)
            ]),
            Column(
              children: [
                Container(
                  height: Sizes.s10,
                  width: Sizes.s10,
                  decoration: BoxDecoration(
                      color: appColor(context).primary,
                      shape: BoxShape.circle),
                ),
                DottedLine(
                    direction: Axis.vertical,
                    lineLength:value.isExpand?260: 87,
                    lineThickness: 1.5,
                    dashLength: 3,
                    dashColor: appColor(context).primary.withOpacity(.4)),
                Container(
                  height: Sizes.s10,
                  width: Sizes.s10,
                  decoration: BoxDecoration(
                      color: appColor(context).primary,
                      shape: BoxShape.circle),
                )
              ],
            ).width(MediaQuery.of(context).size.width/2.8)
          ],
        ).decorated(
            color: appColor(context).whiteColor,
            borderRadius: BorderRadius.circular(10));
      }
    );
  }
}
