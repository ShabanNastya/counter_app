import 'package:counter_app/presentation/bloc/counter_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                return Text('$state');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().increment(),
                    child: const Icon(Icons.add)),
                ElevatedButton(
                    onPressed: () => context.read<CounterCubit>().decrement(),
                    child: const Icon(Icons.remove))
              ],
            )
          ],
        ),
    );
  }
}
