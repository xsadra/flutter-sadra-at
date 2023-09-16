import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../main/bloc/bloc.dart';

/// {@template main_layout_delegate}
/// A delegate for computing the layout of the main UI.
/// {@endtemplate}
abstract class MainLayoutDelegate extends Equatable {
  const MainLayoutDelegate();

  Widget startSectionBuilder(MainState state);

  Widget middleSectionBuilder(MainState state);

  Widget endSectionBuilder(MainState state);

  Widget backgroundBuilder(MainState state);

  Widget messageFormBuilder(MainState state);

  Widget whitespaceBuilder();
}
