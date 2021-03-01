import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/counter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Hello Shared Prefs',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: BlocProvider(
              create: (context) => CounterBloc(),
              child: BlocConsumer<CounterBloc, CounterState>(
                listener: (context, state) {
                  // TODO: implement listener
                },
                // ignore: missing_return
                builder: (context, state) {
                  if (state is CounterChangeState) {
                    return Container(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Container(
                                height: 525,
                                color: Colors.grey[300],
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Center(
                                      child: Text("${state.contador}",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 100,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(
                                        color: Colors.black,
                                        child: Text(
                                          "BLACK",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorBlackEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.red,
                                        child: Text(
                                          "RED",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorRedEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.blue,
                                        child: Text(
                                          "BLUE",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorBlueEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.green,
                                        child: Text(
                                          "GREEN",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorGreenEvent());
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(
                                        color: Colors.grey[200],
                                        child: Text("COUNT"),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(CountEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.grey[200],
                                        child: Text("RESET"),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ResetEvent());
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                  } else
                    return Container(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Padding(
                              padding: EdgeInsets.all(25.0),
                              child: Container(
                              height: 525,
                              color: Colors.grey[300],
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Center(
                                    child: Text("0",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 100,
                                      ),
                                    ),
                                  ),
                                ],    
                              ),
                              ),
                            ),
                          ),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(
                                        color: Colors.black,
                                        child: Text("BLACK",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorBlackEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.red,
                                        child: Text("RED",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorRedEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.blue,
                                        child: Text("BLUE",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorBlueEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.green,
                                        child: Text("GREEN",
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ColorGreenEvent());
                                        },
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      MaterialButton(
                                        color: Colors.grey[200],
                                        child: Text("COUNT"),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(CountEvent());
                                        },
                                      ),
                                      MaterialButton(
                                        color: Colors.grey[200],
                                        child: Text("RESET"),
                                        onPressed: () {
                                          BlocProvider.of<CounterBloc>(context)
                                              .add(ResetEvent());
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ],
                      ),
                    );
                },
              ))),
    );
  }
}
