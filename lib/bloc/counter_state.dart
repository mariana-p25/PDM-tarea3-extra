part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable {}

class CounterInitial extends CounterState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class CounterChangeState extends CounterState {
  final int contador;
  final Color color;

  CounterChangeState({@required this.contador, @required this.color});

  @override
  List<Object> get props => [contador, color];
}