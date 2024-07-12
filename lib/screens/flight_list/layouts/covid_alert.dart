import 'package:flutter_svg/svg.dart';

import '../../../config.dart';

class CovidAlert extends StatelessWidget {
  const CovidAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: const Color(0xFFFCBA04))),
      child: ExpansionTile(
          expansionAnimationStyle: AnimationStyle(curve: Curves.fastOutSlowIn),

          //atten
          tilePadding: EdgeInsets.zero,
          collapsedIconColor: appColor(context).darkText,
          dense: true,
          childrenPadding: const EdgeInsets.only(bottom: Sizes.s12),
          iconColor: appColor(context).darkText,
          trailing: SvgPicture.asset(svgAssets.arrowDown),
          leading: Image.asset(imageAssets.covid, height: Sizes.s28),
          title: Text(appFonts.covidAlert,
              style: appCss.sfProBold13.textColor(appColor(context).darkText)),
          children: <Widget>[
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("\u2022",
                  style: appCss.sfProLight12
                      .textColor(appColor(context).lightText)),
              const HSpace(Sizes.s10),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    RichText(
                        text: TextSpan(
                            text:
                                "Travel requirements are changing rapidly, including need for pre-travel ",
                            style: appCss.sfProRegular12
                                .textColor(appColor(context).darkText)
                                .letterSpace(1.1)
                                .textHeight(1.3),
                            children: [
                          TextSpan(
                              text: "COVID-19",
                              style: appCss.sfProBold12
                                  .textColor(appColor(context).darkText)),
                          TextSpan(
                              text: " testing and quarantine arrival.",
                              style: appCss.sfProRegular12
                                  .textColor(appColor(context).darkText)
                                  .letterSpace(1.1)
                                  .textHeight(1.3))
                        ])),
                    Text("Check restrictions for your trip",
                        style: appCss.sfProRegular12
                            .textColor(appColor(context).darkText)
                            .textDecoration(TextDecoration.underline)),
                  ]))
            ]).marginOnly(left: Sizes.s15)
          ]),
    );
  }
}
