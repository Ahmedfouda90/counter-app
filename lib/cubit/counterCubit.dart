import 'package:counterapp_with_cubit/cubit/counterState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialize());

  int teamApoints = 0;
  int teamBpoints = 0;

  void teamIncreament({required int buttonNumber, required String team}) {
    if (team == 'A') {
      teamApoints += buttonNumber;
      emit(CounterAState());
    } else {
      teamBpoints += buttonNumber;
      emit(CounterBState());
    }

  }


  void counterReset() {
    teamApoints = 0;
    teamBpoints = 0;
    emit(CounterReset());
  }

}
