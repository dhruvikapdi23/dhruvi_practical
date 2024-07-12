import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../config.dart';
import '../../../provider/flight_list_provider.dart';

class FilterRowList extends StatelessWidget {
  const FilterRowList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlightListProvider>(builder: (context1, value, child) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: appArray.filterList
              .asMap()
              .entries
              .map((e) => Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Sizes.s16, vertical: 8),
                  margin: const EdgeInsets.only(right: Sizes.s8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: value.selectedFilter.contains(e.value)
                          ? appColor(context).primary
                          : appColor(context).primary.withOpacity(.10)),
                  child: Row(children: [
                    Text(e.value,
                        style: value.selectedFilter.contains(e.value)
                            ? appCss.sfProBold11
                                .textColor(appColor(context).whiteColor)
                            : appCss.sfProRegular11
                                .textColor(appColor(context).primary)),
                    if (value.selectedFilter.contains(e.value))
                      Row(children: [
                        const HSpace(Sizes.s10),
                        SvgPicture.asset(svgAssets.cross)
                      ])
                  ])).inkWell(onTap: () => value.selectFilterTap(e.value)))
              .toList(),
        ),
      ).marginOnly(left: Sizes.s16);
    });
  }
}
