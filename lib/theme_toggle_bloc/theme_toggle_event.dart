part of 'theme_toggle_bloc.dart';

@immutable
abstract class ThemeToggleEvent {}

class ThemeChangeEvent extends ThemeToggleEvent {
  final bool isDark;

  ThemeChangeEvent({required this.isDark});
}
