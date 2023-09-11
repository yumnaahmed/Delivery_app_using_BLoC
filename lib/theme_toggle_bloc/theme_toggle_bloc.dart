import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_toggle_event.dart';
part 'theme_toggle_state.dart';

class ThemeToggleBloc extends Bloc<ThemeToggleEvent, ThemeMode> {
  ThemeToggleBloc() : super(ThemeMode.light) {
    on<ThemeChangeEvent>(themeChangeEvent);
  }

  FutureOr<void> themeChangeEvent(ThemeChangeEvent event, Emitter<ThemeMode> emit) {
    emit(event.isDark ? ThemeMode.dark : ThemeMode.light );
  }
}
