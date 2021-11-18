import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int>{
  CounterCubit() : super(0);

  void increment(){
    return emit(state + 1);
  }

  void decrement(){
    return emit(state - 1);
  }
}