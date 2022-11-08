import 'package:flutter/cupertino.dart';

class OptionsController extends InheritedNotifier <ValueNotifier<int>>{
  const OptionsController({Key? key, required Widget child,})
      : super(
    key: key,
    child: child,
  );

}