import 'package:dhruvi_practical/config.dart';

import 'package:flutter_svg/svg.dart';

import 'flight_list_detail_layout.dart';

class AllFlightListLayout extends StatelessWidget {
  const AllFlightListLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...appArray.flightList.asMap().entries.map(
              (e) => FlightListDetailLayout(data: e.value).inkWell(onTap: ()=> route.pushNamed(context,routeName.flightDetail)),
            )
      ],
    );
  }
}
