import 'dart:developer';

import 'package:dhruvi_practical/common/assets/index.dart';

class AppArray {
  var filterList = [
    "Direct Flights",
    "Cheapest Flights",
    "Shortest Flights",
    "Exclude countries"
  ];

  var couponList = [
    imageAssets.coupon1,
    imageAssets.coupon2,
    imageAssets.coupon3,
    imageAssets.coupon2
  ];

  var flightList = [
    {
      "from": "Lurnaca",
      "to": "Frankfurt",
      "fromPlane": imageAssets.fromPlane,
      "toPlane": imageAssets.toPlane,
      "arrivalTime": "08:35 AM",
      "departedTime": "10:35 AM",
      "arrivalDate": "Jun 25",
      "departedDate": "Jul 3",
      "fromCountryCode": "LCA",
      "toCountryCode": "Far",
      "isDirect": true,
      "totalTimeToReached": "10 h 35 min",
      "isCheapest": true,
      "price": "\$282"
    },
    {
      "from": "Lurnaca",
      "to": "Frankfurt",
      "fromPlane": imageAssets.fromPlane,
      "toPlane": imageAssets.toPlane,
      "arrivalTime": "08:35 AM",
      "departedTime": "10:35 AM",
      "arrivalDate": "Jun 25",
      "departedDate": "Jul 3",
      "fromCountryCode": "LCA",
      "toCountryCode": "Far",
      "isDirect": true,
      "totalTimeToReached": "10 h 35 min",
      "isCheapest": true,
      "price": "\$282",
    },
    {
      "from": "Lurnaca",
      "to": "Frankfurt",
      "fromPlane": imageAssets.fromPlane,
      "toPlane": imageAssets.toPlane,
      "arrivalTime": "08:35 AM",
      "departedTime": "10:35 AM",
      "arrivalDate": "Jun 25",
      "departedDate": "Jul 3",
      "fromCountryCode": "LCA",
      "toCountryCode": "Far",
      "isDirect": true,
      "totalTimeToReached": "10 h 35 min",
      "isCheapest": true,
      "price": "\$282",
    }
  ];

  var sittingOption = ["Economy","Airbus A320"];
}
