import 'package:dhruvi_practical/config.dart';

class FlightListProvider extends ChangeNotifier {
  var selectedFilter = [];
  int selectedCoupon =0;

  onReady(){
    selectedFilter.add(appArray.filterList[0]);
    notifyListeners();

  }

  selectFilterTap(val){
    if(selectedFilter.contains(val)){
      selectedFilter.remove(val);
    }else{
      selectedFilter.add(val);
    }
    notifyListeners();
  }

  couponDisplayIndex(index)
  {
    selectedCoupon= index;
    notifyListeners();
  }
}
