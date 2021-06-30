import 'package:covid_flutter_app/app/app_module.dart';
import 'package:covid_flutter_app/app/app_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';

main() => runApp(ModularApp(module: AppModule(), child: AppWidget()));
