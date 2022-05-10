import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MainEvent extends Equatable {
  const MainEvent();
}

class ShowMainMessageFormEvent extends MainEvent {
  @override
  List<Object?> get props => [];
}

class HideMainMessageFormEvent extends MainEvent {
  @override
  List<Object?> get props => [];
}
