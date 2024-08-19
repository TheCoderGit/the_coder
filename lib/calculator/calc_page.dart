import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_bloc.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_event.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_state.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Calculator')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is SumCalculatedState) {
                  _controller.text = state.sum.toString();
                } else if (state is NumberAddedState ||
                    state is NumberSubstractedState) {
                  _controller.clear();
                }
                return TextField(
                  controller: _controller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Input Number',
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final number = int.tryParse(_controller.text) ?? 0;
                    context.read<CounterBloc>().add(AddNumberEvent(number));
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final number = int.tryParse(_controller.text) ?? 0;
                    context
                        .read<CounterBloc>()
                        .add(SubstracteNumberEvent(number));
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final number = int.tryParse(_controller.text) ?? 0;
                    context.read<CounterBloc>().add(CalculateSumEvent(number));
                  },
                  child: const Text('='),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
