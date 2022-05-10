import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class MainState extends Equatable {
  const MainState();
}

class MainInitial extends MainState {
  @override
  List<Object> get props => [];
}

class MessageFormVisibility extends MainState {
  const MessageFormVisibility({required this.show});

  final bool show;

  @override
  List<Object?> get props => [show];
}
