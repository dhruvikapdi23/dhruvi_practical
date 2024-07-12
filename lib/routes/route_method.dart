//app file

import 'package:dhruvi_practical/screens/flight_detail/flight_detail.dart';
import 'package:dhruvi_practical/screens/flight_list/flight_list.dart';

import '../config.dart';

class AppRoute {
  Map<String, Widget Function(BuildContext)> route = {

    routeName.flightList: (p0) => const FlightList(),
    routeName.flightDetail: (p0) => const FlightDetail(),

  };
}
