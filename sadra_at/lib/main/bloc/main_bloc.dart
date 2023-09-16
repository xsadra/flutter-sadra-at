import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  MainBloc() : super(MainInitial()) {
    on<MainEvent>((event, emit) {
      log(emit.isDone.toString(), name: 'bloc1');
      log(event.toString(), name: 'bloc2');
      if (event is HideMainMessageFormEvent) {
        emit(const MessageFormVisibility(show: false));
      }
      if (event is ShowMainMessageFormEvent) {
        emit(const MessageFormVisibility(show: true));
      }
    });
  }
}
