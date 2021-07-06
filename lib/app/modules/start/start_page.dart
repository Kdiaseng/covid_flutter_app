import 'package:covid_flutter_app/app/modules/start/start_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final controller = StartController();

  @override
  void initState() {
    Modular.to.navigate('/home');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => Scaffold(
        body: RouterOutlet(),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: controller.currentIndex,
          onTap: (index) {
            controller.changeCurrentIndex(index);
            switch (index) {
              case 0:
                Modular.to.navigate('/home');
                break;
              case 1:
                Modular.to.navigate('/countries');
                break;
            }
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.list_outlined), label: 'Countries'),
          ],
        ),
      ),
    );
  }
}
