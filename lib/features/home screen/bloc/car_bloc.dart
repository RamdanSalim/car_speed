import 'dart:async';
import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:car_speed/resources/color_constants.dart';
import 'package:equatable/equatable.dart';

part 'car_event.dart';

part 'car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  CarBloc() : super(CarInitial()) {
    on<CarChangeET>(carChangedMethod);
  }

  FutureOr<void> carChangedMethod(CarChangeET event, Emitter<CarState> emit) {
    if (event.isChanged == false) {
      emit(CarChangedST(
          color: ClrConst.car1Color, speed: 60, value: event.isChanged));
    } else {
      emit(CarChangedST(
          color: ClrConst.car2Color, speed: 120, value: event.isChanged));
    }
  }
}
