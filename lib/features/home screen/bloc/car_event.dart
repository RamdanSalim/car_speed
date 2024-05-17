part of 'car_bloc.dart';

abstract class CarEvent extends Equatable {
  const CarEvent();

  @override
  List<Object> get props => [];
}

class CarChangeET extends CarEvent {
  final bool isChanged;

  const CarChangeET({required this.isChanged});

  @override
  List<Object> get props => [isChanged];
}
