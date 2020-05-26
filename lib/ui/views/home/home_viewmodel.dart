import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {//BaseViewModel은 ChangeNotifier을 extends
  
  String _title = 'Home View';
  String get title => '$_title $_counter';//get을 쓴 이유는 _title로 private임.

  int _counter = 0;
  int get counter => _counter; 

  void updateCounter() {
    _counter++;
    notifyListeners();//VM에서 불려질때마다 UI rebuild(.reactive라서 가능함. )
  }
}
