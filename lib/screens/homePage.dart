import 'package:counterapp_with_cubit/cubit/counterCubit.dart';
import 'package:counterapp_with_cubit/cubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../customs/customs.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyanAccent,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                      const  Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamApoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomIconButton(
                            addPoint: 1, team: 'A', buttonText: 'add 1 point'),
                        CustomIconButton(
                            addPoint: 2, team: 'A', buttonText: 'add 2 point'),
                        CustomIconButton(
                            addPoint: 3, team: 'A', buttonText: 'add 3 point'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child:VerticalDivider(
                      indent: 50,
                      endIndent: 50,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  SizedBox(
                    height: 500.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                    const    Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).teamBpoints}',
                          style: const TextStyle(
                            fontSize: 150,
                          ),
                        ),
                        CustomIconButton(
                            addPoint: 1, team: 'B', buttonText: 'add 1 point'),
                        CustomIconButton(
                            addPoint: 2, team: 'B', buttonText: 'add 2 point'),
                        CustomIconButton(
                            addPoint: 3, team: 'B', buttonText: 'add 3 point'),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding:const EdgeInsets.all(8),
                  backgroundColor: Colors.cyanAccent,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).counterReset();
                },
                child:const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
