import 'package:flutter/cupertino.dart';

class HomeController extends InheritedNotifier <ValueNotifier<int>>{
  const HomeController({Key? key, required Widget child,})
      : super(
    key: key,
    child: child,
  );

}