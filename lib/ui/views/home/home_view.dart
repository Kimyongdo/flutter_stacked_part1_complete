import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

//view와 ViewModel은 하나의 폴더에 정리.(쌍을 이룬다.)
class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(//reatice라는 이름의 생성자 
      builder: (context, model, child) => 
      Scaffold(
        body: Center(
          child: Text(model.title),
        ),
        floatingActionButton:
            FloatingActionButton(onPressed: model.updateCounter),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}
