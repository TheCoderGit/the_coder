import 'package:The_Coder_Test_Lab/qr/qr_login/pages/qr_login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (_) => CounterBloc(),
        child: const QrLoginScreen(),
      ),
      title: "The Coder Test lab",
    );
  }
}
