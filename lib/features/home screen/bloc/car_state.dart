part of 'car_bloc.dart';

abstract class CarState extends Equatable {
  const CarState();

  @override
  List<Object> get props => [];
}

class CarInitial extends CarState {}

class CarChangedST extends CarState {
  final Color color;
  final int speed;
  final bool value;

  const CarChangedST(
      {required this.color, required this.speed, required this.value});

  @override
  List<Object> get props => [color, speed, value];
}
