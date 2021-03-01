import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial());
  int count = 0;
  List<Color> colors = <Color>[Colors.grey[300], Colors.black, Colors.red, Colors.blue, Colors.green];
  int i = 0;

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if(event is CountEvent){
      count++;
      yield CounterChangeState(contador: count, color: colors[i]);
    }else if(event is ResetEvent){
      count = 0;
      yield CounterChangeState(contador: count, color: colors[i]);
    }else if(event is ColorBlackEvent){
      i = 1;
      yield CounterChangeState(contador: count, color: colors[i]);
    }else if (event is ColorRedEvent) {
      i = 2;
      yield CounterChangeState(contador: count, color: colors[i]);
    }else if (event is ColorBlueEvent) {
      i = 3;
      yield CounterChangeState(contador: count, color: colors[i]);
    }else if (event is ColorGreenEvent) {
      i = 4;
      yield CounterChangeState(contador: count, color: colors[i]);
    }
  }
}
