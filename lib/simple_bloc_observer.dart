import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint("changes = $change");
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint("create = $bloc");
    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint("close = $bloc");
    super.onClose(bloc);
  }
}
