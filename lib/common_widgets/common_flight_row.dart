import '../config.dart';

class CommonFlightRow extends StatelessWidget {
  final String? flightName,image,time,countryCode,date;
  const CommonFlightRow({super.key,  this.flightName, this.image, this.time, this.countryCode, this.date});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(flightName!,
                style: appCss.sfProBold17
                    .textColor(appColor(context).darkText)),
            const VSpace(Sizes.s5),
            Image.asset(image!,
                height: Sizes.s15)
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(time!,
                style: appCss.sfProRegular17
                    .textColor(appColor(context).darkText)),
            const VSpace(Sizes.s2),
            Text(
              "$countryCode-$date",
              style: appCss.sfProLight11
                  .textColor(appColor(context).lightText)
                  .letterSpace(1),
            ),
          ],
        ).marginOnly(right: 16)
      ],
    );
  }
}
