import 'package:car_speed/features/home%20screen/bloc/car_bloc.dart';
import 'package:car_speed/features/home%20screen/home_screen.dart';
import 'package:car_speed/features/splash%20screen/splash_screen.dart';
import 'package:car_speed/resources/string_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  final CarBloc _carBloc = CarBloc();

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case StrConst.homeScreen:
        return MaterialPageRoute(
            builder: (_) =>
                BlocProvider.value(value: _carBloc, child: const HomeScreen()));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      );
    });
  }

  void dispose() {
    _carBloc.close();
  }
}
