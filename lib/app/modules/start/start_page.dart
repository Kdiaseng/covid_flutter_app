import 'package:covid_flutter_app/app/modules/start/start_controller.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
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
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          backgroundColor: Colors.blueAccent,
          index: controller.currentIndex,
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
          items: [
            Icon(Icons.home, size: 30),
            Icon(Icons.list, size: 30),
          ],
        ),
      ),
    );
  }
}
