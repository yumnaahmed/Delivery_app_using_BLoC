import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc_and_firebase/screens/home/ui/food.dart';
import 'package:test_bloc_and_firebase/theme.dart';
import 'package:test_bloc_and_firebase/theme_toggle_bloc/theme_toggle_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeToggleBloc>(
      create: (context) => ThemeToggleBloc(),
      child: BlocBuilder<ThemeToggleBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Theme Toggle',
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: state,
            home: FoodScreen(),
          );
        },
      ),
    );
  }
}
