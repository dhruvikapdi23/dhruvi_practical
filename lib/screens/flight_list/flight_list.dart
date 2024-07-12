import 'package:dhruvi_practical/common/common_state.dart';
import 'package:dhruvi_practical/common_widgets/app_bar.dart';
import 'package:dhruvi_practical/config.dart';
import 'package:dhruvi_practical/provider/flight_list_provider.dart';
import 'package:dhruvi_practical/screens/flight_list/layouts/all_flight_list_layout.dart';
import 'package:dhruvi_practical/screens/flight_list/layouts/coupon_list_layout.dart';
import 'package:dhruvi_practical/screens/flight_list/layouts/covid_alert.dart';
import 'package:dhruvi_practical/screens/flight_list/layouts/filter_row_list.dart';

import 'package:provider/provider.dart';

class FlightList extends StatelessWidget {
  const FlightList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<FlightListProvider>(builder: (context1, value, child) {
      return StatefulWrapper(
        onInit: () =>
            Future.delayed(DurationClass.ms150).then((val) => value.onReady()),
        child: Scaffold(
          backgroundColor: appColor(context).bgColor,
          appBar: const CommonAppBar(title: "Round-trip: MUC - AMS"),
          body: ListView(
            children: const [
              VSpace(Sizes.s4),
              //filter list layout
              FilterRowList(),
              VSpace(Sizes.s16),
              //covid alert layout
              CovidAlert(),
              VSpace(Sizes.s16),
              //coupon list layout
              CouponListLayout(),
              VSpace(Sizes.s16),
              AllFlightListLayout()
            ],
          ),
        ),
      );
    });
  }
}
