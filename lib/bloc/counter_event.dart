part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {}

class CountEvent extends CounterEvent{
  @override
  List<Object> get props => [];
}

class ResetEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}

class ColorBlackEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}

class ColorRedEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}

class ColorBlueEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}

class ColorGreenEvent extends CounterEvent {
  @override
  List<Object> get props => [];
}
