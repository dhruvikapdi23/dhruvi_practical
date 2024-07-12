import 'package:dhruvi_practical/config.dart';

class FlightDetailProvider extends ChangeNotifier {
  bool isExpand = false;

  onReady() {
    isExpand = false;
    notifyListeners();
  }

  selectFilterTap() {
    isExpand = !isExpand;
    notifyListeners();
  }
}
