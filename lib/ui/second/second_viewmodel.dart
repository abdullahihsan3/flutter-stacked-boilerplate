import 'package:stacked/stacked.dart';

class SecondViewModel extends BaseViewModel {
  int _count = 0;
  int get count => _count;

  void incrementCount() {
    _count++;
    rebuildUi();
  }
}
