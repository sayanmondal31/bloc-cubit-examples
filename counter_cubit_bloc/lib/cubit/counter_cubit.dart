import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  // increament
  void increament() => emit(state + 1);

  // decreament
  void decreament() => emit(state - 1);
}
