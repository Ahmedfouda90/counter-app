import 'package:counterapp_with_cubit/cubit/counterCubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counterapp_with_cubit/screens/homePage.dart';

void main() {
  runApp(const PointsCounter());
}

class PointsCounter extends StatelessWidget {
  const PointsCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),

      ),
    );
  }
}
