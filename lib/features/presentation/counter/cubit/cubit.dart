import 'package:algoriza_task_1/features/presentation/counter/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterStates>{
  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context)=>BlocProvider.of<CounterCubit>(context);

  int counter =0;

 void increment(){
   counter++;
   emit(CounterIncrementState());
 }


  void decrement(){
    counter--;
    emit(CounterDecrementState());
  }
}