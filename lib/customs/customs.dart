import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/counterCubit.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      @required this.team,
      required this.addPoint,
      required this.buttonText});

  String? team;
  String? buttonText;
  int? addPoint;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.cyanAccent,
        minimumSize:const Size(150, 50),
      ),
      onPressed: () {
        BlocProvider.of<CounterCubit>(context)
            .teamIncreament(buttonNumber: addPoint!, team: team!);
      },
      child: Text(
        buttonText!,
        style: const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}
