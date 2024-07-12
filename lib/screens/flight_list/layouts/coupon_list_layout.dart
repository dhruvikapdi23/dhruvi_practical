import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:provider/provider.dart';

import '../../../config.dart';
import '../../../provider/flight_list_provider.dart';

class CouponListLayout extends StatelessWidget {
  const CouponListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlightListProvider>(builder: (context1, value, child) {
        return Column(

          children: [
            CarouselSlider(
                options: CarouselOptions(
                    height: Sizes.s84,
                    viewportFraction: 0.92,
                    aspectRatio: 2.0,
                    initialPage: value.selectedCoupon,
                    enlargeCenterPage: false,
                    reverse: false,
                    onPageChanged: (e, s) {
                      value.couponDisplayIndex(e);
                    }),
                items: appArray.couponList.map((i) {
                  return Image.asset(
                    i,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill,
                  ).marginOnly(right: 10);
                }).toList()),
            const VSpace(Sizes.s9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...appArray.couponList.asMap().entries.map(
                      (e) => Row(
                    children: [
                      AnimatedContainer(
                          height: 6,
                          width: e.key == value.selectedCoupon ? 17 : 6,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: e.key == value.selectedCoupon
                                  ? appColor(context).primary
                                  : appColor(context)
                                  .primary
                                  .withOpacity(.30)),
                          margin: const EdgeInsets.only(right: 4),
                          duration: const Duration(milliseconds: 200)),
                    ],
                  ),
                )
              ],
            )
          ],
        );
      }
    );
  }
}
