import 'package:dhruvi_practical/common_widgets/common_flight_row.dart';
import 'package:dhruvi_practical/common_widgets/common_small_circle.dart';
import 'package:flutter_svg/svg.dart';

import '../../../config.dart';

class FlightListDetailLayout extends StatelessWidget {
  final dynamic data;

  const FlightListDetailLayout({super.key, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16, bottom: 16),
      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      decoration: BoxDecoration(
        color: appColor(context).whiteColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      const CommonSmallCircle(),
                      Container(
                          height: Sizes.s100,
                          width: 1,
                          decoration: BoxDecoration(
                              color:
                                  appColor(context).primary.withOpacity(.10))),
                      const CommonSmallCircle(),
                    ],
                  ).marginSymmetric(vertical: Sizes.s10),
                  SvgPicture.asset(svgAssets.plane)
                ],
              ).marginOnly(left: 16),
              const HSpace(Sizes.s6),
              Expanded(
                  child: Column(children: [
                    CommonFlightRow(

                      image: data['fromPlane'].toString(),
                      flightName:data['from'].toString() ,
                      countryCode: data['fromCountryCode'].toString(),
                      date: data['arrivalDate'].toString(),
                      time:data['arrivalTime'].toString()
                    ),
                Row(
                  children: [
                    Expanded(child: Divider(color: appColor(context).bgColor)),
                    Text("${data['totalTimeToReached']} . ${data['isDirect'] == true ? "Direct" : "Via"}",
                            style: appCss.sfProRegular11
                                .textColor(appColor(context).primary))
                        .marginSymmetric(horizontal: Sizes.s5),
                    Expanded(
                        child: Divider(
                            endIndent: 0,
                            indent: 0,
                            color: appColor(context).bgColor))
                  ],
                ).marginOnly(top: Sizes.s20, bottom: Sizes.s26),
                    CommonFlightRow(

                        image: data['toPlane'].toString(),
                        flightName:data['to'].toString() ,
                        countryCode: data['toCountryCode'].toString(),
                        date: data['departedDate'].toString(),
                        time:data['departedTime'].toString()
                    ),
              ]))
            ],
          ),
          const VSpace(Sizes.s26),
          Divider(color: appColor(context).bgColor),
          const VSpace(Sizes.s13),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (data['isCheapest'] == true)
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.s8, vertical: Sizes.s5),
                  decoration: BoxDecoration(
                      color: appColor(context).greenColor.withOpacity(.10)),
                  child: Text(
                    appFonts.cheapestFlight,
                    style: appCss.sfProRegular11
                        .textColor(appColor(context).greenColor),
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(appFonts.total,
                      style: appCss.sfProMedium9
                          .textColor(appColor(context).lightText)),
                  Text(data['price'].toString(),
                      style: appCss.sfProBold17
                          .textColor(appColor(context).primary)),
                ],
              )
            ],
          ).marginSymmetric(horizontal: Sizes.s17)
        ],
      ),
    );
  }
}
