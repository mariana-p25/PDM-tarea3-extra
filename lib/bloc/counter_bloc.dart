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
  final List<Color> colors = <Color>[Colors.black, Colors.red, Colors.blue, Colors.green];

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if(event is CountEvent){
      count++;
      yield CounterChangeState(contador: count);
    }else if(event is ResetEvent){
      count=0;
      yield CounterChangeState(contador: count);
    }else if(event is ColorBlackEvent){
      //yield CounterChangeState(contador: count, color: colors[0]);
    }else if (event is ColorRedEvent) {
      //yield CounterChangeState(contador: count, color: colors[1]);
    }else if (event is ColorBlueEvent) {
      //yield CounterChangeState(contador: count, color: colors[2]);
    }else if (event is ColorGreenEvent) {
      //yield CounterChangeState(contador: count, color: colors[3]);
    }
  }
}
