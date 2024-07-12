import 'package:dhruvi_practical/common_widgets/additional_info.dart';
import 'package:dhruvi_practical/common_widgets/app_bar.dart';
import 'package:dhruvi_practical/config.dart';
import 'package:dhruvi_practical/provider/flight_detail_provider.dart';
import 'package:dhruvi_practical/screens/flight_detail/layouts/flight_detail_with_time_zone.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class FlightDetail extends StatelessWidget {
  const FlightDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlightDetailProvider>(builder: (context1, value, child) {
      return Scaffold(
        backgroundColor: appColor(context).bgColor,
        appBar: const CommonAppBar(
          title: "MUC - AMS",
          isAction: false,
        ),
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
              children: [
                const VSpace(Sizes.s16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          svgAssets.arrow,
                          fit: BoxFit.scaleDown,
                        ),
                        const HSpace(Sizes.s10),
                        RichText(
                            text: TextSpan(
                                text: appFonts.ourAdvice,
                                style: appCss.sfProRegular15
                                    .textColor(appColor(context).darkText)
                                    .letterSpace(1.1)
                                    .textHeight(1.3),
                                children: [
                              TextSpan(
                                  text: appFonts.wait,
                                  style: appCss.sfProBold15
                                      .textColor(appColor(context).primary)),
                            ]))
                      ],
                    ),
                    SvgPicture.asset(svgAssets.info)
                  ],
                )
                    .padding(
                        vertical: Sizes.s16, left: Sizes.s22, right: Sizes.s15)
                    .decorated(
                        color: appColor(context).primary.withOpacity(.10),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: appColor(context).primary)),
                const VSpace(Sizes.s16),
                Text(appFonts.toAms,
                    style: appCss.sfProBold17
                        .textColor(appColor(context).darkText)),
                const VSpace(Sizes.s6),
                Text(appFonts.timeDate,
                    style: appCss.sfProRegular11
                        .textColor(appColor(context).primary)),
                const VSpace(Sizes.s6),
                const FlightDetailWithTimeZone(),
                const VSpace(Sizes.s24),
                Card(
                  elevation: 0,
                  color: appColor(context).whiteColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: ExpansionTile(
                      expansionAnimationStyle:
                          AnimationStyle(curve: Curves.fastOutSlowIn),

                      //atten
                      tilePadding:
                          const EdgeInsets.symmetric(horizontal: Sizes.s16),
                      backgroundColor: appColor(context).whiteColor,
                      collapsedIconColor: appColor(context).darkText,
                      dense: true,
                      collapsedBackgroundColor:
                          appColor(context).primary.withOpacity(.03),
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      collapsedShape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      childrenPadding: const EdgeInsets.only(
                          bottom: Sizes.s12, left: Sizes.s17, right: Sizes.s17),
                      trailing: SvgPicture.asset(svgAssets.arrowDown),
                      title: Text(appFonts.additionalInfo,
                          style: appCss.sfProBold13
                              .textColor(appColor(context).darkText)),
                      children:  <Widget>[
                        AdditionalInfo(text1: appFonts.depatureTerminal, text2: "1"),
                        AdditionalInfo(text1: appFonts.checkinCounter, text2: "6,7"),
                        AdditionalInfo(text1: appFonts.depatureGate, text2: "B16"),
                        AdditionalInfo(text1: appFonts.arrivalTerminal, text2: "1"),
                        AdditionalInfo(text1:appFonts.arrivalGate, text2: "-"),
                        AdditionalInfo(
                          text1: appFonts.baggageBelt,
                          text2: "4",
                          isDivider: false
                        ),
                      ]),
                ),
                const VSpace(Sizes.s150),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const VSpace(Sizes.s5),
                Container(
                  width: Sizes.s40,
                  height: 3,
                  decoration: const BoxDecoration(color: Color(0xFFC9C9C9))
                ),
                const VSpace(Sizes.s3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(appFonts.total,style: appCss.sfProRegular17.textColor(appColor(context).darkText)),
                    Text("\$780",style: appCss.sfProBold17.textColor(appColor(context).primary))
                  ],
                ),
                const VSpace(Sizes.s8),
                Text(appFonts.contiune,style: appCss.sfProRegular17.textColor(appColor(context).whiteColor).letterSpace(1.3),).alignment(Alignment.center).width(double.infinity).paddingSymmetric(vertical: Sizes.s13).decorated(color: appColor(context).primary,borderRadius: BorderRadius.circular(15))
              ],
            ).width(MediaQuery.of(context).size.width).padding(bottom: Sizes.s32,horizontal: Sizes.s17).decorated(
                color: appColor(context).whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ))
          ],
        ),
      );
    });
  }
}
