import 'package:bloc/bloc.dart';
import 'package:counter_app/presentation/bloc/counter_cubit.dart';
import 'package:counter_app/presentation/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_observer.dart';

void main() {
  Bloc.observer = CounterObserver();
  runApp(CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
            create: (_) => CounterCubit(),
            child: CounterPage(),
      ),
    );
  }
}
