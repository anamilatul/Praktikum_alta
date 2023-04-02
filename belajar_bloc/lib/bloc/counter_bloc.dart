import 'package:belajar_bloc/bloc/counter_event.dart';
import 'package:belajar_bloc/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<Increment>((event, emit) => emit(CounterState(state.value + 1)));
    //arti : pada counter bloc kita mendaftarkan event increment yg jika dipanggil maka pd event increment ini akan melakukan perubahan state (state.value + 1)
    on<Decrement>((event, emit) => emit(CounterState(state.value - 1)));
    //sebaliknya (pengurangan)
  }
}
