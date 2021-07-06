import 'package:mobx/mobx.dart';
part 'start_controller.g.dart';

class StartController = _StartController  with _$StartController;

abstract class _StartController with Store{

  @observable
  int currentIndex = 0;

  @action
  changeCurrentIndex(int value){
    currentIndex = value;
  }
}