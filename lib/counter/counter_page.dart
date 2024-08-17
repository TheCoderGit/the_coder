import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:the_coder/counter/counter_bloc/counter_bloc.dart';
import 'package:the_coder/counter/counter_bloc/counter_event.dart';
import 'package:the_coder/counter/counter_bloc/counter_state.dart';


class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = CounterBloc();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
                bloc: counterBloc,
                builder: (context, state) {
                  return Text(state.counter.toString());
                }),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(CounterIncrementEvent());
              },
              child: const Text("add"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(CounterDecrementEvent());
              },
              child: const Text("minus"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                counterBloc.add(CounterResetEvent());
              },
              child: const Text("reset"),
            ),
          ],
        ),
      ),
    );
  }
}
